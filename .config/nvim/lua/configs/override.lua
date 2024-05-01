local M = {}

M.mason = {
  ensure_installed = {
    "black",
    "pyright",
    "ruff",

    "clang-format",
    "clangd",
    "cpplint",
    "codelldb",

    "lua-language-server",
    "stylua",
    "luacheck",

    "css-lsp",
    "eslint_d",
    "html-lsp",

    "prettierd",
    "tailwindcss-language-server",
  },
}

M.cmp = {
  experimental = {
    ghost_text = true,
  },
}

return M
