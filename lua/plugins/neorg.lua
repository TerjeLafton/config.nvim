local opts = {
  load = {
    ["core.concealer"] = {},
    ["core.defaults"] = {},
    ["core.dirman"] = {
      config = {
        workspaces = {
          notes = "~/neorg/notes",
          tasks = "~/neorg/tasks",
        },
        default_workspace = "tasks",
      },
    },
  },
}

return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
  opts = opts,
}
