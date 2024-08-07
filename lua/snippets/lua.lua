local fmt = require("luasnip.extras.fmt").fmta
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node

ls.add_snippets("lua", {

  s(
    { name = "Module", trig = "mod" },
    fmt(
      [[
      local M = {}

      <>

      return M
      ]],
      { i(0) }
    )
  ),
})
