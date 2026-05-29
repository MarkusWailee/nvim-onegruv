local c =
{
    text0 = "#bdb8ad",
    text1 = "#6c6963",
    bg0 = "#282828", --main
    bg1 = "#323232", -- slightly brighter
    --fg0 = "#A4957A", --main
    fg0 = "#b3a690", --main
    fg1 = "#bfb5a1", -- slightly brighter
    gray = "#6f6f7b",
    black = "#000000",
    white = "#dfdfdf",
    --red = "#FF7D84",
    red = "#ba5f5f",
    --
    yellow = "#E5C07B",
    orange = "#D19A66",
    --purple = "#C678DD", #6d76b5
    purple = "#b785e0",

    --purple_pale = "#748DAE", -- final
    purple_pale = "#988dc2",

    --blue = "#61AFEF",
    --blue = "#6cc3f1",
    blue = "#589dca",

    turqoise = "#46ba88",
    blue_pale = "#83A598",
    --green = "#98C379",
    green = "#83b95d",

    green_pale = "#8EC07C",
    pink_pale = "#F5CBCB",
    pink = "#D6A99D",
}

local config = {}

config.core =
{
    ["Normal"] =    {fg = c.fg0, bg = c.bg0},
    ["NormalFloat"] = {fg = c.fg0, bg = c.bg0},
    ["FloatBorder"] = {fg = c.fg0, bg = c.bg0},
    ["Pmenu"]       = {fg = c.gray, bg = c.bg0 },
    ["PmenuSel"]    = {fg = c.bg0, bg = c.fg0 },
    ["Identifier"]    = {fg = c.red},
    ["TabLineFill"] = {fg = c.text1, bg = c.bg0},
    ["TabLine"]     = {fg = c.text0, bg = c.bg1},
    ["TabLineSel"]  = {fg = c.bg0, bg = c.turqoise},
}


config.syntax =
{
    ["variable.defaultLib"]     = {fg = c.red },
    ["variable.default"]        = {fg = c.text0},
    ["variable.parameter"]      = {fg = c.text0, italic = true },
    ["variable.property"]       = {fg = c.text0, italic = true },
    ["variable.builtin"]        = {fg = c.red },   -- this->
    ["constant"]                = {fg = c.orange, bold = true},    -- have not come across yet
    ["constant.builtin"]        = {fg = c.orange },         -- have not come across yet
    ["keyword"]                 = {fg = c.purple },    -- while, return, struct, class
    ["keyword.modifier"]        = {fg = c.purple },       -- const, constexpr, inline, static, public
    ["keyword.import"]          = {fg = c.purple },         -- include
    ["type"]                    = {fg = c.yellow },         -- class Mouse, class Cat,
    ["type.builtin"]            = {fg = c.purple },
    ["numbers"]                 = {fg = c.orange },
    ["namespace"]               = {fg = c.yellow },
    ["enum"]                    = {fg = c.yellow },
    ["enum.member"]             = {fg = c.orange },
    ["function"]                = {fg = c.blue },
    ["function.defaultLib"]     = {fg = c.blue },
    ["function.builtin"]        = {fg = c.blue_pale },
    ["macro"]                   = {fg = "#ba7a5f" },
    ["methods"]                 = {fg = c.blue },
    ["operator"]                = {fg = c.purple },
    ["string"]                  = {fg = c.green },
    ["string.escape"]           = {fg = c.red },
    ["string.special"]          = {fg = c.pink },
    ["comment"]                 = {fg = c.text1, italic = true },
    ["brackets"]                = {fg = c.gray },
}

config.markup =
{
    ["@markup.heading.1"]           = {fg = c.red},
    ["@markup.heading.2"]           = {fg = c.red},
    ["@markup.heading.3"]           = {fg = c.red},
    ["@markup.heading.4"]           = {fg = c.red},
    ["@markup.heading.5"]           = {fg = c.red},
    ["@markup.heading.6"]           = {fg = c.red},
    ["@markup.quote"]               = {fg = c.green},
    ["@markup.emphasis"]            = {fg = c.gray },
    ["@markup.environment"]         = {fg = c.gray},
    ["@markup.environment.name"]    = {fg = c.gray},
    ["@markup.heading"]             = {fg = c.orange },
    ["@markup.link"]                = {fg = c.blue },
    ["@markup.link.url"]            = {fg = c.pink },
    ["@markup.list"]                = {fg = c.pink_pale },
    ["@markup.math"]                = {fg = c.gray },
    ["@markup.raw"]                 = {fg = c.green },
    ["@markup.strike"]              = {fg = c.gray, strikethrough = true, italic = true},
    ["@markup.strong"]              = {fg = c.gray, bold = true},
    ["@markup.underline"]           = {fg = c.gray, underline = true},
}

config.telescope =
{
    ["TelescopeSelection"] = { fg = c.fg1, bg = c.bg1 },
    ["TelescopeMatching"] = { fg = c.green },
    ["TelescopeNormal"] = { fg = c.fg1, bg = c.bg0 },
    ["TelescopeBorder"] = { fg = c.fg1, bg = c.bg0 },
    ["TelescopeTitle"]  = { fg = c.fg1, bg = c.bg0 },
    ["TelescopeResultsClass"] = config.syntax["type"],
    ["TelescopeResultsStruct"] = config.syntax["type"],
    ["TelescopeResultsFunction"] = config.syntax["function"],
    ["TelescopeResultsMethod"] = config.syntax["method"],
    ["TelescopeResultsField"] = config.syntax["variable.default"],
}

