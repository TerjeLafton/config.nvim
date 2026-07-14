vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2

vim.keymap.set('n', '<leader><leader>s', '<cmd>source %<cr>', { buffer = true, desc = 'Source current file' })

vim.lsp.enable({ "lua_ls" })
vim.treesitter.start()
