local lspconfig = require("lspconfig")

return {
  filetypes = { "elixir", "eelixir", "heex" },
  cmd = { "/home/terje/Projects/elixir/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  root_dir = function(fname)
    return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
  end,
  settings = {},
}
