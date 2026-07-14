local overseer = require("overseer")

---@type overseer.TemplateFileDefinition
return {
  name = "cargo run",
  desc = "Run the current Rust package",
  tags = { overseer.TAG.RUN },
  condition = {
    filetype = { "rust" },
  },
  builder = function()
    return {
      cmd = { "cargo" },
      args = { "run" },
      cwd = vim.fs.root(0, { "Cargo.toml" }) or vim.fn.getcwd(),
      components = {
        {
          "open_output",
          direction = "tab",
          focus = true,
          on_start = "always",
        },
        "default",
      },
    }
  end,
}
