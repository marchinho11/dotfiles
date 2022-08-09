require("nvim-treesitter.configs").setup(
    {
      ensure_installed = {
        "bash",
        "comment",
        "dockerfile",
        "html",
        "javascript",
        "json",
        "make",
        "python",
        "scala",
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
        "regex"
      },
      sync_install = false,
      auto_install = true,
      highlight = {enable = true}
    }
)
