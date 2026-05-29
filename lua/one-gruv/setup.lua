

-- =========================================================
-- 10. UNIFIED LSP + TREESITTER MAPPING (IMPORTANT REFRACTOR)
-- Everything maps into config.syntax ONLY
-- =========================================================
local syntax_translation =
{
    variable       = { "@variable", "@lsp.type.variable" },
    parameter      = { "@variable.parameter", "@lsp.type.parameter" },
    property       = { "@property", "@lsp.type.property" },
    field          = { "@field" },

    builtin        = { "@variable.builtin" },
    constant       = { "@constant", "@lsp.typemod.variable.constant" },

    number         = { "@number", "@lsp.type.number" },
    boolean        = { "@boolean" },

    string         = { "@string" },
    character      = { "@character" },

    string_escape  = { "@string.escape" },
    string_special = { "@string.special" },

    func       = { "@function", "@lsp.type.function" },
    method         = { "@method", "@lsp.type.method" },
    constructor    = { "@constructor" },

    type           = { "@type", "@lsp.type.type" },
    type_builtin   = { "@type.builtin" },

    namespace      = { "@namespace", "@lsp.type.namespace" },
    module         = { "@module" },

    keyword        = { "@keyword", "@lsp.type.keyword" },
    keyword_import = { "@keyword.import" },
    keyword_mod    = { "@keyword.modifier" },

    operator       = { "@operator" },
    comment        = { "@comment" },

    macro          = { "@macro" },

    enum           = { "@lsp.type.enum" },
    enum_member    = { "@lsp.type.enumMember" },

    tag            = { "@tag" },
    attribute      = { "@attribute" },

    label          = { "@label" },
    preproc        = { "@preproc" },

    punctuation    = { "@punctuation" },
}

-- =========================================================
-- 11. APPLY FUNCTION
-- =========================================================
local set = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
end

local M = {}

function M.Load(config)
    vim.cmd("highlight clear")
    vim.cmd("syntax reset")
    vim.o.background = "dark"
    vim.g.colors_name = "one-gruv"

    -- semantic mapping (LSP + TS unified)
    for key, groups in pairs(syntax_translation) do
        for _, group in ipairs(groups) do
            set(group, config.syntax[key])
        end
    end

    -- UI layers
    for _, config_setting in pairs(config) do
        for k, v in pairs(config_setting) do set(k, v) end
    end

    -- for k, v in pairs(config.core) do set(k, v) end
    -- for k, v in pairs(config.diff or {}) do set(k, v) end
    -- for k, v in pairs(config.diagnostics or {}) do set(k, v) end
    -- for k, v in pairs(config.lsp or {}) do set(k, v) end
    -- for k, v in pairs(config.git or {}) do set(k, v) end
    -- for k, v in pairs(config.telescope or {}) do set(k, v) end
    -- for k, v in pairs(config.blink or {}) do set(k, v) end
    -- for k, v in pairs(config.markup or {}) do set(k, v) end

end

return M
