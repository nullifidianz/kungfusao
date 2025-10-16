### Mecânica

## Elementos Formais do Jogo

### Padrão de Interação do Jogador

- **Movimento**: O jogador controla o personagem usando as setas direcionais (WASD ou setas do teclado) para movimento em 8 direções
- **Combate**: Sistema de ataques corpo a corpo usando a tecla E para socos/punhos
- **Interação**: O jogador pode interagir com objetos destrutíveis (como barris) através do sistema de combate
- **Câmera**: Segue automaticamente o jogador horizontalmente, criando um movimento lateral contínuo

### Objetivo do Jogo

- **Objetivo Principal**: Derrotar todos os inimigos e chefes em cada fase para progredir na história
- **Objetivo Secundário**: Destruir objetos interativos e explorar o cenário

#### Quando o Jogador Ganha

- Ao derrotar todos os inimigos de uma fase
- Ao derrotar o chefe final de cada área (Vuh Adora, Mercador Peixoto, Tigre de Ouro)
- Ao completar todas as três fases principais do jogo

#### Quando o Jogador Perde

- Quando a vida do personagem chega a zero
- Quando não consegue progredir devido à dificuldade dos inimigos

### Regras do Jogo

- **Física**: Sistema de física 2D com gravidade e colisões
- **Combate**: Ataques só causam dano durante frames específicos da animação (0.15 segundos)
- **Movimento**: Personagem não pode se mover durante ataques
- **Colisões**: Sistema de layers para separar diferentes tipos de objetos (Player, Enemy, Destructables)
- **Câmera**: Movimento apenas horizontal, sem possibilidade de retrocesso

### Procedimentos do Jogo

- **Início**: Jogador aparece em posição fixa no cenário
- **Gameplay Loop**:
  1. Movimento pelo cenário
  2. Encontro com inimigos/obstáculos
  3. Combate usando ataques
  4. Destruição de objetos interativos
  5. Progressão para próxima área
- **Fim**: Derrota do chefe final ou game over

### Recursos do Jogo

- **Vida**: Sistema de pontos de vida para personagens
- **Dano**: Cada ataque causa 5 pontos de dano (configurável)
- **Velocidade**: Personagem se move a 50 pixels por segundo
- **Knockback**: Objetos destrutíveis são empurrados com força configurável (50 de intensidade)
- **Animações**: Sistema de estados (IDLE, WALK, ATTACK) com transições automáticas

### Limites do Jogo

- **Movimento**: Limitado pelas paredes invisíveis laterais do cenário
- **Combate**: Ataques têm cooldown baseado na duração da animação (0.15s)
- **Câmera**: Não permite movimento para trás, apenas progressão linear
- **Física**: Objetos destrutíveis são removidos automaticamente após destruição
- **Resolução**: Jogo fixo em 100x64 pixels (escalado para 1000x640)

### Resultados do Jogo

#### Como Termina Após a Vitória

- **Vitória de Fase**: Progressão automática para próxima área
- **Vitória Final**: Cena de créditos e conclusão da história
- **Desbloqueios**: Novas habilidades e técnicas de kung fu conforme progressão

#### Como Termina Após a Derrota

- **Game Over**: Tela de reinício ou retorno ao menu principal
- **Checkpoint**: Possível sistema de respawn em pontos específicos
- **Penalidades**: Perda de progresso ou reinício da fase atual
