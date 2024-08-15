-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "pyright", "tailwindcss", "bashls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
    "--enable-config",
  },
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

require("typescript-tools").setup {}
