Instale a governança ARGUS neste repositório.

O `CLAUDE.md` (documento de entrada, leve, sem npm) vem deste repositório
(`argus-governance`). O protocolo ARGUS e todas as seeds vêm da fonte
única de verdade, `argus-xdrs-governance`, para nunca ficarem desatualizados
em relação a ela.

Passos:

1. Busque `CLAUDE.md` direto da URL raw deste repositório:
   - `https://raw.githubusercontent.com/talessc74/argus-governance/main/CLAUDE.md`

2. Busque cada arquivo abaixo direto da URL raw de `talessc74/Governan-a-e-xdrs`
   (`https://raw.githubusercontent.com/talessc74/Governan-a-e-xdrs/main/<caminho>`):
   - `.seeds/ARGUS.md`
   - `.seeds/SCOUT.json`
   - `.seeds/FLUX.json`
   - `.seeds/LITERATE.json`
   - `.seeds/RIVERRAID.json`
   - `.seeds/COMPASS.json`
   - `.seeds/EMPIRICUS.json`
   - `.seeds/POLARBEAR.json`
   - `.seeds/FEW.json`
   - `.seeds/BLAST.json`
   - `.seeds/BAU.json`
   - `.seeds/SENTINEL.json`
   - `.seeds/SOVEREIGN.json`
   - `.seeds/GHOST.json`
   - `.seeds/PARETO.json`
   - `.seeds/PROBE.json`
   - `.seeds/SCAFFOLD.json`
   - `.seeds/SCRIBE.json`
   - `.seeds/HERALD.json`
   - `.seeds/AETHER.json`
   - `.seeds/NEXUS.json`
   - `.seeds/CHRONOS.json`
   - `.seeds/CANVAS.json`
   - `.seeds/FORGE.json`
   - `.seeds/QUILL.json`
   - `.seeds/TEMPO.json`
   - `.seeds/THRESHOLD.json`
   - `.seeds/EMPATH.json`
   - `.seeds/SKEPTIC.json`

3. Se já existir um `CLAUDE.md` neste repositório, renomeie-o para `CLAUDE.md.bak` antes de sobrescrever.

4. Escreva todos os arquivos no repositório atual, mantendo a estrutura de pastas (`.seeds/` na raiz). Não toque em nada dentro de `.xdrs/`, `.filedist.lock`, `.filedist.yml` ou `AGENTS.md` se existirem — esses arquivos pertencem a uma instalação separada do `xdrs-core` via npm, não a esta.

5. Faça commit com a mensagem: "chore: instalar/atualizar governança ARGUS (sincronizado com argus-xdrs-governance)"

6. Faça push para o branch atual.

7. Confirme ao usuário que a governança foi instalada/atualizada (mencione o total de seeds, 28, e que a partir do próximo chat neste repositório o `CLAUDE.md` novo já é lido automaticamente).
