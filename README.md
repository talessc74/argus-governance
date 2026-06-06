# ARGUS Governance v4.0.0

Repositório central da governança distribuída ARGUS.
Contém as 15 seeds, o orquestrador e o instalador para qualquer projeto.

---

## Instalação única (faça uma vez na sua máquina)

```bash
# 1. Clone este repositório
git clone https://github.com/talessc74/argus-governance.git ~/argus-governance

# 2. Copie o slash command para o diretório global do Claude Code
mkdir -p ~/.claude/commands
cp ~/argus-governance/.claude/commands/governance-install.md ~/.claude/commands/
```

Pronto. O comando `/governance-install` agora está disponível em **todos os seus projetos**, em qualquer chat do Claude Code, sem configuração adicional.

---

## Como usar em um projeto novo

1. Crie o repositório do novo projeto no GitHub
2. Abra-o no Claude Code (claude.ai/code)
3. No chat, digite:

```
/governance-install
```

O Claude irá:
- Buscar todos os arquivos de governança deste repositório
- Copiar `CLAUDE.md` e `.seeds/` para a raiz do projeto
- Fazer commit e push automaticamente

A partir do próximo chat nesse repositório, a governança ARGUS já estará ativa.

---

## Como atualizar a governança em projetos existentes

Quando você alterar seeds ou o `CLAUDE.md` aqui no `argus-governance`:

```bash
# Atualize o repositório local
cd ~/argus-governance && git pull

# Reinstale em cada projeto (sobrescreve, faz backup do CLAUDE.md anterior)
bash ~/argus-governance/setup-governance.sh /caminho/do/projeto
```

Ou abra o projeto no Claude Code e rode `/governance-install` novamente.

---

## Estrutura

```
argus-governance/
  README.md                        ← este arquivo
  CLAUDE.md                        ← copiado para cada projeto
  setup-governance.sh              ← instalador via terminal
  .claude/
    commands/
      governance-install.md        ← slash command /governance-install
  .seeds/
    ARGUS.md                       ← orquestrador
    SCOUT.json                     ← Clean Code, TDD
    FLUX.json                      ← Evolutionary Design
    LITERATE.json                  ← Algoritmos, narrativa
    RIVERRAID.json                 ← Recursos finitos
    COMPASS.json                   ← Human-Centered Design
    EMPIRICUS.json                 ← Usabilidade empírica
    POLARBEAR.json                 ← Information Architecture
    BLAST.json                     ← Data minimization
    BAU.json                       ← Compliance contínuo
    SENTINEL.json                  ← Zero Trust
    SOVEREIGN.json                 ← Identity, consentimento
    GHOST.json                     ← Attacker mindset
    PARETO.json                    ← Cobertura de risco
    PROBE.json                     ← Teste exploratório
    SCAFFOLD.json                  ← Arquitetura de QA
```

---

## Como acionar o ARGUS depois de instalado

| Comando | O que acontece |
|---|---|
| `Argus, revisa este código` | ARGUS convoca a equipe certa pelo contexto |
| `Argus, chama a galera do código` | Scout · Flux · Literate · RiverRaid |
| `Argus, chama a galera de UX` | Compass · Empiricus · PolarBear |
| `Argus, chama a galera de segurança` | Blast · BAU · Sentinel · Sovereign · Ghost |
| `Argus, chama a galera de QA` | Pareto · Probe · Scaffold |
| `Argus, chama todo mundo` | todas as 15 seeds |
