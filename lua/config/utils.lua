---@alias direction '"h"' | '"l"'
local DIRECTION = {
  left = "h",
  right = "l",
}

--- Switch focus to a window in the given direction. If no window exists, try to focus the next tab in that direction instead.
---@param direction direction The direction to move.
local move_window_focus = function(direction)
  assert(direction == DIRECTION.left or direction == DIRECTION.right, "Invalid direction: " .. direction)

  local current_window_nr = vim.fn.win_id2win(vim.api.nvim_get_current_win())
  local window_nr = vim.fn.winnr(direction)
  if current_window_nr ~= window_nr then
    vim.cmd(window_nr .. "wincmd w")
  else
    if direction == DIRECTION.left then
      vim.cmd("tabprevious")
    elseif direction == DIRECTION.right then
      vim.cmd("tabnext")
    end
  end
end

local M = {}

M.new_terminal_split = function()
  vim.cmd("split")
  vim.cmd("term")
  vim.cmd("startinsert")
end

M.new_terminal_tab = function()
  vim.cmd("tabnew")
  vim.cmd("term")
  vim.cmd("startinsert")
end

-- Rename the current tab
M.rename_tab = function()
  local new_name = vim.fn.input("New tab name (or press Enter to abort): ")

  if new_name ~= "" then
    vim.cmd("Tabby rename_tab " .. new_name)
  end
end

-- Helper to move window forcus to the left.
M.move_window_focus_left = function()
  move_window_focus("h")
end

-- Helper to move window forcus to the right.
M.move_window_focus_right = function()
  move_window_focus("l")
end

--- Uses Telescope's find files to find all files, including hidden and gitignored files.
M.find_all_files = function()
  local ts = require("telescope.builtin")
  ts.find_files({ hidden = true, no_ignore = true })
end

--- Creates a new window split to the left of the active window.
M.split_left = function()
  vim.opt.splitright = false
  vim.cmd("vsplit")
end

--- Creates a new window split below the active window.
M.split_down = function()
  vim.opt.splitbelow = true
  vim.cmd("split")
end

--- Creates a new window split above the active window.
M.split_up = function()
  vim.opt.splitbelow = false
  vim.cmd("split")
end

--- Creates a new window split to the right of the active window.
M.split_right = function()
  vim.opt.splitright = true
  vim.cmd("vsplit")
end

M.toggle_search_highlight = function()
  if vim.o.hlsearch == true then
    vim.o.hlsearch = false
  else
    vim.o.hlsearch = true
  end
end

return M
