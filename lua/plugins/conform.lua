local opts = {
  formatters_by_ft = {
    clojure = { "cljfmt" },
    elixir = { "mix" },
    go = { "goimports-reviser", "gofumpt", "golines" },
    heex = { "mix" },
    lua = { "stylua" },
    ocaml = { "ocamlformat" },
    proto = { "buf" },
    rust = { "rustfmt" },
    sql = { "sqlfluff" },
  },
}

return {
  "stevearc/conform.nvim",
  version = "*",
  opts = opts,
}
