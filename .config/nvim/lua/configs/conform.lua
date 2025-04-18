local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
    cpp = { "clang_format" },
    sh = { "shfmt" },
    css = { "prettierd" },
    html = { "prettierd" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
