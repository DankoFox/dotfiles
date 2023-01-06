-- First read our docs (completely) then check the example_config repo

local M = {}

-- non plugin ui configs, available without any plugins
M.ui = {
  theme = "catppuccin",
  theme_toggle = {'catppuccin','gruvbox_material'},
  transparency = true,
}

M.plugins = require "custom.plugins"

M.mappings = require "custom.mappings"

return M
