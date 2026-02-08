local M = {}
local colors = require("deep-purple.palette")

M.setup = function()
    return {
        -- Editor
        Normal = { fg = colors.fg, bg = colors.bg },
        NormalFloat = { fg = colors.fg, bg = colors.bg },
        FloatBorder = { fg = colors.green_dim, bg = colors.bg },

        -- Cursor
        Cursor = { fg = colors.bg, bg = colors.cursor },
        CursorLine = { bg = colors.green_subtle },
        CursorColumn = { bg = colors.green_subtle },

        -- Selection
        Visual = { bg = colors.selection, fg = colors.fg },
        VisualNOS = { bg = colors.selection, fg = colors.fg },

        -- Search
        Search = { fg = colors.bg, bg = colors.green_bright },
        IncSearch = { fg = colors.bg, bg = colors.cursor },

        -- Line numbers
        LineNr = { fg = colors.green_dim },
        LineNrAbove = { fg = colors.green_dim },
        LineNrBelow = { fg = colors.green_dim },
        CursorLineNr = { fg = colors.cursor, bold = true },

        -- Signs
        SignColumn = { fg = colors.green_dim, bg = colors.bg },
        FoldColumn = { fg = colors.green_dim, bg = colors.bg },
        Folded = { fg = colors.green_dim, bg = colors.green_subtle },

        -- Statusline (minimal - no full statusline support)
        StatusLine = { fg = colors.fg, bg = colors.green_subtle },
        StatusLineNC = { fg = colors.green_dim, bg = colors.green_subtle },

        -- Tabline
        TabLine = { fg = colors.green_dim, bg = colors.green_subtle },
        TabLineFill = { bg = colors.green_subtle },
        TabLineSel = { fg = colors.cursor, bg = colors.bg },

        -- Messages
        ModeMsg = { fg = colors.cursor, bold = true },
        MoreMsg = { fg = colors.cursor },
        WarningMsg = { fg = colors.warning },
        ErrorMsg = { fg = colors.error },

        -- Completion
        Pmenu = { fg = colors.fg, bg = colors.green_subtle },
        PmenuSel = { fg = colors.bg, bg = colors.cursor },
        PmenuSbar = { bg = colors.green_dark },
        PmenuThumb = { bg = colors.green_dim },

        -- Diffs
        DiffAdd = { fg = colors.green_bright, bg = colors.green_dark },
        DiffDelete = { fg = colors.error, bg = colors.bg },
        DiffChange = { fg = colors.green_mid, bg = colors.green_subtle },
        DiffText = { fg = colors.cursor, bg = colors.green_dark },

        -- Spelling
        SpellBad = { fg = colors.error, undercurl = true },
        SpellCap = { fg = colors.warning, undercurl = true },
        SpellLocal = { fg = colors.info, undercurl = true },
        SpellRare = { fg = colors.hint, undercurl = true },

        -- Syntax groups
        Comment = { fg = colors.comment, italic = true },
        String = { fg = colors.string },
        Character = { fg = colors.string },
        Number = { fg = colors.constant },
        Float = { fg = colors.constant },
        Boolean = { fg = colors.constant },
        Identifier = { fg = colors.variable },
        Function = { fg = colors.function_name },
        Statement = { fg = colors.keyword },
        Keyword = { fg = colors.keyword },
        Conditional = { fg = colors.keyword },
        Repeat = { fg = colors.keyword },
        Label = { fg = colors.keyword },
        Operator = { fg = colors.operator },
        Exception = { fg = colors.error },
        PreProc = { fg = colors.keyword },
        Include = { fg = colors.keyword },
        Define = { fg = colors.keyword },
        Macro = { fg = colors.keyword },
        Type = { fg = colors.green_mid },
        StorageClass = { fg = colors.keyword },
        Structure = { fg = colors.green_mid },
        Typedef = { fg = colors.green_mid },
        Special = { fg = colors.cursor },
        SpecialChar = { fg = colors.cursor },
        Tag = { fg = colors.keyword },
        Delimiter = { fg = colors.operator },

        -- Treesitter
        ["@attribute"] = { fg = colors.green_bright },
        ["@boolean"] = { fg = colors.constant },
        ["@character"] = { fg = colors.string },
        ["@comment"] = { fg = colors.comment, italic = true },
        ["@comment.documentation"] = { fg = colors.comment, italic = true },
        ["@constant"] = { fg = colors.constant },
        ["@constant.builtin"] = { fg = colors.constant },
        ["@constant.macro"] = { fg = colors.constant },
        ["@constructor"] = { fg = colors.function_name },
        ["@error"] = { fg = colors.error },
        ["@exception"] = { fg = colors.error },
        ["@field"] = { fg = colors.variable },
        ["@float"] = { fg = colors.constant },
        ["@function"] = { fg = colors.function_name },
        ["@function.builtin"] = { fg = colors.function_name },
        ["@function.call"] = { fg = colors.function_name },
        ["@function.macro"] = { fg = colors.function_name },
        ["@include"] = { fg = colors.keyword },
        ["@keyword"] = { fg = colors.keyword },
        ["@keyword.conditional"] = { fg = colors.keyword },
        ["@keyword.coroutine"] = { fg = colors.keyword },
        ["@keyword.debug"] = { fg = colors.keyword },
        ["@keyword.directive"] = { fg = colors.keyword },
        ["@keyword.exception"] = { fg = colors.error },
        ["@keyword.function"] = { fg = colors.keyword },
        ["@keyword.import"] = { fg = colors.keyword, bold = true, italic = true },
        ["@keyword.operator"] = { fg = colors.keyword },
        ["@keyword.repeat"] = { fg = colors.keyword },
        ["@keyword.return"] = { fg = colors.keyword },
        ["@keyword.storage"] = { fg = colors.keyword },
        ["@label"] = { fg = colors.keyword },
        ["@markup"] = { fg = colors.fg },
        ["@markup.emphasis"] = { italic = true },
        ["@markup.environment"] = { fg = colors.keyword },
        ["@markup.environment.name"] = { fg = colors.keyword },
        ["@markup.heading"] = { fg = colors.cursor, bold = true },
        ["@markup.link"] = { fg = colors.green_mid, underline = true },
        ["@markup.link.label"] = { fg = colors.green_mid },
        ["@markup.link.url"] = { fg = colors.green_mid, underline = true },
        ["@markup.list"] = { fg = colors.operator },
        ["@markup.list.checked"] = { fg = colors.green_bright },
        ["@markup.list.unchecked"] = { fg = colors.operator },
        ["@markup.quote"] = { fg = colors.comment },
        ["@markup.raw"] = { fg = colors.string },
        ["@markup.raw.block"] = { fg = colors.string },
        ["@markup.strikethrough"] = { strikethrough = true },
        ["@markup.strong"] = { bold = true },
        ["@markup.underline"] = { underline = true },
        ["@module"] = { fg = colors.variable },
        ["@module.builtin"] = { fg = colors.constant },
        ["@namespace"] = { fg = colors.variable },
        ["@number"] = { fg = colors.constant },
        ["@operator"] = { fg = colors.operator },
        ["@parameter"] = { fg = colors.variable },
        ["@parameter.builtin"] = { fg = colors.variable },
        ["@parameter.reference"] = { fg = colors.variable },
        ["@property"] = { fg = colors.variable },
        ["@punctuation.bracket"] = { fg = colors.operator },
        ["@punctuation.delimiter"] = { fg = colors.operator },
        ["@punctuation.special"] = { fg = colors.operator },
        ["@string"] = { fg = colors.string },
        ["@string.documentation"] = { fg = colors.comment },
        ["@string.escape"] = { fg = colors.green_bright },
        ["@string.regex"] = { fg = colors.string },
        ["@symbol"] = { fg = colors.constant },
        ["@tag"] = { fg = colors.keyword },
        ["@tag.attribute"] = { fg = colors.variable },
        ["@tag.builtin"] = { fg = colors.keyword },
        ["@tag.delimiter"] = { fg = colors.operator },
        ["@text"] = { fg = colors.fg },
        ["@text.danger"] = { fg = colors.error },
        ["@text.diff.add"] = { fg = colors.green_bright },
        ["@text.diff.delete"] = { fg = colors.error },
        ["@text.note"] = { fg = colors.info },
        ["@text.reference"] = { fg = colors.green_mid },
        ["@text.title"] = { fg = colors.cursor, bold = true },
        ["@text.todo"] = { fg = colors.cursor, bold = true },
        ["@text.underline"] = { underline = true },
        ["@text.warning"] = { fg = colors.warning },
        ["@type"] = { fg = colors.green_mid },
        ["@type.builtin"] = { fg = colors.green_mid },
        ["@type.definition"] = { fg = colors.green_mid },
        ["@type.qualifier"] = { fg = colors.keyword },
        ["@variable"] = { fg = colors.variable },
        ["@variable.builtin"] = { fg = colors.constant },
        ["@variable.member"] = { fg = colors.variable },
        ["@variable.parameter"] = { fg = colors.variable },
        ["@variable.parameter.builtin"] = { fg = colors.variable },

        -- Oil groups
        OilDir = { fg = colors.dir_highlight, bold = true },
        OilDirIcon = { fg = colors.dir_highlight },
        OilFile = { fg = colors.file_highlight },
        OilFileIcon = { fg = colors.file_highlight },
        OilSize = { fg = colors.green_dim },
        OilTime = { fg = colors.green_dim },
        OilPermRead = { fg = colors.green_bright },
        OilPermWrite = { fg = colors.cursor },
        OilPermExe = { fg = colors.cursor },
        OilCopy = { fg = colors.cursor },
        OilMove = { fg = colors.warning },
        OilChange = { fg = colors.warning },
        OilCreate = { fg = colors.green_bright },
        OilDelete = { fg = colors.error },
        OilRename = { fg = colors.warning },
        OilTrash = { fg = colors.error },

        -- Lazy
        LazyH1 = { fg = colors.cursor, bold = true },
        LazyButton = { fg = colors.fg, bg = colors.green_subtle },
        LazyButtonActive = { fg = colors.bg, bg = colors.cursor },

        -- Telescope
        TelescopeNormal = { fg = colors.fg, bg = colors.bg },
        TelescopeBorder = { fg = colors.green_dim, bg = colors.bg },
        TelescopeSelection = { fg = colors.bg, bg = colors.cursor },
        TelescopeMultiSelection = { fg = colors.bg, bg = colors.green_dim },
        TelescopeMatching = { fg = colors.cursor, bold = true },

        -- Netrw (file browser)
        Directory = { fg = colors.dir_highlight, bold = true },
        ExeFile = { fg = colors.cursor },

        -- LSP diagnostics
        DiagnosticError = { fg = colors.error },
        DiagnosticWarn = { fg = colors.warning },
        DiagnosticInfo = { fg = colors.info },
        DiagnosticHint = { fg = colors.hint },
        DiagnosticOk = { fg = colors.hint },

        -- LSP diagnostic underlines
        DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
        DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
        DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
        DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },
        DiagnosticUnderlineOk = { undercurl = true, sp = colors.hint },

        -- LSP diagnostic virtual text
        DiagnosticVirtualTextError = { fg = colors.error },
        DiagnosticVirtualTextWarn = { fg = colors.warning },
        DiagnosticVirtualTextInfo = { fg = colors.info },
        DiagnosticVirtualTextHint = { fg = colors.hint },
        DiagnosticVirtualTextOk = { fg = colors.hint },

        -- LSP diagnostic signs
        DiagnosticSignError = { fg = colors.error },
        DiagnosticSignWarn = { fg = colors.warning },
        DiagnosticSignInfo = { fg = colors.info },
        DiagnosticSignHint = { fg = colors.hint },
        DiagnosticSignOk = { fg = colors.hint },

        -- LSP hover and floating windows
        LspInfoBorder = { fg = colors.green_dim, bg = colors.bg },
        LspSignatureActiveParameter = { bg = colors.green_subtle, bold = true },
        LspCodeLens = { fg = colors.comment },
        LspCodeLensSign = { fg = colors.comment },
        LspCodeLensSeparator = { fg = colors.green_dim },

        -- LSP references
        LspReferenceText = { bg = colors.green_subtle },
        LspReferenceRead = { bg = colors.green_subtle },
        LspReferenceWrite = { bg = colors.green_subtle },

        -- LSP inlay hints
        LspInlayHint = { fg = colors.green_dim, italic = true },

        -- LSP semantic tokens (fallback)
        ["@lsp.type.class"] = { fg = colors.green_mid },
        ["@lsp.type.comment"] = { fg = colors.comment },
        ["@lsp.type.decorator"] = { fg = colors.keyword },
        ["@lsp.type.enum"] = { fg = colors.green_mid },
        ["@lsp.type.enumMember"] = { fg = colors.constant },
        ["@lsp.type.event"] = { fg = colors.keyword },
        ["@lsp.type.function"] = { fg = colors.function_name },
        ["@lsp.type.interface"] = { fg = colors.green_mid },
        ["@lsp.type.keyword"] = { fg = colors.keyword },
        ["@lsp.type.macro"] = { fg = colors.keyword },
        ["@lsp.type.method"] = { fg = colors.function_name },
        ["@lsp.type.modifier"] = { fg = colors.keyword },
        ["@lsp.type.namespace"] = { fg = colors.variable },
        ["@lsp.type.number"] = { fg = colors.constant },
        ["@lsp.type.operator"] = { fg = colors.operator },
        ["@lsp.type.parameter"] = { fg = colors.variable },
        ["@lsp.type.property"] = { fg = colors.variable },
        ["@lsp.type.regexp"] = { fg = colors.string },
        ["@lsp.type.string"] = { fg = colors.string },
        ["@lsp.type.struct"] = { fg = colors.green_mid },
        ["@lsp.type.structMember"] = { fg = colors.variable },
        ["@lsp.type.typeParameter"] = { fg = colors.green_mid },
        ["@lsp.type.type"] = { fg = colors.green_mid },
        ["@lsp.type.variable"] = { fg = colors.variable },
    }
end

return M
