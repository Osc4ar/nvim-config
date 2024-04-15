vim.opt["termguicolors"] = true

require('catppuccin').setup({
    flavour = 'mocha',
    transparent_background = true,
})
vim.cmd([[colorscheme catppuccin]])

vim.cmd([[let g:lightline = { 'colorscheme': 'moonfly' }]])

vim.g.moonflyCursorColor = true
vim.g.moonflyTransparent = true


vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.opt.clipboard = "unnamedplus"
