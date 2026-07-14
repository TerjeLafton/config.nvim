return {
  "saghen/blink.cmp",
  dependencies = {
    "saghen/blink.lib",
  },
  build = function()
    require("blink.cmp").build():pwait()
  end,
  event = "VeryLazy",
  ---@module "blink.cmp"
  ---@type blink.cmp.Config
  opts = {
    cmdline = {
      enabled = true,
    },
    completion = {
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
      documentation = {
        auto_show = true,
        window = {
          border = "rounded",
        },
      },
      menu = {
        border = "rounded",
      },
    },
    keymap = {
      preset = "default",
    },
    signature = {
      enabled = true,
      window = {
        border = "rounded",
      },
    },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
  },
}
