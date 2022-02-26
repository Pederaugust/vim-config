vim.g.python2_host_prog = '/usr/bin/python2.7'
vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.python_host_prog = '/usr/bin/python'

-- vim.opt.nocompatible = true
vim.opt.rnu = true
vim.opt.cursorline = true
-- vim.opt.wildignore = vim.opt.wildignore . "*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*.local/,*.oh-my-zsh/,*.wine/"
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest"
vim.opt.autochdir = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.laststatus=2

vim.cmd [[
    packloadall
    silent! helptags ALL
    autocmd BufEnter * silent! lcd %:p:h
]]

-- autocmd VimEnter * hi Normal ctermbg=none
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug('junegunn/fzf',  {['do'] = vim.fn['fzf#install']})
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tpope/vim-fugitive'
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug 'frazrepo/vim-rainbow'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'lifepillar/vim-gruvbox8'
Plug 'jceb/vim-orgmode'
Plug 'elixir-editors/vim-elixir'


vim.call('plug#end')

-- vim.g.org_heading_shade_leading_stars=true
-- vim.g.org_indent=true

-- THEMING

vim.g.gruvbox_plugin_hi_groups = true
vim.g.gruvbox_transp_bg = false
vim.g.gruvbox_contrast_dark = 'soft'
vim.g.gruvbox_bold = false
vim.g.gruvbox_italics = false

-- Airline
vim.g.airline_theme='gruvbox8'
vim.g.airline_powerline_fonts = true

vim.cmd('colorscheme gruvbox8_soft')

-- KEYMAPPINGS

vim.g.mapleader = " "
-- Window mappings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>wv", "<C-w>v")
map("n", "<leader>ws", "<C-w>s")
map("n", "<leader>wl", "<C-w>l")
map("n", "<leader>wh", "<C-w>h")
map("n", "<leader>wk", "<C-w>k")
map("n", "<leader>wj", "<C-w>j")
map("n", "<leader>wc", "<C-w>c")

-- Easy convert from doom
map("n", "<leader>:", ":")

-- Cool extra mappings
-- Make big Y do the same as Big D etc
map("n", "Y", "y$")

-- Make things centered when searching in file
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
-- Keep cursor where it was
map("n", "J", "mzJ`z")

-- Undo breakpoints
map("i", ",", ",<C-g>u")
map("i", ".", ".<C-g>u")
map("i", "!", "!<C-g>u")
map("i", ":", ":<C-g>u")
map("i", ";", ";<C-g>u")

-- Moving text
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("i", "<C-j>", ":m +1<CR>")
map("i", "<C-k>", ":m -2<CR>")
map("n", "<leader>j", ":m .+1<CR>==")
map("n", "<leader>k", ":m .-2<CR>==")


-- Buffer mappings
map("n", "<leader>bd", ":b#<bar>bd#<CR>")
map("n", "<leader>bi", ":Buffers<CR>")

-- Update vimrc and load config
map("n", "<leader>vc", ":e ~/.config/nvim/init.lua<cr>")
map("n", "<leader>vs", ":so ~/.config/nvim/init.lua<cr>")

-- Close vim
map("n", "<C-x><C-c>", ":q<cr>")

-- ABBREV
vim.cmd("iabbrev cnost const")
vim.cmd("iabbrev cosnt const")
vim.cmd("iabbrev adn and")

-- PLUGINS
vim.g.fzf_preview_window = {}

-- PLUGINS/FZF

vim.cmd("command! -bang -nargs=* GGrep call fzf#vim#grep('git grep --line-number -- '.shellescape(<q-args>), 0, fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)")
vim.cmd("command! -bang HomeFiles call fzf#vim#files('~/', <bang>0)")

-- File mappings
map("n", "<leader>.", ":HomeFiles<CR>")
map("n", "<leader>,", ":Files<CR>")
map("n", "<leader><leader>", ":GFiles<CR>")

-- Search mappings
map("n", "<leader>sd", ":Ag<CR>")
map("n", "<leader>sp", ":GGrep<CR>")

-- PLUGINS/RAINBOW
vim.g.rainbow_active = true

-- PLUGINS/COC
map("n", "<leader>gt", ":call CocActionAsync('jumpDefinition')<cr>")


-- PLUGINS/FUGITIVE
-- Git mappings
map("n", "<leader>gg", ":Git<CR>")
map("n", "<leader>gp", ":Git push<CR>")

-- PLUGINS/INDENT
vim.g.indent_guides_enable_on_vim_startup = false

