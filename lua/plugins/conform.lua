local opts = {
  formatters_by_ft = {
    c = { "clang-format" },
    clojure = { "cljfmt" },
    css = { "prettierd" },
    elixir = { "mix" },
    gleam = { "gleam" },
    go = { "goimports-reviser", "gofumpt", "golines" },
    heex = { "mix" },
    lua = { "stylua" },
    ocaml = { "ocamlformat" },
    proto = { "buf" },
    rust = { "rustfmt" },
    scss = { "prettierd" },
    sql = { "sqlfluff" },
  },
}

return {
  "stevearc/conform.nvim",
  version = "*",
  opts = opts,
}
