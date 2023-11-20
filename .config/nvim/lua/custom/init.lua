local opt = vim.opt
local g = vim.g

opt.cursorcolumn = true

-- Undercurl
vim.cmd [[let &t_Cs = "\e[4:3m"]]
vim.cmd [[let &t_Ce = "\e[4:0m"]]