config.blink =
{
    ['BlinkCmpKindText'] =              config.syntax[""],
    ['BlinkCmpKindMethod'] =            config.syntax["method"],
    ['BlinkCmpKindFunction'] =          config.syntax["function"],
    ['BlinkCmpKindConstructor'] =       config.syntax["function"],
    ['BlinkCmpKindField'] =             config.syntax["variable.property"],
    ['BlinkCmpKindVariable'] =          config.syntax["variable.default"],
    ['BlinkCmpKindClass'] =             config.syntax["type"],
    ['BlinkCmpKindInterface'] =         config.syntax["type"],
    ['BlinkCmpKindModule'] =            config.syntax["keyword.import"],
    ['BlinkCmpKindProperty'] =          config.syntax["variable.property"],
    ['BlinkCmpKindUnit'] =              config.syntax["number"],
    ['BlinkCmpKindValue'] =             config.syntax["number"],
    ['BlinkCmpKindEnum'] =              config.syntax["enum"],
    ['BlinkCmpKindKeyword'] =           config.syntax["keyword"],
    ['BlinkCmpKindSnippet'] =           config.syntax[""],
    ['BlinkCmpKindColor'] =             config.syntax[""],
    ['BlinkCmpKindFile'] =              config.syntax[""],
    ['BlinkCmpKindReference'] =         config.syntax[""],
    ['BlinkCmpKindFolder'] =            config.syntax[""],
    ['BlinkCmpKindEnumMember'] =        config.syntax["enum.member"],
    ['BlinkCmpKindConstant'] =          config.syntax["constant"],
    ['BlinkCmpKindStruct'] =            config.syntax["type"],
    ['BlinkCmpKindEvent'] =             config.syntax[""],
    ['BlinkCmpKindOperator'] =          config.syntax["operator"],
    ['BlinkCmpKindTypeParameter'] =     config.syntax[""],

    ['BlinkCmpLabelMatch'] =            {fg = c.green }, -- green matches
    ['BlinkCmpLabel'] =                 {fg = c.text0 }, --all text
    ['BlinkCmpMenuBorder'] =                 {fg = c.fg1}, --border
    --['BlinkCmpMenuSelection'] =                 {fg = c.bg0, bg = c.fg0}, -- hovered text
    ['BlinkCmpScrollBarThumb'] =                 {bg = c.text1}, -- hovered text



}

local syntax_translation = -- translating semantics to lsp/treesitter
{
    ["variable.default"]        = { "@lsp.type.variable", "@variable" },
    ["variable.parameter"]      = { "@lsp.type.parameter", "@variable.parameter" },
    ["variable.property"]       = { "@lsp.type.property", "@property" },
    ["constant"]                = { "@lsp.typemod.variable.static", "@constant" },
    ["constant.builtin"]        = { "@lsp.type.builtinConstant","@constant.builtin" },
    ["variable.builtin"]        = { "@variable.builtin" },
    ["variable.defaultLib"]     = { "@lsp.typemod.variable.defaultLibrary" },
    ["keyword"]                 = { "@lsp.type.keyword", "@keyword", "@tag.html"}, -- while, if, else, return, continue
    ["keyword.modifier"]        = { "@keyword.modifier" },  -- inline, const, public,
    ["keyword.import"]          = { "@keyword.import" },    -- #include
    ["type"]                    = { "@lsp.type.class", "@lsp.type.struct", "@lsp.type.type", "@type", "Struct", "Class" , "Type", "@tag.attribute.html", "@property.class.css"}, -- classes, structs
    ["type.builtin"]            = { "@lsp.type.builtin", "@type.builtin" }, -- int float char
    ["numbers"]                 = { "@lsp.type.number", "@number", "Constant", "@string.css"}, -- Numbers like 1.0 or 0x11223344 or css codes like cm, mm
    ["namespace"]               = { "@lsp.type.namespace", "@module"},      -- std::, UI::
    ["enum"]                    = { "@lsp.type.enum" },                     -- enum
    ["enum.member"]             = { "@lsp.type.enumMember" },               -- enum members
    ["function"]                = { "@lsp.type.function", "@function","@function.call" , "@constructor", "Function" }, -- all basic functions
    ["function.defaultLib"]     = { "@lsp.typemod.function.defaultLibrary" },                              -- printf, len, tolower,
    ["function.builtin"]        = { "@function.builtin" },                                                 -- static_assert
    ["methods"]                 = { "@lsp.type.method", "@method", "@method.call", "@function.method", "@function.method.call"}, -- vector.Length()
    ["macro"]                   = { "@lsp.type.macro", "@function.macro", "@constant.macro" },                              -- all macro types
    ["operator"]                = { "@lsp.type.operator" , "@operator"},
    ["string"]                  = { "@string", "@character" , "String"},
    ["string.escape"]           = { "@string.escape" },
    ["string.special"]          = { "@string.special","@character.special"},
    ["comment"]                 = { "@lsp.type.comment", "@comment"},
    ["brackets"]                = { "Delimiter", "@tag.delimiter.html"} --
    -- markdown
}

local set = function(name, opts) vim.api.nvim_set_hl(0, name, opts) end
local M = {}

function M.Load()
    vim.cmd("highlight clear")
    vim.cmd("syntax reset")
    vim.o.background = "dark"
    vim.g.colors_name = "one-gruv"
    -- programming syntax
    for key, value in pairs(syntax_translation) do
        for _,v in pairs(value) do
            set(v, config.syntax[key])
        end
    end

    -- markdown syntax
    for k, v in pairs(config.markup) do set(k, v) end

    for k, v in pairs(config.telescope) do set(k, v) end

    for k, v in pairs(config.core) do set(k, v) end

    set("Normal", {fg = c.fg0, bg = c.bg0})

    for k, v in pairs(config.blink) do set(k, v) end

end




return M
