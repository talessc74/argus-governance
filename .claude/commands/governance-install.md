Instale a governança ARGUS neste repositório.

O `CLAUDE.md` (documento de entrada, leve, sem npm) vem deste repositório
(`argus-governance`). O protocolo ARGUS e todas as seeds vêm da fonte
única de verdade, `argus-xdrs-governance`, para nunca ficarem desatualizados
em relação a ela.

Passos:

1. Busque `CLAUDE.md` direto da URL raw deste repositório:
   - `https://raw.githubusercontent.com/talessc74/argus-governance/main/CLAUDE.md`

2. Descubra a lista atual de arquivos em `.seeds/` de `talessc74/Governan-a-e-xdrs`
   (NUNCA use uma lista fixa/hardcoded — seeds novas são adicionadas lá com
   frequência). Use a GitHub Contents API:
   - `https://api.github.com/repos/talessc74/Governan-a-e-xdrs/contents/.seeds`
   - A resposta é uma lista JSON de objetos com `name` (nome do arquivo) e
     `type` (use só os que têm `type: "file"`).

3. Para cada nome de arquivo da lista, busque o conteúdo direto da URL raw:
   - `https://raw.githubusercontent.com/talessc74/Governan-a-e-xdrs/main/.seeds/<nome-do-arquivo>`

4. Se já existir um `CLAUDE.md` neste repositório, renomeie-o para `CLAUDE.md.bak` antes de sobrescrever.

5. Escreva todos os arquivos no repositório atual, mantendo a estrutura de pastas (`.seeds/` na raiz). Não toque em nada dentro de `.xdrs/`, `.filedist.lock`, `.filedist.yml` ou `AGENTS.md` se existirem — esses arquivos pertencem a uma instalação separada do `xdrs-core` via npm, não a esta.

6. Faça commit com a mensagem: "chore: instalar/atualizar governança ARGUS (sincronizado com argus-xdrs-governance)"

7. Faça push para o branch atual.

8. Confirme ao usuário que a governança foi instalada/atualizada (mencione o total de seeds encontradas no passo 2, e que a partir do próximo chat neste repositório o `CLAUDE.md` novo já é lido automaticamente).
