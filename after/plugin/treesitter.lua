require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help", "java", "javascript", "typescript", "python" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
  },
}
