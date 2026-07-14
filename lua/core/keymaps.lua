local overseer = require("overseer")
local snacks = require("snacks")
local utils = require("core.utils")

snacks.keymap.set({ "n", "t" }, "<leader>q", "<Cmd>quit<CR>", { desc = "Quit" })
snacks.keymap.set("n", "<leader>e", snacks.picker.explorer, { desc = "Explorer" })
snacks.keymap.set("n", "<Leader>y", "\"+yy", { desc = "Yank to Clipboard" })
snacks.keymap.set("v", "<Leader>y", "\"+y", { desc = "Yank to Clipboard" })
snacks.keymap.set({ "n", "v" }, "<Leader>p", "\"+p", { desc = "Put from Clipboard" })

snacks.keymap.set({ "n", "t" }, "<C-h>", utils.move_or_tab("h"))
snacks.keymap.set({ "n", "t" }, "<C-l>", utils.move_or_tab("l"))
snacks.keymap.set({ "n", "t" }, "<C-k>", utils.move_or_tab("k"))
snacks.keymap.set({ "n", "t" }, "<C-j>", utils.move_or_tab("j"))

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

snacks.keymap.set("n", "<leader>o", "", { desc = "Overseer" })
snacks.keymap.set("n", "<leader>or", function()
  overseer.run_task({ name = "just run" })
end, { desc = "Just Run" })
snacks.keymap.set("n", "<leader>ol", function()
  overseer.run_task({ name = "just lint" })
end, { desc = "Just Lint" })
snacks.keymap.set("n", "<leader>ot", function()
  overseer.run_task({ name = "just test" })
end, { desc = "Just Test" })

snacks.keymap.set("n", "<leader>s", "", { desc = "Scratch" })
snacks.keymap.set("n", "<leader>ss", snacks.scratch.open, { desc = "Buffer" })
snacks.keymap.set("n", "<leader>sS", snacks.scratch.select, { desc = "Buffer" })

snacks.keymap.set("n", "<leader>t", "", { desc = "Tabs and terminals" })
snacks.keymap.set("n", "<leader>tn", "<Cmd>tabnew<CR>", { desc = "New Tab" })
snacks.keymap.set("n", "<leader>tq", "<Cmd>tabclose<CR>", { desc = "Close Tab" })
snacks.keymap.set("n", "<leader>to", "<Cmd>tabonly<CR>", { desc = "Only Tab" })
snacks.keymap.set("n", "<leader>tl", "<Cmd>+tabmove<CR>", { desc = "Move Tab Right" })
snacks.keymap.set("n", "<leader>th", "<Cmd>-tabmove<CR>", { desc = "Move Tab Left" })

snacks.keymap.set("n", "<leader>tt", snacks.terminal.open, { desc = "Terminal Tab" })
snacks.keymap.set("n", "<leader>tT", utils.fullscreen_terminal, { desc = "Terminal Tab" })

snacks.keymap.set("n", "<leader>w", "", { desc = "Diagnostics" })
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
