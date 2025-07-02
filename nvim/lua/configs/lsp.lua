local M = {}

M.diagnostic_config = function()
  local x = vim.diagnostic.severity

  vim.diagnostic.config {
    underline = true,
    float = { border = "single" },
  }
end

return M
