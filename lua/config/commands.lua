vim.api.nvim_create_user_command("ToggleLspDiagnostics", function(_)
  local state = require("lsp_lines").toggle()
  vim.diagnostic.config({ virtual_text = not state })
end, { desc = "Toggle the lsp_lines plugins view of diagnostics" })
