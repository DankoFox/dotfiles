local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

vim.cmd "map <Leader>fm :lua vim.lsp.buf.format(nil, 10000)<CR>"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettier,
  b.diagnostics.eslint_d,
  b.code_actions.eslint_d,

  -- Lua
  b.formatting.stylua,
  b.diagnostics.luacheck,

  -- Python
  b.formatting.black,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
