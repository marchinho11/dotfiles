local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")

local capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig["pyright"].setup {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
        buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
    end
}

lspconfig["tsserver"].setup{}
