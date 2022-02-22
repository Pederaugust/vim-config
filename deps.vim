
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tpope/vim-fugitive'
Plug 'jceb/vim-orgmode'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'frazrepo/vim-rainbow'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()


