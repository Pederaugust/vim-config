set nocompatible

autocmd VimEnter * hi Normal ctermbg=none

set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*.local/,*.oh-my-zsh/,*.wine/

" Dir

set rnu
set cursorline

set wildmenu
set wildmode=list:longest
set autochdir
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

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

" THEMING
set laststatus=2
let g:gruvbox_transp_bg = 0
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_bold = 0
let g:gruvbox_italics = 0
colorscheme gruvbox8_soft

" Airline
let g:airline_theme='gruvbox8'
let g:airline_powerline_fonts = 1


autocmd BufEnter * silent! lcd %:p:h

" KEYMAPPINGS

let mapleader = " "

" Window mappings
nnoremap <leader>wv <C-w>v
nnoremap <leader>ws <C-w>s
nnoremap <leader>wl <C-w>l
nnoremap <leader>wh <C-w>h
nnoremap <leader>wk <C-w>k
nnoremap <leader>wj <C-w>j
nnoremap <leader>wc <C-w>c

" Easy convert from doom
nnoremap <leader>: :

" Cool extra mappings
" Make big Y do the same as Big D etc
nnoremap Y y$
"
" Make things centered when searching in file
nnoremap n nzzzv
nnoremap N Nzzzv
" Keep cursor where it was
nnoremap J mzJ`z

" Undo breakpoints
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap : :<C-g>u
inoremap ; ;<C-g>u

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> :m +1<CR>
inoremap <C-k> :m -2<CR>
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==


" Buffer mappings
nnoremap <leader>bd :b#<bar>bd#<CR>
nnoremap <leader>bi :Buffers<CR>

" Update vimrc and load config
nnoremap <leader>vc :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>vs :so ~/.config/nvim/init.vim<cr>

" Close vim
nnoremap <C-x><C-c> :q<cr>

" ABBREV
:iabbrev cnost const
:iabbrev cosnt const
:iabbrev adn and

" PLUGINS
let g:fzf_preview_window = []

" PLUGINS/FZF
" File mappings
command! -bang HomeFiles call fzf#vim#files('~/', <bang>0)


nnoremap <leader>. :HomeFiles<CR>
nnoremap <leader>, :Files<CR>
nnoremap <leader><leader> :GFiles<CR>

" Search mappings
command! -bang -nargs=* GGrep call fzf#vim#grep('git grep --line-number -- '.shellescape(<q-args>), 0, fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

nnoremap <leader>sd :Ag<CR>
" vnoremap <leader>sp y :Ag p<CR> I'm trying to search for text in the visual
" nnoremap <leader>sp :lcd %:p:h :Ag<CR>
nnoremap <leader>sp :GGrep<CR>

" PLUGINS/RAINBOW
let g:rainbow_active = 1

" PLUGINS/COC
nnoremap <leader>gt :call CocActionAsync('jumpDefinition')<cr>
 

" PLUGINS/FUGITIVE
" Git mappings
nnoremap <leader>gg :Git<CR>
nnoremap <leader>gp :Git push<CR>

" PLUGINS/INDENT
let g:indent_guides_enable_on_vim_startup = 0

" PLUGINS/ORG
packloadall
silent! helptags ALL



