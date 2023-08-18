local M = {}

function M.set_groups()
  local groups = {
    Normal = {},
    NormalFloat = { link = "Normal" },
    NonText = {},
    Conceal = {},
    Comment = { ctermfg = "gray" },
    TabLine = { link = "Comment" },
    TabLineSel = {},
    TabLineFill = { link = "Comment" },
    Constant = {},
    Identifier = {},
    Statement = {},
    PreProc = {},
    Type = {},
    Special = {},
    Underlined = {},
    Ignore = {},
    Todo = {},
    WildMenu = {},
    StatusLine = {},
    StatusLineNC = { link = "Comment" },
    StatusLineTerm = { link = "StatusLine" },
    StatusLineTermNC = { link = "StatusLineNC" },
    Search = { link = "Visual" },
    IncSearch = { link = "Search" },
    LineNr = {},
    CursorLineNr = { link = "Comment" },
    CursorLine = { link = "Comment" },
    FoldColumn = { link = "LineNr" },
    Folded = { link = "Comment" },
    Visual = { reverse = true },
    VisualNOS = { link = "Visual" },
    Pmenu = { reverse = true },
    PmenuSel = {},
    PmenuSbar = {},
    PmenuThumb = { reverse = true },
    ColorColumn = { reverse = true },
    SignColumn = {},
    MatchParen = { reverse = true },
    Title = {},
    WinBar = {},
    Directory = {},
    SpecialKey = {},
    DiffDelete = { ctermfg = "red" },
    DiffAdd = { ctermfg = "green" },
    DiffChange = { ctermfg = "darkyellow" },
    DiffText = { ctermfg = "cyan" },
    DiagnosticError = {},
    DiagnosticWarn = {},
    DiagnosticInfo = {},
    DiagnosticHint = {},
    DiagnosticOk = {},
    TelescopeMatching = { link = "Comment" },
    TelescopeSelection = { link = "CursorLine" },
    diffAdded = { link = "DiffAdd" },
    diffRemoved = { link = "DiffDelete" },
    GitSignsAddPreview = { link = "DiffAdd" },
    GitSignsDeletePreview = { link = "DiffDelete" },
    GitSignsAddInline = { reverse = true },
    GitSignsDeleteInline = { reverse = true },
    MiniJump = { link = "Comment" },
    MiniTablineVisible = { link = "Comment" },
    MiniJump2dSpot = { link = "Comment" },
    MiniJump2dSpotAhead = { link = "Comment" },
    MiniCompletionActiveParameter = { link = "Comment" },
  }

  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = false
  vim.g.colors_name = "serene"
  M.set_groups()
end

return M
