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
        "hcl",
      },
      sync_install = false,
      auto_install = false
    }
)
