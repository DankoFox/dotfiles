local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

-- vim.cmd "map <Leader>fm :lua vim.lsp.buf.format(nil, 10000)<CR>"

local b = null_ls.builtins

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {

  -- webdev stuff
  formatting.deno_fmt,
  formatting.prettier,
  lint.eslint_d,
  b.code_actions.eslint_d,

  -- Lua
  formatting.stylua,
  lint.luacheck,

  -- Python
  formatting.black,
  lint.ruff,

  -- C++
  lint.cpplint,
  formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
