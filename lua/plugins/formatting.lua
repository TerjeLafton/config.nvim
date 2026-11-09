return {
  "stevearc/conform.nvim",
  cmd = "ConformInfo",
  opts = {
    formatters_by_ft = {
      haskell = { "ormolu" },
      gleam = { "gleam" },
      go = { "gofumpt" },
      lua = { "stylua" },
      json = { "biome" },
      rust = { "rustfmt" },
      typescript = { "biome" },
      yaml = { "yamlfmt" },
      zig = { "zigfmt" },
    },
  },
}
