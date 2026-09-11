#!/usr/bin/env bash
# setup-governance.sh
# Instala/atualiza a estrutura de governança ARGUS em qualquer projeto.
# CLAUDE.md vem deste repositório (argus-governance). O protocolo ARGUS e
# todas as seeds vem sempre buscados ao vivo de argus-xdrs-governance
# (fonte única de verdade) - nunca ficam desatualizados em relação a ela.
# Uso: bash setup-governance.sh [caminho-do-projeto]
# Sem argumento: instala no diretório atual. Requer curl.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-.}"
SEEDS_BASE="https://raw.githubusercontent.com/talessc74/Governan-a-e-xdrs/main/.seeds"

SEED_FILES=(
  ARGUS.md SCOUT.json FLUX.json LITERATE.json RIVERRAID.json
  COMPASS.json EMPIRICUS.json POLARBEAR.json FEW.json
  BLAST.json BAU.json SENTINEL.json SOVEREIGN.json GHOST.json
  PARETO.json PROBE.json SCAFFOLD.json SCRIBE.json HERALD.json
  AETHER.json NEXUS.json CHRONOS.json CANVAS.json FORGE.json
  QUILL.json TEMPO.json THRESHOLD.json EMPATH.json SKEPTIC.json
)

if [ ! -d "$TARGET" ]; then
  echo "Erro: diretório '$TARGET' não encontrado."
  exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "Erro: este script precisa do 'curl' instalado."
  exit 1
fi

echo "Instalando governança ARGUS em: $TARGET"

mkdir -p "$TARGET/.seeds"

# CLAUDE.md vem deste repositório local (documento de entrada, leve, sem npm)
if [ -f "$TARGET/CLAUDE.md" ]; then
  echo "  ⚠️  CLAUDE.md já existe. Salvando backup em CLAUDE.md.bak"
  cp "$TARGET/CLAUDE.md" "$TARGET/CLAUDE.md.bak"
fi
cp "$SCRIPT_DIR/CLAUDE.md" "$TARGET/CLAUDE.md"
echo "  ✓ CLAUDE.md"

# Seeds e protocolo ARGUS vêm sempre ao vivo da fonte única (argus-xdrs-governance)
for fname in "${SEED_FILES[@]}"; do
  curl -fsSL "$SEEDS_BASE/$fname" -o "$TARGET/.seeds/$fname"
  echo "  ✓ .seeds/$fname"
done

echo ""
echo "Governança instalada com sucesso (28 seeds, sincronizadas com argus-xdrs-governance)."
echo "Próximo passo: abra o projeto com Claude Code."
echo "ARGUS já está de olho."
