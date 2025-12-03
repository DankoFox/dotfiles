local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
    cpp = { "clang_format" },
    sh = { "shfmt" },
    asm = { "asmfmt" },

    -- webdev
    javascript = { "biome" },
    javascriptreact = { "biome" },
    typescript = { "biome" },
    typescriptreact = { "biome" },

    css = { "biome" },
    html = { "biome" },
    json = { "biome" },
    jsonc = { "biome" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
