-- First read our docs (completely) then check the example_config repo

local M = {}

-- non plugin ui configs, available without any plugins
M.ui = {
  theme = "catppuccin",
  transparency = true,
  -- lsp_semantic_tokens = true, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens
  extended_integrations = { "notify" },

  hl_override = {
    NvDashAscii = {
      fg = "blue",
      bg = "black",
    },

    NvDashButtons = {
      fg = "blue",
      bg = "black",
    },
  },

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "round",
    overriden_modules = nil,
  },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
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
      "૮₍ ˃ ⤙ ˂ ₎ა          đụ má text editor số 1         ૮₍ ˶ᵔ ᵕ ᵔ˶ ₎ა",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
