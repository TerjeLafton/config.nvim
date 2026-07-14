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
    "stevearc/overseer.nvim",
    cmd = "OverseerRun",
    ---@module 'overseer'
    ---@type overseer.SetupOpts
    opts = {
      component_aliases = {
        default = {
          "on_exit_set_status",
          "on_complete_notify",
          { "on_complete_dispose", require_view = { "SUCCESS", "FAILURE" } },
          {
            "open_output",
            direction = "tab",
            focus = true,
            on_start = "always",
          },
        },
      },
    },
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "sindrets/diffview.nvim",
      "m00qek/baleia.nvim",
      "folke/snacks.nvim",
    },
    cmd = "Neogit",
  },
}
