return {
  "stevearc/conform.nvim",
  cmd = "ConformInfo",
  opts = {
    formatters_by_ft = {
      go = { "gofumpt" },
      lua = { "stylua" },
      json = { "biome" },
      typescript = { "biome" },
      zig = { "zigfmt" },
    },
  },
}
