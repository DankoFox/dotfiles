local M = {}

M.general = {
  n = {
    ["<C-Z>"] = {"u", "undo"},
    ["<C-Y>"] = {"<C-R>","redo"},
    ["<C-C>"] = {'"+y',"copy"},
    ["<C-V>"] = {'"+p',"paste"},
  },
  v = {
    ["<C-C>"] = {'"+y',"copy"},
    ["<C-V>"] = {'"+p',"paste"},
  },
  i = {
    ["<C-Z>"] = {"<ESC>:stop<CR>", "undo"},
    -- save 
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },
    ["<C-C>"] = {'"+y',"copy"},
    ["<C-V>"] = {"+p","paste"},
  }
}

return M

