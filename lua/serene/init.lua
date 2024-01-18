local M = {}

function M.set_groups()
  local groups = {
    Normal           = {},
    NormalFloat      = { link    = "Normal" },
    NonText          = { ctermfg = "darkgray", fg = "gray" },
    Conceal          = {},
    Comment          = { ctermfg = "gray", fg = "darkgray" },
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
    CursorLine       = { ctermbg = 234, bg = "#1c1c1c" },
    CursorLineFold   = {},
    CursorLineSign   = {},
    CursorLineNr     = { link = "CursorLine" },
    CursorColumn     = { link = "CursorLine" },
    FoldColumn       = { link    = "LineNr" },
    Folded           = { link    = "NonText" },
    Visual           = { reverse = true },
    VisualNOS        = { link    = "Visual" },
    Pmenu            = { ctermbg = "gray", ctermfg  = "black", bg = "darkgray", fg = "black" },
    PmenuSel         = { ctermbg = "black", ctermfg = "white", bg = "black", fg = "white" },
    PmenuSbar        = {},
    PmenuThumb       = { link    = "Pmenu" },
    ColorColumn      = { link    = "Pmenu" },
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
    TelescopeMatching      = { link = "Pmenu" },
    TelescopeSelection     = { link = "CursorLine" },
    TelescopeCounter       = { link = "Normal" },
    TelescopePromptCounter = { link = "Normal" },
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
    DiagnosticError = { ctermfg = "white", fg = "white" },
    DiagnosticWarn  = { ctermfg = "white", fg = "white" },
    DiagnosticInfo  = { ctermfg = "white", fg = "white" },
    DiagnosticHint  = { ctermfg = "white", fg = "white" },
    DiagnosticOk    = {},

    -- GitGutter
    GitSignsAdd    = { ctermfg = "white", fg = "white" },
    GitSignsChange = { ctermfg = "white", fg = "white" },
    GitSignsDelete = { ctermfg = "white", fg = "white" },

    -- NvimUfo
    UfoFoldedFg          = { ctermfg = "white", fg = "white" },
    UfoFoldedBg          = { link    = "Folded" },
    UfoFoldedEllipsis    = { link    = "Folded" },
    UfoPreviewCursorLine = { link    = "CursorLine" },

    -- NvimTree
    NvimTreeWindowPicker = { link = "Pmenu" },
    -- NvimWindowPicker
    WindowPickerStatusLine   = { link = "PmenuSel" },
    WindowPickerStatusLineNC = { link = "Pmenu" },
    WindowPickerWinBar       = { link = "PmenuSel" },
    WindowPickerWinBarNC     = { link = "Pmenu" },

    -- flog
    flogHash          = { ctermfg = "darkyellow", fg = "darkyellow" },
    flogDate          = { ctermfg = "darkcyan", fg = "darkcyan" },
    flogAuthor        = { ctermfg = "darkgreen", fg = "darkgreen" },
    flogRef           = { ctermfg = "red", fg = "red" },
    flogRefHead       = { ctermfg = "cyan", fg = "cyan" },
    flogRefHeadArrow  = { ctermfg = "cyan", fg = "cyan" },
    flogRefHeadBranch = { ctermfg = "green", fg = "green" },

    -- git
    gitKeyword = { ctermfg = "darkyellow" },
    gitHash = { ctermfg = "darkyellow" },

    -- bufferline
    BufferLineBackground   = { link = "Comment" },
    BufferLineTab          = { link = "Comment" },
    BufferLineTabSeparator = { link = "Comment" },
    BufferLineTabSelected  = {},

    BufferLineBuffer            = { link = "Comment" },
    BufferLineDuplicate         = { link = "Comment" },
    BufferLineModified          = { link = "Comment" },
    BufferLineErrorDiagnostic   = { link = "Comment" },
    BufferLineError             = { link = "Comment" },
    BufferLineHintDiagnostic    = { link = "Comment" },
    BufferLineHint              = { link = "Comment" },
    BufferLineInfoDiagnostic    = { link = "Comment" },
    BufferLineInfo              = { link = "Comment" },
    BufferLineWarningDiagnostic = { link = "Comment" },
    BufferLineWarning           = { link = "Comment" },

    BufferLineBufferVisible            = { link = "Comment" },
    BufferLineDuplicateVisible         = { link = "Comment" },
    BufferLineModifiedVisible          = { link = "Comment" },
    BufferLineErrorDiagnosticVisible   = { link = "Comment" },
    BufferLineErrorVisible             = { link = "Comment" },
    BufferLineHintDiagnosticVisible    = { link = "Comment" },
    BufferLineHintVisible              = { link = "Comment" },
    BufferLineInfoDiagnosticVisible    = { link = "Comment" },
    BufferLineInfoVisible              = { link = "Comment" },
    BufferLineWarningDiagnosticVisible = { link = "Comment" },
    BufferLineWarningVisible           = { link = "Comment" },

    -- mason
    MasonMutedBlock         = { link    = "Comment" },
    MasonHighlightBlockBold = { reverse = true },

    -- neo-tree
    NeoTreeCursorLine           = { link = "CursorLine" },
    NeoTreeTabInactive          = { link = "Comment" },
    NeoTreeTabSeparatorActive   = { link = "Comment" },
    NeoTreeTabSeparatorInactive = { link = "Comment" },
  }

  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

M.options = {}

local defaults = {
  termguicolors = true,
}

function M.autocmds()
  local group = vim.api.nvim_create_augroup("serene", { clear = true })

  vim.api.nvim_create_autocmd("ColorScheme", {
    group = group,
    callback = function()
      if vim.g.colors_name == "serene" then return end

      vim.api.nvim_set_hl(0, "TelescopeMatching", { link = "Special" })
      vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "Visual" })
      vim.api.nvim_set_hl(0, "TelescopeCounter", { link = "NonText" })
      vim.api.nvim_set_hl(0, "TelescopePromptCounter", { link = "NonText" })

      -- vim.api.nvim_del_augroup_by_id(group)
    end
  })
end

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
  M.autocmds()
end

return M
