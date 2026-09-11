#!/usr/bin/env bash
# setup-governance.sh
# Instala/atualiza a estrutura de governança ARGUS em qualquer projeto.
# CLAUDE.md vem deste repositório (argus-governance). O protocolo ARGUS e
# todas as seeds vem sempre buscados ao vivo de argus-xdrs-governance
# (fonte única de verdade) - a lista de arquivos é descoberta dinamicamente
# via GitHub API a cada execução, então seeds novas na fonte chegam aqui
# sem precisar atualizar este script.
# Uso: bash setup-governance.sh [caminho-do-projeto]
# Sem argumento: instala no diretório atual. Requer curl e python3.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-.}"
SEEDS_API="https://api.github.com/repos/talessc74/Governan-a-e-xdrs/contents/.seeds"
SEEDS_BASE="https://raw.githubusercontent.com/talessc74/Governan-a-e-xdrs/main/.seeds"

if [ ! -d "$TARGET" ]; then
  echo "Erro: diretório '$TARGET' não encontrado."
  exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "Erro: este script precisa do 'curl' instalado."
  exit 1
fi

if ! command -v python3 >/dev/null 2>&1; then
  echo "Erro: este script precisa do 'python3' instalado (usado para ler a lista de seeds)."
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

# Descobre a lista de seeds dinamicamente (nunca hardcoded) e busca cada
# uma ao vivo da fonte única. Isso garante que uma seed nova adicionada em
# argus-xdrs-governance chega aqui na próxima execução, sem exigir mudança
# neste script.
SEED_FILES=()
while IFS= read -r fname; do
  SEED_FILES+=("$fname")
done < <(curl -fsSL "$SEEDS_API" | python3 -c "import json,sys; [print(f['name']) for f in json.load(sys.stdin) if f['type']=='file']")

if [ "${#SEED_FILES[@]}" -eq 0 ]; then
  echo "Erro: não foi possível listar as seeds via GitHub API ($SEEDS_API)."
  exit 1
fi

for fname in "${SEED_FILES[@]}"; do
  curl -fsSL "$SEEDS_BASE/$fname" -o "$TARGET/.seeds/$fname"
  echo "  ✓ .seeds/$fname"
done

echo ""
echo "Governança instalada com sucesso (${#SEED_FILES[@]} arquivos, sincronizados com argus-xdrs-governance)."
echo "Próximo passo: abra o projeto com Claude Code."
echo "ARGUS já está de olho."
