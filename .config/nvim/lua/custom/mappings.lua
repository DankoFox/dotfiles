local M = {}

M.interaction = {
  n = {
    ["<C-Z>"] = { "u", "undo" },
    ["<C-Y>"] = { "<C-R>", "redo" },
    ["<C-C>"] = { '"+y', "copy" },
    ["<C-V>"] = { '"+p', "paste" },
    ["<C-A>"] = { "ggVG", "all" },
    ["<C-I>"] = { "<C-I>", "jump foward" },

    ["<C-d>"] = { "<C-d>zz", "Half down and center cursor" },
    ["<C-u>"] = { "<C-u>zz", "Half up and center cursor" },

    ["<A-j>"] = { ":m .+1<cr>==", "Move line up" },
    ["<A-k>"] = { ":m .-2<cr>==", "Move line down" },

    ["H"] = { "^", "Jump to line start" },
    ["L"] = { "$", "Jump to line end" },
    ["<leader>lg"] = { "<CMD>LazyGit<CR>", "Open LazyGit" },
    ["<A-o>"] = { "o<Esc>k", "New Line in normal" },
    ["-"] = { "<CMD>Oil<CR>", "Open parent directory" },
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
    ["jk"] = { "<Esc>" },
    ["kj"] = { "<Esc>" },
  },
}
M.gotwo = {
  n = {
    ["gpd"] = { "<cmd>Lspsaga peek_definition<CR>", "Preview Def" },
    ["gpt"] = { "<cmd>Lspsaga peek_type_definition<CR>", "Preview Type" },
    -- ["gpi"] = { "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", "Preview Imp" },
    -- ["gP"] = { "<cmd>lua require('goto-preview').close_all_win()<CR>", "Close all preview windows" },
    ["gpr"] = { "<cmd>Lspsaga finder<CR>", "Preview ref" },
  },
}

M.nav = {
  n = {
    ["<leader>o"] = { "<cmd>SymbolsOutline<CR>", "Symbols Outline" },
  },
}

M.trouble = {
  n = {
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
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
