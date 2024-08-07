local opts = {
  formatters_by_ft = {
    elixir = { "mix" },
    go = { "goimports-reviser", "gofumpt", "golines" },
    heex = { "mix" },
    lua = { "stylua" },
    ocaml = { "ocamlformat" },
    proto = { "buf" },
    rust = { "rustfmt" },
  },
}

return {
  "stevearc/conform.nvim",
  version = "*",
  opts = opts,
}
