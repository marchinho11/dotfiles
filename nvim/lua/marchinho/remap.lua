vim.g.mapleader = " "

vim.opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,'..
                  'фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'

-- NERDTree
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<C-n>", ":NvimTreeFindFile<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>p", ":FZF<CR>")
vim.keymap.set("n", "<leader>f", ":RG<CR>")
vim.keymap.set("n", "<leader>h", ":Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>g", ":Gvdiffsplit<CR>")

-- Esc false positives
vim.keymap.set("n", "<F1>", "<esc>")
vim.keymap.set("i", "<F1>", "<esc>")

-- Delete to black hole
vim.keymap.set("n", "d", '"_d', {noremap = true, silent = true})
vim.keymap.set("n", "dd", '"_dd', {noremap = true, silent = true})
vim.keymap.set("v", "d", '"_d', {noremap = true, silent = true})
vim.keymap.set("v", "dd", '"_dd', {noremap = true, silent = true})

-- Clear highlight on pressing ESC twice
vim.keymap.set("n", "<esc><esc>", ":noh<cr>", {noremap = true, silent = true})

-- Navigating between splits
vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true, silent = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", {noremap = true, silent = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", {noremap = true, silent = true})
vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})

-- Terminal
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", {noremap = true, silent = true})

-- do nothing
vim.cmd([[command! W echo "W"]])
