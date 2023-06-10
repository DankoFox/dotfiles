local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

-- vim.cmd "map <Leader>fm :lua vim.lsp.buf.format(nil, 10000)<CR>"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt,
  -- b.formatting.prettier,
  -- b.diagnostics.eslint_d,
  -- b.code_actions.eslint_d,

  -- Lua
  b.formatting.stylua,
  b.diagnostics.luacheck,

  -- Python
  b.formatting.black,
  b.diagnostics.mypy,
  b.diagnostics.ruff,

  -- C++
  b.diagnostics.cpplint,
  b.formatting.clang_format,
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
