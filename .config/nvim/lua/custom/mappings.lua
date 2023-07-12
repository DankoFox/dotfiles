local M = {}

M.interaction = {
  n = {
    ["<C-Z>"] = { "u", "undo" },
    ["<C-Y>"] = { "<C-R>", "redo" },
    ["<C-C>"] = { '"+y', "copy" },
    ["<C-V>"] = { '"+p', "paste" },

    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

    ["<C-d>"] = { "<C-d>zz", "Half down and center cursor" },
    ["<C-u>"] = { "<C-u>zz", "Half up and center cursor" },

    ["<A-j>"] = { ":m .+1<cr>==", "Move line up" },
    ["<A-k>"] = { ":m .-2<cr>==", "Move line down" },

    ["H"] = { "^", "Jump to line start" },
    ["L"] = { "$", "Jump to line end" },
  },
  v = {
    ["<C-C>"] = { '"+y', "copy" },
    ["<C-V>"] = { '"+p', "paste" },

    [">"] = { ">gv", "Push indent in V mode" },
    ["<"] = { "<gv", "Pull indent in V mode" },
    ["V"] = { "j", "Repeat V for more lines" },
  },
  i = {
    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },
    ["jk"] = { "<Esc>" },
    ["kj"] = { "<Esc>" },
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

-- M.nav = {
--   n = {
--     ["<leader>fs"] = { "<cmd>lua require('nvim-navbuddy').open()<CR>", "NavBuddy" },
--     ["<leader>so"] = { "<cmd>SymbolsOutline<CR>", "Symbols Outline" },
--   },
-- }

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

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  },
}

return M
