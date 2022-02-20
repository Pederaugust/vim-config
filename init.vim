set nocompatible

set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*.local/,*.oh-my-zsh/,*.wine/

" Dir

set number
set cursorline

set wildmenu
set wildmode=list:longest
set autochdir
source ./deps.vim
autocmd BufEnter * silent! lcd %:p:h

source ./theming.vim
source ./keymappings.vim
source ./plugins/fzf.vim
source ./plugins/ale.vim
source ./plugins/fugitive.vim


