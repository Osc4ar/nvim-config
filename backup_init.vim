set number
set relativenumber
set cursorline

set incsearch

set clipboard=unnamed

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

set termguicolors
colorscheme moonfly
let g:lightline = { 'colorscheme': 'moonfly' }

set nowrap

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help", "java" },

  highlight = {
    enable = true,
  },
}
EOF
