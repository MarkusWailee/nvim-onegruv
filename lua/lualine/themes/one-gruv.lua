local c = {
    bg       = "#323232",
    fg       = "#dfdfdf",
    gray     = "#454545",
    blue     = "#61AFEF",
    orange   = "#D19A66",
    green    = "#98C379",
    red      = "#FF7D84",
    yellow   = "#E5C07B",
    purple   = "#C678DD",
}


return {
    normal = {
        a = { fg = c.bg, bg = c.orange, gui = "bold" },
        b = { fg = c.fg, bg = c.gray },
        c = { fg = c.fg, bg = c.bg },
    },
    insert = {
        a = { fg = c.bg, bg = c.green, gui = "bold" },
        b = { fg = c.fg, bg = c.gray },
        c = { fg = c.fg, bg = c.bg },
    },
    visual = {
        a = { fg = c.bg, bg = c.purple, gui = "bold" },
        b = { fg = c.fg, bg = c.gray },
        c = { fg = c.fg, bg = c.bg },
    },
    replace = {
        a = { fg = c.bg, bg = c.red, gui = "bold" },
        b = { fg = c.fg, bg = c.gray },
        c = { fg = c.fg, bg = c.bg },
    },
    inactive = {
        a = { fg = c.gray, bg = c.bg },
        b = { fg = c.gray, bg = c.bg },
        c = { fg = c.gray, bg = c.bg },
    },
}
