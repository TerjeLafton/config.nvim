local config = function()
  local opts = {
    custom_highlights = function(c)
      return {
        DiagnosticVirtualTextError = { fg = c.red, bg = c.none },
        DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.none },
        DiagnosticVirtualTextInfo = { fg = c.blue, bg = c.none },
        DiagnosticVirtualTextHint = { fg = c.teal, bg = c.none },
        LazyBackdrop = { bg = c.base },
        LazyButton = { bg = c.base },
        LazyButtonActive = { fg = c.blue, bg = c.base },
        LazyH1 = { fg = c.blue, bg = c.base },
        LazyProp = { bg = c.base },
        NeoTreeNormal = { bg = c.base },
        NeoTreeNormalNC = { bg = c.base },
        NormalFloat = { bg = c.base },
        TabLine = { bg = c.base },
        TabLineSel = { fg = c.crust, bg = c.blue, style = { "bold" } },
      }
    end,
    flavour = "mocha",
    integrations = {
      cmp = true,
      colorful_winsep = { enabled = true, color = "blue" },
      fidget = true,
      gitsigns = true,
      leap = true,
      markdown = true,
      mini = { enabled = true },
      neotree = true,
      neogit = true,
      neotest = true,
      dap = true,
      dap_ui = true,
      semantic_tokens = true,
      treesitter = true,
      overseer = true,
      telescope = { enabled = true },
      which_key = true,
    },
    show_end_of_buffer = true,
    term_colors = true,
  }

  require("catppuccin").setup(opts)
  vim.cmd.colorscheme("catppuccin")
end

return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = config,
}
