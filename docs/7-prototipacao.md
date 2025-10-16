### Prototipação em papel

## Wireframes das Telas Principais

### 1. Tela de Menu Principal

### 2. Tela de Gameplay (Durante Combate)

### 3. Tela de História Entre Fases (Estilo Star Wars)

### 4. Tela de Transição Entre Fases

### 5. Tela de Game Over

### 6. Tela de História Final (Estilo Star Wars)

### 7. Tela de Vitória Final (Estilo Star Wars)

## Sequências de Ações Esperadas do Jogador

### Fluxo Principal de Gameplay

#### 1. Fase 1 - Dojo Invadido (Implementação Básica)

**Sequência de ações:**

1. **Tela de História**: Texto estilo Star Wars explicando o contexto
2. **Movimento inicial**: Jogador aparece no dojo e se move para a direita
3. **Primeiro combate**: Enfrenta 2-3 inimigos básicos usando tecla E
4. **Interação com ambiente**: Destrói barris para criar espaço
5. **Chefe Vuh Adora**: Combate mais complexo com padrões de ataque
6. **Tela de Transição**: Mostra habilidade desbloqueada ("Golpe do Dragão")

**Decisões do jogador (Básicas):**

- **Timing de ataques**: Quando atacar vs quando se mover
- **Posicionamento**: Usar barris como escudo ou destruí-los
- **Estratégia**: Atacar agressivamente ou defensivamente

#### 2. Fase 2 - Mercado Noturno (Implementação Básica)

**Sequência de ações:**

1. **Tela de História**: Continuação da narrativa estilo Star Wars
2. **Exploração**: Movimento pelo mercado com mais inimigos
3. **Combate em grupo**: Enfrenta 3-4 inimigos simultaneamente
4. **Uso de nova habilidade**: Aplica "Golpe do Dragão" aprendido
5. **Chefe Mercador Peixoto**: Luta com mecânicas únicas
6. **Tela de Transição**: Desbloqueia "Botas de Rapidez" (dash)

**Decisões do jogador (Básicas):**

- **Gestão de recursos**: Quando usar habilidades especiais
- **Priorização de alvos**: Qual inimigo atacar primeiro
- **Movimentação**: Usar dash para esquiva ou posicionamento

#### 3. Fase 3 - Templo Abandonado (Implementação Básica)

**Sequência de ações:**

1. **Tela de História Final**: Revelação sobre o Tigre de Ouro
2. **Aplicação de habilidades**: Usa todas as técnicas aprendidas
3. **Combate final**: Enfrenta múltiplas ondas de inimigos
4. **Chefe final Tigre de Ouro**: Combate épico com múltiplas fases
5. **Desbloqueio final**: Aprende "Chi Final" (golpe especial)
6. **Tela de Vitória**: Conclusão da história estilo Star Wars

**Decisões do jogador (Básicas):**

- **Combinação de habilidades**: Como usar todas as técnicas juntas
- **Timing perfeito**: Quando usar o Chi Final
- **Adaptação**: Ajustar estratégia conforme padrões do chefe

## Mecânicas de Decisão por Fase

### Sistema de Decisões Discerníveis

- **Combate**: Feedback visual claro sobre timing de ataques
- **Movimento**: Indicadores visuais de alcance e posicionamento
- **Habilidades**: Cooldowns visuais e indicadores de energia

### Sistema de Decisões Integradas

- **Fluxo de combate**: Decisões acontecem naturalmente durante o gameplay
- **Exploração**: Descoberta de estratégias através da experimentação
- **Aprendizado**: Progressão orgânica das habilidades

### Elementos de Orientação

#### Orientação Direta:

- **Indicadores de vida**: Barras de HP visíveis
- **Controles**: Instruções contextuais na tela
- **Objetivos**: Marcadores visuais de progressão

#### Orientação Indireta:

- **Level Design**: Cenários guiam o jogador naturalmente
- **Spawn de inimigos**: Direcionam o fluxo de movimento
- **Câmera**: Segue o jogador criando progressão linear
- **Feedback visual**: Efeitos de impacto e destruição

## Protótipos de Interação

### Sistema de Combate

```

Estado: IDLE → Input E → Estado: ATTACK → Animação → Estado: IDLE
↓
DamageEmitter ativa por 0.15s
↓
Detecta colisão com DamageReceiver
↓
Aplica dano + knockback

```

### Sistema de Movimento

```

Input WASD → Velocity calculada → move_and_slide() → Posição atualizada
↓
Estado muda para WALK → Animação de caminhada

```

### Sistema de Destruição (Barris)

```

Recebe dano → Estado: DESTROYED → Knockback aplicado → Física de queda
↓
Modulate.alpha diminui → Objeto removido da cena

```

## Considerações de Prototipação

### Implementação Atual (Versão Básica):

**O jogo será implementado com mecânicas simples e diretas:**

- Sistema de combate básico (ataque E, movimento WASD)
- 3 fases lineares com chefes únicos
- Desbloqueio de 3 habilidades por progressão
- Telas de história estilo Star Wars entre fases
- Sistema de vida e dano simples

**Decisões do jogador limitadas a:**

1. **Timing de ataques**: Janela de 0.15s para causar dano
2. **Posicionamento**: Usar ambiente como vantagem tática
3. **Gestão de recursos**: Quando usar habilidades especiais
4. **Adaptação**: Ajustar estratégia conforme inimigos

### Expansões Futuras (CASO DÊ TEMPO):

**Sistemas que podem ser adicionados posteriormente:**

- Sistema de decisões narrativas entre fases
- Inventário com itens coletáveis
- Árvore de habilidades com múltiplos caminhos
- Sistema de equipamentos que modificam stats
- Múltiplos finais baseados em escolhas

### Feedback Visual Esperado:

- **Impacto**: Efeitos de partículas nos golpes
- **Destruição**: Animações de queda dos barris
- **Progressão**: Indicadores de fase e objetivos
- **Humor**: Poses exageradas e expressões caricatas

### Fluxo de Aprendizado:

1. **Descoberta**: Jogador experimenta controles básicos
2. **Aplicação**: Usa habilidades em situações apropriadas
3. **Masterização**: Combina todas as técnicas no combate final
4. **Satisfação**: Sensação de evolução e poder crescente

```

```
