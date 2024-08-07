local opts = {
  popup_border_style = "rounded",
  window = {
    position = "float",
  },
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = opts,
}
