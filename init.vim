set nocompatible

autocmd VimEnter * hi Normal ctermbg=none

set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*.local/,*.oh-my-zsh/,*.wine/

" Dir

set number
set cursorline

set wildmenu
set wildmode=list:longest
set autochdir
set ts=2 sw=2
source ~/.config/nvim/deps.vim
autocmd BufEnter * silent! lcd %:p:h

source ~/.config/nvim/theming.vim
source ~/.config/nvim/keymappings.vim
source ~/.config/nvim/abbrev.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/rainbow.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/indent.vim
source ~/.config/nvim/plugins/org.vim




