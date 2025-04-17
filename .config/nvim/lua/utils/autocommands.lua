local fn = vim.fn
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- General Settings
local general = augroup("General Settings", { clear = true })

-- Hide folds and Disable statuscolumn in these filetypes
autocmd("FileType", {
  pattern = {
    "NvimTree",
    "nvcheatsheet",
    "dapui_watches",
    "dap-repl",
    "dapui_console",
    "dapui_stacks",
    "dapui_breakpoints",
    "dapui_scopes",
    "help",
    "vim",
    "Trouble",
    "noice",
    "lazy",
    "nvdash",
    "sagaoutline",
    "terminal",
  },
  callback = function()
    vim.opt_local.foldcolumn = "0"
    vim.opt_local.stc = "" -- not really important
  end,
  group = general,
})

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
  group = general,
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
  group = general,
  desc = "Restore file last cursor",
})

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  group = lint_augroup,
  callback = function()
    require("lint").try_lint()
  end,
})

-- Set textwidth to 80 and automatic line breaks for markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown", "pandoc" },
  callback = function()
    vim.opt_local.textwidth = 80
    -- vim.opt_local.formatoptions:append "a"
    vim.opt_local.colorcolumn = "80"
  end,
})
