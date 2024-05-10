local lint = require "lint"

local options = {
  c = { "cpplint" },
  cpp = { "cpplint" },
  lua = { "luacheck" },
  python = { "ruff" },
}

lint.linters_by_ft = options
