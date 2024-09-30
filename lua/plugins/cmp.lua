local config = function(_, _)
  local autopairs = require("nvim-autopairs.completion.cmp")
  local cmp = require("cmp")
  local ls = require("luasnip")

  cmp.event:on("confirm_done", autopairs.on_confirm_done())

  cmp.setup({

    formatting = {
      expandable_indicator = false,
      fields = { "abbr", "kind", "menu" },
      format = function(entry, vim_item)
        vim_item.menu_hl_group = "@comment"
        vim_item.menu = ({
          lazydev = "[LSP]",
          copilot = "[AI]",
          nvim_lsp = "[LSP]",
          luasnip = "[Snip]",
          buffer = "[Buf]",
          path = "[Path]",
        })[entry.source.name]
        return vim_item
      end,
    },

    mapping = {
      ["<C-y>"] = cmp.mapping.confirm({ select = true }),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-p>"] = function()
        if cmp.visible() then
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
        elseif ls.jumpable(-1) then
          ls.jump(-1)
        end
      end,
      ["<C-n>"] = function()
        if cmp.visible() then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        elseif ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end,
      ["<C-l>"] = function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end,
    },

    snippet = {
      expand = function(args)
        ls.lsp_expand(args.body)
      end,
    },

    sources = cmp.config.sources({
      { name = "copilot", max_item_count = 1 },
      { name = "lazydev", group_index = 0 },
      { name = "nvim_lsp" },
      { name = "nvim_lsp_signature_help" },
      { name = "luasnip" },
      { name = "path" },
    }, {
      { name = "buffer", keyword_length = 5 },
    }),

    view = {},

    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
  })

  cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = { { name = "buffer" } },
  })

  cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = "path" },
    }, {
      { name = "cmdline" },
    }),
  })
end

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    { "zbirenbaum/copilot-cmp", config = true },
  },
  event = "InsertEnter",
  config = config,
}
