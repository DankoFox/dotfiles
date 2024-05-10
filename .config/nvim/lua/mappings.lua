require "nvchad.mappings"
local map = vim.keymap.set

map("n", "<C-Z>", "u", { desc = "undo" })
map("n", "<C-Y>", "<C-R>", { desc = "redo" })
map("n", "<C-I>", "<C-I>", { desc = "jump forward" })

map("n", "<A-j>", ":m .+1<cr>==", { desc = "Move line up" })
map("n", "<A-k>", ":m .-2<cr>==", { desc = "Move line down" })

map("n", "H", "^", { desc = "Jump to line start" })
map("n", "L", "$", { desc = "Jump to line end" })

map("v", "<C-C>", '"+y', { desc = "copy" })
map("v", "<C-V>", '"+p', { desc = "paste" })
map("v", ">", ">gv", { desc = "Push indent in V mode" })
map("v", "<", "<gv", { desc = "Pull indent in V mode" })
map("v", "V", "j", { desc = "Repeat V for more lines" })

map("i", "jk", "<Esc>", { desc = "Normal Mode" })

map("n", "gpd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Preview Def" })
map("n", "gpt", "<cmd>Lspsaga peek_type_definition<CR>", { desc = "Preview Type" })

map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Saga goto_definition" })
map("n", "gr", "<cmd>Lspsaga finder<CR>", { desc = "Saga ref" })
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Saga hover document" })
map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Saga code_action" })
map("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
map("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")

map("n", "<leader>o", "<cmd>SymbolsOutline<CR>", { desc = "Symbols Outline" })
map("n", "<leader>rr", ":IncRename ")

-- local M = {}
--
-- M.trouble = {
--   n = {
--     ["<leader>tb"] = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
--     ["<leader>td"] = { "<CMD>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<CR>", "Todo/Fix/Fixme" },
--   },
-- }
--
-- M.dap = {
--   plugin = true,
--   n = {
--     ["<leader>db"] = {
--       "<cmd> DapToggleBreakpoint <CR>",
--       "Add breakpoint at line",
--       opts = { silent = true },
--     },
--     ["<leader>dc"] = {
--       "<cmd> DapContinue <CR>",
--       "Start or continue the debugger",
--       opts = { silent = true },
--     },
--     ["<leader>do"] = {
--       "<cmd> DapStepOver <CR>",
--       "Step Over",
--       opts = { silent = true },
--     },
--     ["<leader>di"] = { "<cmd>DapStepInto<cr>", "Step Into", opts = { silent = true } },
--
--     ["<leader>du"] = { "<cmd>DapStepOut<cr>", "Step Out", opts = { silent = true } },
--   },
-- }
--
-- return M
