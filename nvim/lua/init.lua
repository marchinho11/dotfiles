require "user.cmp"
require "user.toggleterm"
require "user.lsp"
require "user.treesitter"
require "user.todo_comments"
require "user.terraform"

require("gitsigns").setup {}
require("snippy").setup({snippet_dirs = "~/dotfiles/snippets"})
require("bufferline").setup {}
