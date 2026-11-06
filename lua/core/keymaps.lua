local snacks = require("snacks")
local utils = require("core.utils")
local tmux_nav = require("nvim-tmux-navigation")

snacks.keymap.set("n", "<leader>q", "<Cmd>quit<CR>", { desc = "Quit" })
snacks.keymap.set("t", "<C-q>", "<Cmd>quit<CR>", { desc = "Quit" })
snacks.keymap.set("n", "<leader>e", snacks.picker.explorer, { desc = "Explorer" })
snacks.keymap.set("n", "<Leader>y", "\"+yy", { desc = "Yank to Clipboard" })
snacks.keymap.set("v", "<Leader>y", "\"+y", { desc = "Yank to Clipboard" })
snacks.keymap.set({ "n", "v" }, "<Leader>p", "\"+p", { desc = "Put from Clipboard" })

snacks.keymap.set("n", "<C-h>", tmux_nav.NvimTmuxNavigateLeft, { desc = "Navigate Left" })
snacks.keymap.set("n", "<C-j>", tmux_nav.NvimTmuxNavigateDown, { desc = "Navigate Down" })
snacks.keymap.set("n", "<C-k>", tmux_nav.NvimTmuxNavigateUp, { desc = "Navigate Up" })
snacks.keymap.set("n", "<C-l>", tmux_nav.NvimTmuxNavigateRight, { desc = "Navigate Right" })
snacks.keymap.set("n", "<C-\\>", tmux_nav.NvimTmuxNavigateLastActive, { desc = "Last Active Pane" })
snacks.keymap.set("n", "<C-Space>", tmux_nav.NvimTmuxNavigateNext, { desc = "Next Pane" })

snacks.keymap.set("n", "<leader>d", "", { desc = "Diagnostics" })
snacks.keymap.set("n", "<leader>dd", snacks.picker.diagnostics, { desc = "Workspace" })
snacks.keymap.set("n", "<leader>dD", snacks.picker.diagnostics_buffer, { desc = "Buffer" })

snacks.keymap.set("n", "<leader>f", "", { desc = "Find" })
snacks.keymap.set("n", "<leader>ff", snacks.picker.files, { desc = "Files" })
snacks.keymap.set("n", "<leader>fb", snacks.picker.buffers, { desc = "Buffers" })
snacks.keymap.set("n", "<leader>fg", snacks.picker.grep, { desc = "Grep" })
snacks.keymap.set("n", "<leader>fG", snacks.picker.grep_buffers, { desc = "Grep Buffers" })
snacks.keymap.set("n", "<leader>fn", snacks.picker.notifications, { desc = "Notifications" })
snacks.keymap.set("n", "<leader>fr", snacks.picker.recent, { desc = "Recent" })
snacks.keymap.set("n", "<leader>fl", snacks.picker.lines, { desc = "Lines" })
snacks.keymap.set("n", "<leader>fL", snacks.picker.lazy, { desc = "Lazy Specs" })

snacks.keymap.set("n", "<leader>g", "", { desc = "Git" })
snacks.keymap.set("n", "<leader>gg", "<Cmd>Neogit<CR>", { desc = "Neogit" })

snacks.keymap.set("n", "<leader>h", "", { desc = "Help" })
snacks.keymap.set("n", "<leader>ha", snacks.picker.autocmds, { desc = "Autocmds" })
snacks.keymap.set("n", "<leader>hc", snacks.picker.commands, { desc = "Commands" })
snacks.keymap.set("n", "<leader>hC", snacks.picker.command_history, { desc = "Commands History" })
snacks.keymap.set("n", "<leader>hh", snacks.picker.help, { desc = "Help" })
snacks.keymap.set("n", "<leader>hH", snacks.picker.highlights, { desc = "Highlights" })
snacks.keymap.set("n", "<leader>hk", snacks.picker.keymaps, { desc = "Keymaps" })
snacks.keymap.set("n", "<leader>hm", snacks.picker.marks, { desc = "Marks" })

snacks.keymap.set("n", "<leader>s", "", { desc = "Scratch" })
snacks.keymap.set("n", "<leader>ss", snacks.scratch.open, { desc = "Buffer" })
snacks.keymap.set("n", "<leader>sS", snacks.scratch.select, { desc = "Buffer" })

snacks.keymap.set("n", "<leader>w", "", { desc = "Windows" })
snacks.keymap.set("n", "<leader>wq", "<Cmd>close<CR>", { desc = "Close window" })
snacks.keymap.set("n", "<leader>wo", "<Cmd>only<CR>", { desc = "Only Window" })
snacks.keymap.set("n", "<leader>wh", "<Cmd>leftabove vnew<CR>", { desc = "Split left" })
snacks.keymap.set("n", "<leader>wl", "<Cmd>rightbelow vnew<CR>", { desc = "Split right" })
snacks.keymap.set("n", "<leader>wk", "<Cmd>leftabove new<CR>", { desc = "Split above" })
snacks.keymap.set("n", "<leader>wj", "<Cmd>rightbelow new<CR>", { desc = "Split below" })

snacks.keymap.set("n", "<leader>u", "", { desc = "UI" })
snacks.toggle.line_number():map("<leader>ul")
snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
snacks.toggle.option("hlsearch", { name = "Highlight Search" }):map("<leader>us")
snacks.toggle.diagnostics():map("<leader>ud")
snacks.toggle.treesitter():map("<leader>ut")
snacks.toggle.inlay_hints():map("<leader>uh")
snacks.keymap.set("n", "<leader>uH", utils.toggle_lsp_endhints, { desc = "Toggle LSP Endhints" })
snacks.toggle.indent():map("<leader>ug")

snacks.keymap.set("n", "<leader>l", "", { desc = "LSP" })
snacks.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {
  lsp = { method = "textDocument/codeAction" },
  desc = "Code Action",
})
snacks.keymap.set("n", "<leader>ld", snacks.picker.lsp_definitions, {
  lsp = { method = "textDocument/definition" },
  desc = "Definition",
})
snacks.keymap.set("n", "<leader>lD", snacks.picker.lsp_declarations, {
  lsp = { method = "textDocument/declaration" },
  desc = "Declaration",
})
snacks.keymap.set("n", "<leader>li", snacks.picker.lsp_implementations, {
  lsp = { method = "textDocument/implementation" },
  desc = "Implementation",
})
snacks.keymap.set("n", "<leader>lr", snacks.picker.lsp_references, {
  lsp = { method = "textDocument/references" },
  desc = "References",
})
snacks.keymap.set("n", "<leader>lR", vim.lsp.buf.rename, {
  lsp = { method = "textDocument/rename" },
  desc = "References",
})
snacks.keymap.set("n", "<leader>ls", snacks.picker.lsp_symbols, {
  lsp = { method = "textDocument/documentSymbol" },
  desc = "Symbols",
})
snacks.keymap.set("n", "<leader>lS", snacks.picker.lsp_workspace_symbols, {
  lsp = { method = "workspace/symbol" },
  desc = "Workspace Symbols",
})
snacks.keymap.set("n", "<leader>lt", snacks.picker.lsp_type_definitions, {
  lsp = { method = "textDocument/typeDefinition" },
  desc = "Type Definition",
})
