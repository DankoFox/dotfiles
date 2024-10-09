-- First read our docs (completely) then check the example_config repo
local M = {}

local highlights = require "highlights"

-- non plugin ui configs, available without any plugins
M.ui = {
  extended_integrations = { "todo", "trouble", "rainbowdelimiters", "dap", "lspsaga" },

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "round",
    overriden_modules = nil,
  },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },
}

M.base46 = {
  theme = "rosepine",
  transparency = true,
  hl_override = highlights.override,
}

M.term = {
  hl = "Normal:term,WinSeparator:WinSeparator",
  sizes = { sp = 0.3, vsp = 0.2 },
  float = {
    relative = "editor",
    row = 0.05,
    col = 0.05,
    width = 0.9,
    height = 0.8,
    border = "rounded",
  },
}

M.nvdash = {
  load_on_startup = true,

  header = {
    "                              MEOWVIM⠀⠀⠀⠀⠀⠀               ⠀ ⠀⠀⠀⠀ ",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⡀ ",
    "⢠⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿ ",
    "⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿ ",
    "⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿ ",
    "⢻⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀       ⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇ ",
    "⠸⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠁ ",
    "⠀⢻⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⠃⠀ ",
    "⠀⠀⠻⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⠋⠀⠀ ",
    "⠀⠀⠀⠙⢿⣿⣿⣦⣀⠀⠀⠀⠀⠀⢀⣀⣴⣾⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣷⣶⣤⣤⣤⣤⣴⣾⣿⡿⠟⠁⠀⠀⠀ ",
    "⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⠟⠋⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠛⠛⠟⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀ ",
    "⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⢰⣿⡏⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⢀⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
    "⠀⠀⠀⠀⠀⠀⢰⡆⠀⢰⣷⠀⠀⣶⡄⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⢀⣾⣿⣿⣧⡀⠀⣠⣾⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡆⠀⢰⡆⠀⢰⣷⠀⠀⠀⠀⠀⠀⠀ ",
    "⠀⠀⠀⠀⠀⠀⣾⡇⠀⢸⣿⠀⢠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣷⣄⣀⣠⣴⣿⠟⠋⠙⢿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⢸⣷⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀ ",
    "⠀⠀⠀⠀⠀⠀⠿⠇⠀⠺⠇⠀⠸⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⠿⠿⠛⠁⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠗⠀⠸⠿⠀⠀⠿⠃⠀⠀⠀⠀⠀⠀ ",
    "⠀⠀⠀⠀⠀⠀                                                   ⠀ ⠀⠀⠀⠀⠀ ",
    " 	(＞﹏＜)            text editor số 1             ૮₍ ˶ᵔ ᵕ ᵔ˶ ₎ა",
    "⠀⠀⠀⠀⠀⠀                                                   ⠀ ⠀⠀⠀⠀⠀ ",
  },
}

return M
