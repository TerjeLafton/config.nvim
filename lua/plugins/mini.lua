local config = function(_, _)
  require("mini.ai").setup()
  require("mini.cursorword").setup({ delay = 500 })
  require("mini.indentscope").setup({ symbol = "│" })
  require("mini.move").setup()
  require("mini.splitjoin").setup()
  require("mini.surround").setup()
end

return {
  "echasnovski/mini.nvim",
  event = "VeryLazy",
  version = "*",
  config = config,
}
