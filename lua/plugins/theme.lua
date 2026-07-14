return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      auto_integrations = true,
      flavour = "mocha",

      color_overrides = {
        mocha = {
          rosewater = "#e9d3cf",
          flamingo = "#e6c3c3",
          pink = "#e8bcd8",
          mauve = "#c2a1e4",
          red = "#de8ea0",
          maroon = "#da9aa4",
          peach = "#e8aa87",
          yellow = "#e9d4a8",
          green = "#9bd89b",
          teal = "#89d3c8",
          sky = "#7fced8",
          sapphire = "#6db8d8",
          blue = "#82a8e4",
          lavender = "#a7b4e6",
          text = "#d8d8e2",
          subtext1 = "#9a9aa5",
          subtext0 = "#6e6e78",
          overlay2 = "#585866",
          overlay1 = "#4e4e5a",
          overlay0 = "#444450",
          surface2 = "#363644",
          surface1 = "#282832",
          surface0 = "#1e1e28",
          base = "#0a0a12",
          mantle = "#0e0e16",
          crust = "#12121a",
        },
      },

      custom_highlights = function(c)
        return {
          -- Syntax
          Keyword = { fg = c.peach },
          -- General
          NormalFloat = { bg = c.base },
          FloatBorder = { bg = c.base },
          FloatTitle = { bg = c.base },
          LspInlayHint = { bg = c.base },
          -- Blink CMP
          BlinkCmpMenu = { bg = c.base },
          BlinkCmpMenuSelection = { bg = c.surface0 },
          -- Diagnostics
          DiagnosticVirtualTextError = { fg = c.red, bg = c.none },
          DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.none },
          DiagnosticVirtualTextInfo = { fg = c.blue, bg = c.none },
          DiagnosticVirtualTextHint = { fg = c.teal, bg = c.none },
          -- Indent Guides
          IblScope = { fg = c.surface2 },
          -- NeoTree
          NeoTreeNormal = { bg = c.base },
        }
      end,
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
