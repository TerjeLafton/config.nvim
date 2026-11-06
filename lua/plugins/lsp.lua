return {
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },

  {
    "chrisgrieser/nvim-lsp-endhints",
    event = "LspAttach",
    opts = {
      icons = {
        type = "",
        parameter = "",
        offspec = "",
        unknown = "",
      },
      label = {
        sameKindSeparator = " | ",
      },
    },
  },
}
