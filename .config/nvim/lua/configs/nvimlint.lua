local lint = require "lint"

local options = {
  c = { "cpplint" },
  cpp = { "cpplint" },
  lua = { "luacheck" },
  python = { "ruff" },

  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
}

lint.linters_by_ft = options
