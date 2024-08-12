local opts = function()
  local actions = require("telescope.actions")
  return {
    defaults = {
      dynamic_preview_title = true,
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          preview_width = 0.5,
          prompt_position = "top",
          width = 0.9,
        },
      },
      mappings = {
        i = {
          ["<Esc>"] = actions.close,
          ["<C-y>"] = actions.select_default,
          ["<Up>"] = false,
          ["<Down>"] = false,
          ["<CR>"] = false,
        },
        n = {
          ["<C-y>"] = actions.select_default,
          ["<Up>"] = false,
          ["<Down>"] = false,
          ["<CR>"] = false,
        },
      },
      sorting_strategy = "ascending",
      path_display = { "smart" },
    },
    extensions = {},
    pickers = {},
  }
end

local config = function(_, opts)
  local ts = require("telescope")
  ts.setup(opts)
  ts.load_extension("fzf")
  ts.load_extension("projects")
end

return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    },
  },
  version = "*",
  opts = opts,
  config = config,
}
