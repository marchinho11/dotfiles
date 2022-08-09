require('nvim-treesitter.configs').setup({
  ensure_installed = {
      "dockerfile",
      "html",
      "javascript",
      "json",
      "make",
      "python",
      "scala",
      "sql",
      "toml",
      "vim",
      "vue",
      "yaml",
      "css",
      "lua",
      "markdown"
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true
  }
})

