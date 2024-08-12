-- General
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.laststatus = 3
vim.opt.mouse = "a"
vim.opt.showtabline = 2
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.updatetime = 500
vim.opt.wrap = false

-- Indents
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- Search and replace
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.smartcase = true

-- Side column
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- Scrolloff
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Window
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.winwidth = 10
vim.opt.winminwidth = 10

-- Neovide
if vim.g.neovide then
  if jit.os == "OSX" then
    vim.g.neovide_input_macos_option_key_i8s_meta = "only_left"
    vim.o.guifont = "Berkeley Mono:h16"
  else
    vim.o.guifont = "Berkeley Mono:h12"
  end

  vim.g.neovide_floating_shadow = false
  vim.g.neovide_fullscreen = false
  vim.g.neovide_remember_window_size = false
  vim.g.neovide_theme = "dark"
  vim.g.neovide_underline_stroke_scale = 0.8
  vim.g.neovide_unlink_border_highlights = true

  vim.g.neovide_padding_top = 15
  vim.g.neovide_padding_bottom = 15
  vim.g.neovide_padding_right = 15
  vim.g.neovide_padding_left = 15
end
