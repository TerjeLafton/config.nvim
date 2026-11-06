return {
  { "nvim-tree/nvim-web-devicons" },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = true,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = { check_ts = true },
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = true,
  },

  {
    "OXY2DEV/helpview.nvim",
    lazy = false,
  },

  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    opts = {
      signs = false,
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      icons = {
        mappings = false,
      },
      win = {
        border = "rounded",
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = true,
  },

  {
    "alexghergh/nvim-tmux-navigation",
    event = "VeryLazy",
    opts = { disable_when_zoomed = true },
  },
}
