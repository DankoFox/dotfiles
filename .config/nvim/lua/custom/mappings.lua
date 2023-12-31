local M = {}

M.interaction = {
  n = {
    ["<C-Z>"] = { "u", "undo" },
    ["<C-Y>"] = { "<C-R>", "redo" },
    ["<C-C>"] = { '"+y', "copy" },
    ["<C-V>"] = { '"+p', "paste" },
    ["<C-I>"] = { "<C-I>", "jump foward" },

    -- ["<C-d>"] = { "<C-d>zz", "Half down and center cursor" },
    -- ["<C-u>"] = { "<C-u>zz", "Half up and center cursor" },

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
  },
}

M.saga = {
  n = {
    ["gd"] = { "<cmd>Lspsaga goto_definition<CR>", "Saga goto_definition" },
    ["gr"] = { "<cmd>Lspsaga finder<CR>", "Saga ref" },
    ["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Saga hover document" },
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "Saga code_action" },
    ["[d"] = { "<cmd>Lspsaga diagnostic_jump_prev<CR>" },
    ["]d"] = { "<cmd>Lspsaga diagnostic_jump_next<CR>" },
  },
}

M.nav = {
  n = {
    ["<leader>o"] = { "<cmd>SymbolsOutline<CR>", "Symbols Outline" },
  },
}

M.trouble = {
  n = {
    ["<leader>tb"] = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
    ["<leader>td"] = { "<CMD>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<CR>", "Todo/Fix/Fixme" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
      opts = { silent = true },
    },
    ["<leader>dc"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
      opts = { silent = true },
    },
    ["<leader>do"] = {
      "<cmd> DapStepOver <CR>",
      "Step Over",
      opts = { silent = true },
    },
    ["<leader>di"] = { "<cmd>DapStepInto<cr>", "Step Into", opts = { silent = true } },

    ["<leader>du"] = { "<cmd>DapStepOut<cr>", "Step Out", opts = { silent = true } },
  },
}

return M
