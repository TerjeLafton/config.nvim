return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@module "snacks"
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    input = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    scratch = { enabled = true },
    terminal = { enabled = true },
    toggle = { enabled = true },

    explorer = {
      enabled = true,
      replace_netrw = true,
    },

    indent = {
      enabled = true,
      animate = { enabled = false },
    },

    notifier = {
      enabled = true,
      level = vim.log.levels.DEBUG,
    },

    picker = {
      enabled = true,
      win = {
        input = {
          keys = {
            ["<C-y>"] = { "confirm", mode = { "n", "i" } },
            ["<CR>"] = "null",
          },
        },
      },
    },

    scroll = {
      enabled = true,
      animate = {
        duration = {
          total = 50,
        },
      },
    },

    styles = {},
  },
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        _G.dd = function(...)
          Snacks.debug.inspect(...)
        end
        _G.bt = function()
          Snacks.debug.backtrace()
        end
      end,
    })
  end,
}
