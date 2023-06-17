local M = {}

M.general = {
  n = {
    ["<C-Z>"] = {"u", "undo"},
    ["<C-Y>"] = {"<C-R>","redo"},
    ["<C-C>"] = {'"+y',"copy"},
    ["<C-V>"] = {'"+p',"paste"},
    ["gpd"] = { "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", "Preview Def" },
    ["gpt"] = { "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", "Preview Type" },
    ["gpi"] = { "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", "Preview Imp" },
    ["gP"] = { "<cmd>lua require('goto-preview').close_all_win()<CR>", "Close all preview windows" },
    ["gpr"] = { "<cmd>lua require('goto-preview').goto_preview_references()<CR>", "Preview ref" },

  },
  v = {
    ["<C-C>"] = {'"+y',"copy"},
    ["<C-V>"] = {'"+p',"paste"},
  },
  i = {
    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },
    -- ["<C-C>"] = {'"+y',"copy"},
    -- ["<C-V>"] = {"+p","paste"},
  }
}

return M

