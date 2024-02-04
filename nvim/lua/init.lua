require "user.cmp"
require "user.lsp"

require("nvim-treesitter.configs").setup(
    {
      ensure_installed = {
        "bash",
        "dockerfile",
        "html",
        "javascript",
        "json",
        "make",
        "python",
        "java",
        "proto",
        "sql",
        "toml",
        "vim",
        "vue",
        "yaml",
        "css",
        "lua",
        "markdown",
        "regex",
        "go",
        "hcl",
      },
      sync_install = false,
      auto_install = false
    }
)

require("toggleterm").setup {
  size = 20,
  open_mapping = [[\\]],
  direction = "horizontal"
}

