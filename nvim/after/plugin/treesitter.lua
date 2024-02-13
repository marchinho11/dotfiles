require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "dockerfile",
        "html",
        "javascript",
        "json",
        "make",
        "python",
        "proto",
        "sql",
        "toml",
        "vim",
        "yaml",
        "lua",
        "markdown",
        "regex",
        "go",
        "hcl",
        "terraform"
    },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true }
}
