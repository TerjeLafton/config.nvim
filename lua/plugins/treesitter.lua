local opts = {
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
}

return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  main = "nvim-treesitter.configs",
  lazy = false,
  opts = opts,
}
