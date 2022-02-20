
" Fix files automatically on save
let g:ale_fixers = {
\  'javascript': ['eslint', 'prettier'],
\  'typescript': ['eslint', 'prettier'],
\  '*': ['trim_whitespace']
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1


" Definition mappings
nnoremap <leader>gt :ALEGoToDefinition<CR>
nnoremap <leader>gr :ALEFindReferences<CR>


