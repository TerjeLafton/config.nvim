local servers = {
  gopls = {},
  lua_ls = {},
  ocamllsp = {},
}

local config = function(_, _)
  local lspconfig = require("lspconfig")

  local default_opts = {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
  }

  for server, custom_opts in pairs(servers) do
    local opts = vim.tbl_deep_extend("keep", custom_opts, default_opts, {})

    lspconfig[server].setup(opts)
  end
end

return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = config,
  },

  {
    "folke/lazydev.nvim",
    dependencies = "Bilal2453/luvit-meta",
    ft = "lua",
    version = "*",
    opts = {
      library = {
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
}
