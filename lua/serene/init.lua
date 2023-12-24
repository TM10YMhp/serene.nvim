local M = {}

function M.set_groups()
  local groups = {
    Normal           = {},
    NormalFloat      = { link    = "Normal" },
    NonText          = {},
    Conceal          = {},
    Comment          = { ctermfg = "gray", fg = "gray" },
    TabLine          = { link    = "Comment" },
    TabLineSel       = {},
    TabLineFill      = { link    = "Comment" },
    Constant         = {},
    Identifier       = {},
    Statement        = {},
    PreProc          = {},
    Type             = {},
    Special          = {},
    Underlined       = {},
    Ignore           = {},
    Todo             = { link    = "Comment" },
    WildMenu         = {},
    StatusLine       = {},
    StatusLineNC     = { link    = "Comment" },
    StatusLineTerm   = { link    = "StatusLine" },
    StatusLineTermNC = { link    = "StatusLineNC" },
    Search           = { link    = "Pmenu" },
    CurSearch        = { ctermbg = "white", ctermfg = "black", bg = "white", fg = "black" },
    IncSearch        = { link    = "CurSearch" },
    LineNr           = {},
    CursorLineNr     = { link    = "Comment" },
    CursorLine       = { link    = "Comment" },
    FoldColumn       = { link    = "LineNr" },
    Folded           = { link    = "Comment" },
    Visual           = { reverse = true },
    VisualNOS        = { link    = "Visual" },
    Pmenu            = { ctermbg = "gray", ctermfg  = "black", bg = "gray", fg = "black" },
    PmenuSel         = { ctermbg = "black", ctermfg = "white", bg = "black", fg = "white" },
    PmenuSbar        = {},
    PmenuThumb       = { link    = "Pmenu" },
    ColorColumn      = { link    = "Pmenu" },
    CursorColumn     = { link    = "Pmenu" },
    SignColumn       = {},
    MatchParen       = { reverse = true },
    Title            = {},
    WinBar           = {},
    Directory        = {},
    SpecialKey       = {},
    -- Diff
    DiffDelete  = { ctermfg = "red", fg = "red" },
    DiffAdd     = { ctermfg = "green", fg = "green" },
    DiffChange  = { ctermfg = "yellow", fg = "yellow" },
    DiffText    = { ctermfg = "darkyellow", fg = "darkyellow" },
    diffAdded   = { link    = "DiffAdd" },
    diffRemoved = { link    = "DiffDelete" },
    -- Telescope
    TelescopeMatching  = { link = "Pmenu" },
    TelescopeSelection = { link = "CursorLine" },
    -- GitSigns
    GitSignsAddPreview    = { link    = "DiffAdd" },
    GitSignsDeletePreview = { link    = "DiffDelete" },
    GitSignsAddInline     = { reverse = true },
    GitSignsDeleteInline  = { reverse = true },
    -- LspSignature
    LspSignatureActiveParameter = { link = "Comment" },
    -- Notify
    NotifyLogTitle    = { link = "Comment" },
    NotifyLogTime     = { link = "Comment" },

    NotifyERRORIcon   = { link = "DiffDelete" },
    NotifyWARNIcon    = { link = "DiffText" },
    NotifyINFOIcon    = { link = "Comment" },
    NotifyDEBUGIcon   = { link = "Comment" },
    NotifyTRACEIcon   = { link = "Comment" },

    NotifyERRORTitle  = { link = "DiffDelete" },
    NotifyWARNTitle   = { link = "DiffText" },
    NotifyINFOTitle   = { link = "Comment" },
    NotifyDEBUGTitle  = { link = "Comment" },
    NotifyTRACETitle  = { link = "Comment" },

    NotifyERRORBorder = { link = "DiffDelete" },
    NotifyWARNBorder  = { link = "DiffText" },
    NotifyINFOBorder  = { link = "Comment" },
    NotifyDEBUGBorder = { link = "Comment" },
    NotifyTRACEBorder = { link = "Comment" },
    -- Mini
    MiniTrailspace = { link = "Pmenu" },

    MiniJump = { link = "Comment" },

    MiniTablineVisible = { link = "Comment" },

    MiniCompletionActiveParameter = { link = "Comment" },

    MiniJump2dSpot      = { link = "Comment" },
    MiniJump2dSpotAhead = { link = "Comment" },

    MiniTablineModifiedCurrent = { link = "Visual" },
    MiniTablineModifiedVisible = { link = "Visual" },
    MiniTablineModifiedHidden  = { link = "Pmenu" },
    -- Diagnostics
    DiagnosticError = { fg = "white" },
    DiagnosticWarn  = { fg = "white" },
    DiagnosticInfo  = { fg = "white" },
    DiagnosticHint  = { fg = "white" },
    DiagnosticOk    = {},
    -- GitGutter
    GitGutterAdd    = { fg = "white" },
    GitGutterChange = { fg = "white" },
    GitGutterDelete = { fg = "white" },
    -- NvimUfo
    UfoFoldedFg = { ctermfg = "white", fg = "white" },
    UfoFoldedBg = { link = "Folded" },
    -- NvimTree
    NvimTreeWindowPicker = { link = "Pmenu" },
    -- NvimWindowPicker
    WindowPickerStatusLine   = { link = "PmenuSel" },
    WindowPickerStatusLineNC = { link = "Pmenu" },
    WindowPickerWinBar       = { link = "PmenuSel" },
    WindowPickerWinBarNC     = { link = "Pmenu" },
  }

  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

M.options = {}

local defaults = {
  termguicolors = true,
}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", defaults, opts or {})
end

function M.load()
  local next = next
  local config = next(M.options) == nil and defaults or M.options

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = config.termguicolors
  vim.g.colors_name = "serene"

  M.set_groups()
end

return M
