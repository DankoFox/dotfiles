require "nvchad.autocmds"

local fn = vim.fn
local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  desc = "Disable New Line Comment",
})

vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#83a598", fg = "#0000FF" })
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank { higroup = "YankHighlight", timeout = 300 }
  end,
  desc = "Highlight when yanking",
})

autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    if fn.line "'\"" > 0 and fn.line "'\"" <= fn.line "$" then
      fn.setpos(".", fn.getpos "'\"")
      vim.api.nvim_feedkeys("zz", "n", true)
    end
  end,
  desc = "Restore file last cursor",
})

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  group = lint_augroup,
  callback = function()
    require("lint").try_lint()
  end,
})
