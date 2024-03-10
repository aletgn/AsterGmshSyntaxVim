# code_aster and Gmsh syntax highlight for Vim

To install the syntax files, run:

```bash
. ./installSyntax.sh
```

from the cloned folder of this repository. The script actually copies:

- `ftdetect` folder
- `syntax` folder
- `filetype.vim`

in `~/.vim`. Note that files in  `ftdetect` allows `.comm` and `.geo` files to be automatically recognised.
