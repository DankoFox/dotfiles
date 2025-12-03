-- lua/configs/lspconfig.lua (NvChad starter)

-- Load NvChad's default LSP setup (lua_ls, keymaps, capabilities, etc.)
local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

-- Servers that only need default config
local servers = {
  "html",
  "cssls",
  "tailwindcss",
  "bashls",
  "marksman",
  "gopls",
  "ty",
}

-- Enable these servers (they pick up the defaults from NvChad + nvim-lspconfig)
vim.lsp.enable(servers)

-- clangd with custom flags
vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
    "--enable-config",
  },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
})

vim.lsp.enable "clangd"

-- TypeScript (typescript-tools plugin)
-- This plugin still uses its own setup(), so keep it as-is but reuse NvChad callbacks
require("typescript-tools").setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
