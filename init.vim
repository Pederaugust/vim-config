set nocompatible

set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*.local/,*.oh-my-zsh/,*.wine/

" Dir

set number
set cursorline

set wildmenu
set wildmode=list:longest


call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-fugitive'

call plug#end()

autocmd BufEnter * silent! lcd %:p:h

source ./theming.vim
source ./keymappings.vim
source ./plugins/fzf.vim
source ./plugins/ale.vim
source ./plugins/fugitive.vim


