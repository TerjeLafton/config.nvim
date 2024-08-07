local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("elixir", {

  s({ name = "HEEx line", trig = "<%=" }, { t("<%= "), i(0), t(" %>") }),

  s({ name = "HEEx for", trig = ":for" }, { t(":for={"), i(1), t(" <- "), i(2), t("} "), i(0) }),

  s({ name = "HEEx if", trig = ":if" }, { t(":if={"), i(1), t("} "), i(0) }),

  s({ name = "HEEx let", trig = ":let" }, { t(":let={"), i(1), t("} "), i(0) }),
})

ls.filetype_extend("heex", { "elixir" })
