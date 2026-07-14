local M = {}

M.move_or_tab = function(direction)
  return function()
    local current_win = vim.api.nvim_get_current_win()

    vim.cmd.wincmd(direction)

    if vim.api.nvim_get_current_win() ~= current_win then
      return
    end

    local current_tab = vim.fn.tabpagenr()
    local last_tab = vim.fn.tabpagenr("$")

    if direction == "h" and current_tab > 1 then
      vim.cmd.tabprevious()
    elseif direction == "l" and current_tab < last_tab then
      vim.cmd.tabnext()
    end
  end
end

M.toggle_lsp_endhints = function()
  require("lsp-endhints").toggle()
end

M.fullscreen_terminal = function()
  vim.cmd.tabnew()
  vim.cmd.terminal()
  vim.cmd.startinsert()
end

return M
