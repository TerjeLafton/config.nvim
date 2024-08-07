local theme = {
  fill = "TabLineFill",
  current_tab = "TabLineSel",
  tab = "TabLine",
}

local opts = {
  line = function(line)
    return {
      line.tabs().foreach(function(tab)
        local hl = tab.is_current() and theme.current_tab or theme.tab
        return {
          line.sep("", hl, theme.fill),
          tab.number(),
          tab.name(),
          tab.close_btn(""),
          line.sep(" ", hl, theme.fill),
          hl = hl,
          margin = " ",
        }
      end),
    }
  end,
}

return {
  "nanozuki/tabby.nvim",
  event = "VeryLazy",
  version = "*",
  opts = opts,
}
