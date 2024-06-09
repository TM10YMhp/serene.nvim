local M = {}

local c = {
  red = 1,
  green = 2,
  gray = 250,
  darkgray = 242,
  cyan = 14, -- 42?
  darkyellow = 214,
  cursor = 234,
}

function M.set_groups()
  -- stylua: ignore
  local groups = {
    Normal           = {},
    NormalFloat      = { link    = "Normal" },
    NonText          = { ctermfg = c.darkgray },
    Comment          = { ctermfg = c.gray },
    Conceal          = {},
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
    Search           = { ctermfg = c.darkyellow, reverse = true },
    CurSearch        = { link    = "IncSearch" },
    IncSearch        = { link    = "Visual" },
    LineNr           = {},
    CursorLine       = { ctermbg = c.cursor },
    CursorLineFold   = {},
    CursorLineSign   = {},
    CursorLineNr     = { link    = "CursorLine" },
    CursorColumn     = { link    = "CursorLine" },
    FoldColumn       = { link    = "LineNr" },
    Folded           = {},
    Visual           = { reverse = true },
    VisualNOS        = { link    = "Visual" },
    ColorColumn      = { ctermbg = c.darkgray },
    SignColumn       = {},
    MatchParen       = { reverse = true },
    Title            = {},
    WinBar           = {},
    WinBarNC         = {},
    Directory        = {},
    SpecialKey       = {},

    Error            = { ctermfg = c.red },
    ErrorMsg         = { ctermfg = c.red },
    WarningMsg       = { ctermfg = c.darkyellow },

    Pmenu            = { ctermbg = c.cursor },
    PmenuThumb       = { ctermbg = c.darkgray },
    PmenuSel         = { link    = "Visual" },
    PmenuSbar        = { link    = "Pmenu" },

    QuickFixLine     = { link = "CursorLine" },
    ModeMsg          = {},
    MoreMsg          = { ctermfg = c.cyan },
    Question         = { link    = "MoreMsg" },

    -- LSP
    LspSignatureActiveParameter = { link = "Comment" },

    DiagnosticError = {},
    DiagnosticWarn  = {},
    DiagnosticInfo  = {},
    DiagnosticHint  = {},
    DiagnosticOk    = {},

    -- NvimUfo
    UfoFoldedFg          = {},
    UfoFoldedEllipsis    = { link = "NonText" },
    UfoPreviewCursorLine = { link = "CursorLine" },
    UfoPreviewWinBar     = { link = "CursorLine"},

    -- cmp
    CmpItemKind = { link = "Comment" },
    CmpItemMenu = { link = "Comment" },

    -- Diff
    DiffDelete = { ctermfg = c.red },
    DiffAdd    = { ctermfg = c.green },
    DiffChange = { ctermfg = c.cyan },
    DiffText   = { ctermfg = c.darkyellow },
    Added      = { link    = "DiffAdd" },
    Removed    = { link    = "DiffDelete" },
    Changed    = { link    = "DiffChange" },

    -- Git Messenger
    diffAdded   = { link = "DiffAdd" },
    diffRemoved = { link = "DiffDelete" },

    -- GitSigns
    GitSignsAddPreview    = { link = "DiffAdd" },
    GitSignsDeletePreview = { link = "DiffDelete" },
    GitSignsAddInline     = { link = "DiffText" },
    GitSignsDeleteInline  = { link = "DiffChange" },

    GitSignsAdd    = {},
    GitSignsChange = {},
    GitSignsDelete = {},

    -- DiffView
    DiffviewFilePanelTitle      = { link = "Ignore" },
    DiffviewFilePanelCounter    = { link = "Ignore" },
    DiffviewFilePanelRootPath   = { link = "Ignore" },
    DiffviewFilePanelSelected   = { underline = true },
    DiffviewFilePanelInsertions = { ctermfg = c.green },
    DiffviewFilePanelDeletions  = { ctermfg = c.red },
    DiffviewHash                = { ctermfg = "darkyellow" },
    DiffviewReference           = { ctermfg = "cyan" },

    -- Mini
    MiniJump       = { ctermfg = c.cyan },
    MiniJump2dSpot = { ctermfg = c.cyan, reverse = true },
    MiniTrailspace = { ctermbg = c.red },
    MiniCompletionActiveParameter = { link = "Comment" },

    -- eyeliner
    EyelinerPrimary   = { ctermfg = c.darkyellow },
    EyelinerSecondary = { ctermfg = c.cyan },

    -- NOTE: same colors of terminal
    -- flog
    flogRef           = { ctermfg = c.cyan },

    flogRefHead       = { ctermfg = "cyan" },
    flogRefHeadArrow  = { ctermfg = "cyan" },
    flogRefHeadBranch = { ctermfg = "green" },
    flogHash          = { ctermfg = "darkyellow" },
    flogDate          = { ctermfg = "darkcyan" },
    flogAuthor        = { ctermfg = "darkgreen" },

    -- vim-fugitive
    gitKeyword = { ctermfg = "darkyellow" },
    gitHash    = { ctermfg = "darkyellow" },

    -- Telescope
    TelescopeMatching      = { link = "Comment" },
    TelescopeSelection     = { link = "CursorLine" },
    TelescopeCounter       = { link = "Normal" },
    TelescopePromptCounter = { link = "Normal" },

    -- mason
    MasonMutedBlock         = { link    = "Comment" },
    MasonHighlightBlockBold = { reverse = true },

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

    -- NvimTree
    NvimTreeWindowPicker = { link = "PmenuThumb" },

    -- NvimWindowPicker
    WindowPickerStatusLine   = { link = "PmenuSel" },
    WindowPickerStatusLineNC = { link = "PmenuThumb" },
    WindowPickerWinBar       = { link = "PmenuSel" },
    WindowPickerWinBarNC     = { link = "PmenuThumb" },

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

    BufferLineBufferVisible            = {},
    BufferLineDuplicateVisible         = {},
    BufferLineModifiedVisible          = {},
    BufferLineErrorDiagnosticVisible   = {},
    BufferLineErrorVisible             = {},
    BufferLineHintDiagnosticVisible    = {},
    BufferLineHintVisible              = {},
    BufferLineInfoDiagnosticVisible    = {},
    BufferLineInfoVisible              = {},
    BufferLineWarningDiagnosticVisible = {},
    BufferLineWarningVisible           = {},

    -- neo-tree
    NeoTreeCursorLine           = { link = "CursorLine" },
    NeoTreeTabInactive          = { link = "Comment" },
    NeoTreeTabSeparatorActive   = { link = "Comment" },
    NeoTreeTabSeparatorInactive = { link = "Comment" },

    -- nvim 0.10
    String        = {},
    Function      = {},
    Delimiter     = {},
    Operator      = {},
    ["@variable"] = {},
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
      if vim.g.colors_name == "serene" then
        return
      end

      vim.api.nvim_set_hl(0, "TelescopeMatching", { link = "Special" })
      vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "Visual" })
      vim.api.nvim_set_hl(0, "TelescopeCounter", { link = "NonText" })
      vim.api.nvim_set_hl(0, "TelescopePromptCounter", { link = "NonText" })

      -- vim.api.nvim_del_augroup_by_id(group)
    end,
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
