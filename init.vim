set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-fugitive'

call plug#end()

autocmd BufEnter * silent! lcd %:p:h
set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*.local$,*.oh-my-zsh$,*.wine/

" Dir
let g:fzf_preview_window = []

set number
set cursorline

set wildmenu
set wildmode=list:longest

" Fix files automatically on save

let g:ale_fixers = {
\  'javascript': ['eslint', 'prettier'],
\  'typescript': ['eslint', 'prettier'],
\  '*': ['trim_whitespace']
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

" Theming
set laststatus=2
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_bold = 0
colorscheme gruvbox

" Airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

let mapleader = " "

" Window mappings
nnoremap <leader>wv <C-w>v
nnoremap <leader>ws <C-w>s
nnoremap <leader>wl <C-w>l
nnoremap <leader>wh <C-w>h
nnoremap <leader>wk <C-w>k
nnoremap <leader>wj <C-w>j
nnoremap <leader>wc <C-w>c

" File mappings
command! -bang HomeFiles call fzf#vim#files('~/', <bang>0)

nnoremap <leader>. :HomeFiles<CR>
nnoremap <leader><leader> :GFiles<CR>

" Search mappings
"function! vimrc#ggrep(args, ...)
"  let root = s:get_git_root()
"  if empty(root)
"    return s:warn('Not in git repo')
"  endif
"  return fzf#vim#grep('git grep --line-number -- '.shellescape(<q-args>), 0, fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
"endfunction

command! -bang -nargs=* GGrep call fzf#vim#grep('git grep --line-number -- '.shellescape(<q-args>), 0, fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

nnoremap <leader>sd :Ag<CR>
" vnoremap <leader>sp y :Ag p<CR> I'm trying to search for text in the visual
" nnoremap <leader>sp :lcd %:p:h :Ag<CR>
nnoremap <leader>sp :GGrep<CR>

" Buffer mappings
nnoremap <leader>bd :b#<bar>bd#<CR>
nnoremap <leader>bi :Buffers<CR>

" Definition mappings
nnoremap <leader>gt :ALEGoToDefinition<CR>
nnoremap <leader>gr :ALEFindReferences<CR>

" Easy convert from doom
nnoremap <leader>: :

" Git mappings
nnoremap <leader>gg :Git<CR>

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

