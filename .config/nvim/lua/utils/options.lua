local opt = vim.opt
local o = vim.o

local vim_opt = {
  -- cursorcolumn = true,
  title = true,
  titlelen = 0, -- do not shorten title
  titlestring = 'nvim %{expand("%:p")}',
  -- scrolloff = 999, -- Center current line mid screen , like "zz"
  virtualedit = "block", -- treat every cells (even spaces) as a character in BLOCK MODE

  fillchars = { -- statuscol fold symbol
    fold = " ",
    foldopen = "",
    foldsep = " ",
    foldclose = "",
    stl = " ",
    eob = " ",
  },

  conceallevel = 1, -- for OBSIDIAN.nvim redering
}

local vim_o = {
  -- UFO PLUGIN
  foldcolumn = "auto",
  foldlevel = 99, -- Using ufo provider need a large value
  foldlevelstart = 99,
  foldnestmax = 0,
  foldenable = true,
  foldmethod = "indent",
}

vim.fn.sign_define(
  "DapBreakpoint",
  { text = "🔴", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)

-- Undercurl
vim.cmd [[let &t_Cs = "\e[4:3m"]]
vim.cmd [[let &t_Ce = "\e[4:0m"]]

-- === SETTING LOOP === --
for k, v in pairs(vim_opt) do
  opt[k] = v
end

for k, v in pairs(vim_o) do
  o[k] = v
end
