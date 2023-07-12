local base = require "plugins.configs.lspconfig"
local on_attach = base.on_attach
local capabilities = base.capabilities
capabilities.offsetEncoding = { "utf-16" }

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "pyright", "tsserver", "tailwindcss" }

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
