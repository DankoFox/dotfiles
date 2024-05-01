-- First read our docs (completely) then check the example_config repo
local M = {}

local highlights = require "highlights"

-- non plugin ui configs, available without any plugins
M.ui = {
  theme = "rosepine",
  transparency = true,
  -- lsp_semantic_tokens = true, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens
  extended_integrations = { "todo", "trouble", "rainbowdelimiters", "dap", "lspsaga" },

  hl_override = highlights.override,

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "round",
    overriden_modules = nil,
  },

  tabufline = {
    overriden_modules = function(modules)
      table.remove(modules, 4) -- remove buttons
    end,
  },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },

  nvdash = {
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
    },

    buttons = {
      { "  Find File   ", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word   ", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks   ", "Spc m a", "Telescope marks" },
      { "  Themes      ", "Spc t h", "Telescope themes" },
      { "  Mappings    ", "Spc c h", "NvCheatsheet" },
    },
  },
}

-- M.plugins = "plugins"

-- M.mappings = require "mappings"

return M
