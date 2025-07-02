vim.api.nvim_set_option_value("clipboard", "unnamed", {})

vim.o.syntax = "enable"
vim.o.number = true
-- vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.scrolloff = 20
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.backup = false
vim.o.swapfile = false
-- Case-insensitive search
vim.o.ignorecase = true
-- But case-sensitive if expression contains a capital letter.
vim.o.smartcase = true
-- Show matching char (like {})
vim.o.showmatch = true
-- Circle search
vim.o.wrapscan = true
vim.o.termguicolors = true
vim.o.mousehide = true
vim.o.mouse = "a"
vim.o.encoding = "utf-8"
vim.o.fileencodings = "utf-8"
vim.o.backspace = "indent,eol,start"
vim.o.completeopt = "menu,menuone,noselect"

vim.o.background = "dark"
-- vim.cmd.colorscheme "kanagawa"

-- vim.o.background = "light"
-- vim.cmd.colorscheme "kanagawa"
