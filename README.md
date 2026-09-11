# ARGUS Governance (instalador sem npm)

Instalador leve da governança distribuída ARGUS, pra projetos que não usam
Node/npm. As seeds e o protocolo ARGUS não vivem mais aqui — este
repositório busca tudo ao vivo de
[`argus-xdrs-governance`](https://github.com/talessc74/Governan-a-e-xdrs),
a fonte única de verdade. Isso significa que qualquer correção ou seed
nova feita lá chega automaticamente aqui, sem precisar duplicar nada.

Se o seu projeto **usa** Node/npm, prefira instalar `argus-xdrs-governance`
direto (`npm install argus-xdrs-governance && npx argus-xdrs-governance
install`) — ele também traz a camada XDRS completa de arquivamento de
decisões. Este repositório aqui é só a porta de entrada pra quem não tem
Node no projeto.

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

1. Abra o projeto no Claude Code (claude.ai/code)
2. No chat, digite:

```
/governance-install
```

O Claude irá:
- Buscar `CLAUDE.md` deste repositório e as 28 seeds + o protocolo `ARGUS.md`
  direto de `argus-xdrs-governance` (sempre a versão mais atual do `main`)
- Escrever tudo na raiz do projeto, fazendo backup de um `CLAUDE.md` anterior
- Fazer commit e push automaticamente

A partir do próximo chat nesse repositório, a governança ARGUS já estará ativa.

---

## Como atualizar a governança em projetos existentes

Basta rodar `/governance-install` de novo — como ele busca ao vivo da fonte,
sempre traz o que houver de mais atual, sem você precisar fazer nada aqui
neste repositório antes.

Alternativa via terminal (sem passar pelo Claude Code):

```bash
cd ~/argus-governance && git pull   # atualiza o CLAUDE.md leve, se mudou
bash ~/argus-governance/setup-governance.sh /caminho/do/projeto
```

O script busca as seeds e o `ARGUS.md` direto de `argus-xdrs-governance`
via `curl` a cada execução — nunca de uma cópia local antiga.

---

## Por que existem dois repositórios

- **[`argus-xdrs-governance`](https://github.com/talessc74/Governan-a-e-xdrs)** — a fonte única de verdade. Todas as seeds, o protocolo ARGUS completo e a camada XDRS de arquivamento de decisões vivem lá. Se você vai *editar* uma seed ou o protocolo, é lá que mexe.
- **`argus-governance`** (este repositório) — só um instalador alternativo, pra projetos sem Node/npm. Não guarda seeds próprias; sempre busca da fonte acima.

---

## Estrutura

```
argus-governance/
  README.md                        ← este arquivo
  CLAUDE.md                        ← documento de entrada leve, mantido aqui
  setup-governance.sh              ← instalador via terminal (busca seeds via curl)
  .claude/
    commands/
      governance-install.md        ← slash command /governance-install
```

(Não há mais `.seeds/*.json` neste repositório — eles são sempre buscados ao vivo de `argus-xdrs-governance` no momento da instalação, pra nunca ficarem desatualizados.)

---

## Como acionar o ARGUS depois de instalado

| Comando | O que acontece |
|---|---|
| `Argus, revisa este código` | ARGUS convoca a equipe certa pelo contexto |
| `Argus, chama a galera do código` | Scout · Flux · Literate · RiverRaid |
| `Argus, chama a galera de UX` | Compass · Empiricus · PolarBear · Few |
| `Argus, chama a galera de segurança` | Blast · BAU · Sentinel · Sovereign · Ghost |
| `Argus, chama a galera de QA` | Pareto · Probe · Scaffold |
| `Argus, chama a galera de governança` | Scribe · Herald |
| `Argus, chama a galera do design` | Aether · Nexus · Chronos · Canvas · Forge · Quill · Tempo · Threshold · Empath · Skeptic |
| `Argus, chama todo mundo` | todas as 28 seeds |
