local M = {}

M.gneral = {
  n = {
    ["<C-Z>"] = { "u", "undo" },
    ["<C-Y>"] = { "<C-R>", "redo" },
    ["<C-C>"] = { '"+y', "copy" },
    ["<C-V>"] = { '"+p', "paste" },
  },
  v = {
    ["<C-C>"] = { '"+y', "copy" },
    ["<C-V>"] = { '"+p', "paste" },
  },
  i = {
    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },
  },
}

M.gotwo = {
  n = {
    ["gpd"] = { "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", "Preview Def" },
    ["gpt"] = { "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", "Preview Type" },
    ["gpi"] = { "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", "Preview Imp" },
    ["gP"] = { "<cmd>lua require('goto-preview').close_all_win()<CR>", "Close all preview windows" },
    ["gpr"] = { "<cmd>lua require('goto-preview').goto_preview_references()<CR>", "Preview ref" },
  },
}

M.nav = {
  n = {
    ["<leader>fs"] = { "<cmd>lua require('nvim-navbuddy').open()<CR>", "NavBuddy" },
    ["<leader>so"] = { "<cmd>SymbolsOutline<CR>", "Symbols Outline" },
  },
}

M.trouble = {
  n = {
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
    ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Trouble Workspace" },
    ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", "Trouble Document" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", "Trouble QuickFix" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", "Trouble LocList" },
    ["gR"] = { "<cmd>TroubleToggle lsp_references<cr>", "Trouble Lsp" },
  },
}

return M
