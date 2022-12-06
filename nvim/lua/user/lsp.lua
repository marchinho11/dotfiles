local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")

local capabilities = cmp_nvim_lsp.default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)

local api = vim.api
local cmd = vim.cmd
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- LSP mappings
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>F", "<cmd>lua vim.lsp.buf.formatting()<CR>")

lspconfig["pyright"].setup {capabilities = capabilities}

lspconfig["volar"].setup {
  filetypes = {
    "typescript",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "vue",
    "json"
  }
}

lspconfig["gopls"].setup {capabilities = capabilities}

lspconfig["terraformls"].setup{}
lspconfig["tflint"].setup{}

