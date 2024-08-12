return {
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    version = "*",
    opts = {},
  },

  {
    "j-hui/fidget.nvim",
    event = "VimEnter",
    opts = {
      notification = {
        override_vim_notify = true,
        window = {
          winblend = 0,
        },
      },
    },
    version = "*",
  },

  { "windwp/nvim-autopairs", event = "InsertEnter", opts = { check_ts = true } },

  { "stevearc/dressing.nvim", config = true, event = "BufEnter" },

  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    opts = function()
      vim.diagnostic.config({ virtual_lines = false })
    end,
  },

  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    config = true,
    version = "*",
  },

  {
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = "WinLeave",
    version = "*",
  },

  {
    "rasulomaroff/reactive.nvim",
    event = "VeryLazy",
    version = "*",
    opts = { load = { "catppuccin-mocha-cursor", "catppuccin-mocha-cursorline" } },
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    version = "*",
    config = true,
  },

  {
    "stevearc/overseer.nvim",
    cmd = "Overseer",
    version = "*",
    opts = {},
  },

  {
    "NeogitOrg/neogit",
    dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim", "nvim-telescope/telescope.nvim" },
    version = "*",
    cmd = "Neogit",
    config = true,
  },

  {
    "ahmedkhalf/project.nvim",
    version = "*",
    main = "project_nvim",
    config = true,
  },

  {
    "dundalek/parpar.nvim",
    ft = "clojure",
    dependencies = { "gpanders/nvim-parinfer", "julienvincent/nvim-paredit" },
    config = true,
  },
}
