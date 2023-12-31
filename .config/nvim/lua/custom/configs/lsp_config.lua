local base = require "plugins.configs.lspconfig"
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "pyright", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.cssls.setup {
  settings = {
    css = { validate = true, lint = {
      unknownAtRules = "ignore",
    } },
    scss = { validate = true, lint = {
      unknownAtRules = "ignore",
    } },
    less = { validate = true, lint = {
      unknownAtRules = "ignore",
    } },
  },
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.clangd.setup {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16", -- To match null-ls
    "--enable-config",
  },
  on_attach = function(client, bufnr)
    -- client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

require("typescript-tools").setup {}
