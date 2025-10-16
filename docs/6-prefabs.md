### Prefabs

## Character (Base)

- **Nome**: Character.tscn
- **Descrição**: Prefab base para todos os personagens do jogo (player e inimigos)
- **Quando são utilizados**: Como base para criação de personagens jogáveis e inimigos
- **Quais seus componentes**:
  - **Sprites**:
    - ShadowSprite (sombra do personagem)
    - CharacterSprite (sprite principal do personagem)
  - **Colisores**:
    - CollisionShape2D (colisão física do personagem)
    - DamageEmitter (área de dano para ataques)
  - **Fontes de audio**: Não possui
  - **Scripts**:
    - character.gd - Controla movimento, estados (IDLE, WALK, ATTACK), animações e sistema de combate

## Player

- **Nome**: Player.tscn
- **Descrição**: Personagem controlado pelo jogador
- **Quando são utilizados**: Instanciado no mundo principal para representar o protagonista
- **Quais seus componentes**:
  - **Sprites**:
    - ShadowSprite (sombra)
    - CharacterSprite (sprite do jogador com 10x10 frames para animações)
  - **Colisores**:
    - CollisionShape2D (colisão física em formato de cápsula)
    - DamageEmitter (área de ataque com formato retangular)
  - **Fontes de audio**: Não possui
  - **Scripts**:
    - Herda de character.gd - Gerencia input do jogador, estados de movimento e combate

## Barrel (Prop)

- **Nome**: Barrel.tscn
- **Descrição**: Objeto destrutível que pode ser empurrado e destruído
- **Quando são utilizados**: Como obstáculo interativo no cenário
- **Quais seus componentes**:
  - **Sprites**:
    - Sprite2D (sprite do barril com 2 frames - intacto e destruído)
  - **Colisores**:
    - CollisionShape2D (colisão física em formato de cápsula)
    - DamageReciever (área que recebe dano)
  - **Fontes de audio**: Não possui
  - **Scripts**:
    - barrel.gd - Controla física de destruição, knockback e efeitos visuais de queda

## Stage

- **Nome**: Stage.tscn
- **Descrição**: Cenário base do jogo
- **Quando são utilizados**: Como fundo e plataforma principal do nível
- **Quais seus componentes**:
  - **Sprites**:
    - Sprite2D (background da rua)
  - **Colisores**:
    - StaticBody2D com CollisionShape2D (plataforma principal)
    - StaticBody2D adicional (colisão superior)
  - **Fontes de audio**: Não possui
  - **Scripts**: Não possui scripts próprios

## DamageEmitter

- **Nome**: DamageEmitter.tscn
- **Descrição**: Sistema de emissão de dano para ataques
- **Quando são utilizados**: Como componente de personagens para detectar colisões de ataque
- **Quais seus componentes**:
  - **Sprites**: Não possui
  - **Colisores**:
    - CollisionShape2D (área de detecção de dano)
  - **Fontes de audio**: Não possui
  - **Scripts**: Não possui scripts próprios, controlado pelo character.gd

## DamageReciever

- **Nome**: DamageReciever.tscn
- **Descrição**: Sistema de recepção de dano para objetos e personagens
- **Quando são utilizados**: Como componente de objetos que podem receber dano
- **Quais seus componentes**:
  - **Sprites**: Não possui
  - **Colisores**:
    - CollisionShape2D (área de recepção de dano)
  - **Fontes de audio**: Não possui
  - **Scripts**:
    - damage_reciever.gd - Define sinal para comunicação de dano recebido
