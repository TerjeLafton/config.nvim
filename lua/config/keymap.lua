local ts = require("telescope.builtin")
local utils = require("config.utils")
local wk = require("which-key")

wk.add({
  { "<C-h>", utils.move_window_focus_left, desc = "Move focus left", mode = { "n", "t" } },
  { "<C-j>", "<Cmd>wincmd j<CR>", desc = "Move focus up", mode = { "n", "t" } },
  { "<C-k>", "<Cmd>wincmd k<CR>", desc = "Move focus down", mode = { "n", "t" } },
  { "<C-l>", utils.move_window_focus_right, desc = "Move focus right", mode = { "n", "t" } },

  { "<C-M-h>", "<Cmd>vertical resize +2<CR>", desc = "Increase width", mode = { "n", "t" } },
  { "<C-M-j>", "<Cmd>resize +2<CR>", desc = "Increase height", mode = { "n", "t" } },
  { "<C-M-k>", "<Cmd>resize -2<CR>", desc = "Decrease height", mode = { "n", "t" } },
  { "<C-M-l>", "<Cmd>vertical resize -2<CR>", desc = "Decrease height", mode = { "n", "t" } },

  { "K", vim.lsp.buf.hover, desc = "Hover" },

  { "<Leader>e", "<Cmd>Neotree toggle<CR>", desc = "Filetree" },

  { "<Leader>d", group = "Diagnostics" },
  { "<Leader>dd", "<Cmd>ToggleLspDiagnostics<CR>", desc = "Toggle LSP Diagnostics" },
  { "<Leader>dp", vim.diagnostic.goto_prev, desc = "Go to previous" },
  { "<Leader>dn", vim.diagnostic.goto_next, desc = "Go to next" },
  { "<Leader>df", vim.diagnostic.open_float, desc = "Open float" },

  { "<Leader>f", group = "Find" },
  { "<Leader>fb", ts.buffers, desc = "Buffers" },
  { "<Leader>ff", ts.find_files, desc = "File" },
  { "<Leader>fF", utils.find_all_files, desc = "File +hidden +ignored" },
  { "<Leader>fg", ts.live_grep, desc = "Word" },
  { "<Leader>fr", ts.oldfiles, desc = "Recent files" },

  { "<Leader>g", group = "Git" },
  { "<Leader>gg", "<Cmd>Neogit<CR>", desc = "Neogit" },
  { "<Leader>gb", ts.git_branches, desc = "Branches" },
  { "<Leader>gc", ts.git_commits, desc = "commits" },
  { "<Leader>gs", ts.git_status, desc = "status" },
  { "<Leader>gS", ts.git_stash, desc = "stash" },

  { "<Leader>H", group = "Help" },
  { "<Leader>Ha", ts.autocommands, desc = "Autocommands" },
  { "<Leader>Hc", ts.commands, desc = "Commands" },
  { "<Leader>HC", ts.command_history, desc = "Command history" },
  { "<Leader>Hh", ts.help_tags, desc = "Help tags" },
  { "<Leader>HH", ts.highlights, desc = "Highlights" },
  { "<Leader>Hk", ts.keymaps, desc = "Keymaps" },
  { "<Leader>Hm", ts.marks, desc = "Marks" },
  { "<Leader>Ho", ts.vim_options, desc = "Options" },

  { "<Leader>i", group = "Info" },
  { "<Leader>il", "<Cmd>LspInfo<CR>", desc = "LspInfo" },
  { "<Leader>ip", "<Cmd>Lazy<CR>", desc = "Lazy" },

  { "<Leader>l", group = "LSP" },
  { "<Leader>la", vim.lsp.buf.code_action, desc = "Code Action" },
  { "<Leader>ld", ts.lsp_definitions, desc = "Definition" },
  { "<Leader>lD", vim.lsp.buf.declaration, desc = "Declaration" },
  { "<Leader>li", ts.lsp_implementations, desc = "Implementation" },
  { "<Leader>lr", ts.lsp_references, desc = "References" },
  { "<Leader>lR", vim.lsp.buf.rename, desc = "Rename" },
  { "<Leader>ls", ts.lsp_document_symbols, desc = "Document Symbol" },
  { "<Leader>lS", ts.lsp_workspace_symbols, desc = "Workspace Symbol" },

  { "<Leader>P", group = "Project" },
  { "<Leader>Po", "<Cmd>Telescope project<CR>", desc = "Open" },

  { "<Leader>t", group = "Tab" },
  { "jk", "<C-\\><C-n>", desc = "Exit terminal mode", mode = "t" },
  { "<Leader>tc", "<Cmd>tabclose<CR>", desc = "Close" },
  { "<Leader>tn", "<Cmd>tabnew<CR>", desc = "New" },
  { "<Leader>to", "<Cmd>tabonly<CR>", desc = "Close other" },
  { "<Leader>tr", utils.rename_tab, desc = "Rename" },
  { "<Leader>tt", utils.new_terminal_tab, desc = "New terminal" },

  { "<Leader>w", group = "Window" },
  { "<Leader>wh", utils.split_left, desc = "Split left" },
  { "<Leader>wj", utils.split_down, desc = "Split down" },
  { "<Leader>wk", utils.split_up, desc = "Split up" },
  { "<Leader>wl", utils.split_right, desc = "Split right" },
  { "<Leader>wo", "<Cmd>only<CR>", desc = "Close others" },
  { "<Leader>wc", "<Cmd>quit<CR>", desc = "Close" },
  { "<Leader>wt", utils.new_terminal_split, desc = "New terminal" },

  { "<Leader>y", "\"+yy", desc = "Yank to clipboard" },
  { "<Leader>y", "\"+y", desc = "Yank to clipbaord", mode = "v" },
  { "<Leader>p", "\"+p", desc = "Put from clipboard", mode = { "n", "v" } },

  { "<Leader><Leader>", group = "Miscellaneous" },
  { "<Leader><Leader>s", utils.toggle_search_highlight, desc = "Toggle search highlights" },
})
