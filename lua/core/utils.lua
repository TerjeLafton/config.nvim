local M = {}

M.toggle_lsp_endhints = function()
  require("lsp-endhints").toggle()
end

return M
