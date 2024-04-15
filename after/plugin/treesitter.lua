require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "c",
      "lua",
      "vim",
      "java",
      "javascript",
      "typescript",
      "python",
      "clojure",
      "dart",
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
  },
}
