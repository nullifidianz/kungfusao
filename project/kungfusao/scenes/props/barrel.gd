extends StaticBody2D

@onready var damage_reciever := $DamageReciever
@onready var sprite := $Sprite2D
@export var knockback_intensity : float
const GRAVITY := 600.00
enum State{IDLE, DESTROYED}

var height := 0.0
var height_speed := 0.0
var state := State.IDLE
var velocity := Vector2.ZERO


func _ready() -> void:
	damage_reciever.damage_recieved.connect(on_recieve_damage.bind())
	
func _process(delta: float) -> void:
	position += velocity * delta
	sprite.position = Vector2.UP * height	
	handle_airtime(delta)
	
func on_recieve_damage(damage:int, direction: Vector2) -> void:
	if state == State.IDLE:
		sprite.frame = 1
		height_speed = knockback_intensity * 2
		state = State.DESTROYED
	velocity = direction * knockback_intensity
	print(damage)
	
func handle_airtime(delta:float) -> void:
	if state == State.DESTROYED:
		modulate.a -= delta
		height += height_speed * delta
		if height < 0:
			height = 0
			queue_free()
		else:
			height_speed -= GRAVITY * delta
