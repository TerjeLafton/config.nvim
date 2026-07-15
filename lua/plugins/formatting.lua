return {
  "stevearc/conform.nvim",
  cmd = "ConformInfo",
  opts = {
    formatters_by_ft = {
      go = { "gofumpt" },
      lua = { "stylua" },
      json = { "biome" },
      rust = { "rustfmt" },
      typescript = { "biome" },
      zig = { "zigfmt" },
    },
  },
}
