local g = vim.g
local opt = vim.opt

if g.neovide then
  opt.guifont = "JetBrainsMono_NFM:h12"
  g.remember_window_size = true
  g.remember_window_position = true
  g.neovide_cursor_antialiasing = true

  g.neovide_padding_top = 15
  g.neovide_padding_bottom = 15
  g.neovide_padding_right = 15
  g.neovide_padding_left = 15
  g.neovide_floating_blur_amount_x = 3.0
  g.neovide_floating_blur_amount_y = 3.0
end
