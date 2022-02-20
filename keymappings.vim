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
