let g:fzf_preview_window = []

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



