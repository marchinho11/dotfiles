local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and
             vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col)
          :match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(
      vim.api.nvim_replace_termcodes(key, true, true, true), mode, true
  )
end

local cmp = require("cmp")
cmp.setup(
    {
      snippet = {
        expand = function(args)
          require("snippy").expand_snippet(args.body)
        end
      },
      window = {},
      mapping = cmp.mapping.preset.insert(
          {
            ["<Tab>"] = cmp.mapping(
                function(fallback)
                  if cmp.visible() then
                    cmp.select_next_item()
                  elseif has_words_before() then
                    cmp.complete()
                  else
                    fallback()
                  end
                end, {"i", "s"}
            ),
            ["<S-Tab>"] = cmp.mapping(
                function()
                  if cmp.visible() then
                    cmp.select_prev_item()
                  end
                end, {"i", "s"}
            ),
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({select = false})
          }
      ),
      sources = cmp.config.sources(
          {
            {name = "nvim_lsp"},
            {name = "snippy"},
            {
              name = "buffer",
              option = {keyword_pattern = [[\k\+]], keyword_length = 4}
            }
          }
      )
    }
)

-- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
