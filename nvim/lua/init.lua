require "user.cmp"
require "user.toggleterm"
require "user.lsp"


require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require('gitsigns').setup {}

