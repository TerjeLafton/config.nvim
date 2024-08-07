-- Highlight text when yanked.
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ timeout = 300 })
  end,
})

-- Format on save.
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("Formatting", { clear = true }),
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

-- Set appropriate options for terminal buffers.
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("TerminalOptions", { clear = true }),
  pattern = "*",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
    vim.opt_local.list = false
    vim.opt_local.wrap = false
  end,
})

-- Always enter insert mode when entering a terminal buffer.
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
  group = vim.api.nvim_create_augroup("TerminalInsert", { clear = true }),
  pattern = "term://*",
  command = "startinsert",
})
