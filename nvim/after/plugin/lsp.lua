local lsp = require("lsp-zero")

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)
lsp.setup_servers({'pyright', 'gopls', 'terraformls', 'tsserver', 'zls', 'ocamllsp'})

local cmp = require('cmp')
local cmp_action = lsp.cmp_action()
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<Tab>'] = cmp_action.tab_complete(),
        ['<S-Tab>'] = cmp_action.select_prev_or_fallback()
    })
})
