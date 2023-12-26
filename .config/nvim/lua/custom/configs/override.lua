local M = {}

M.nvterm = {
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = "editor",
        row = 0.05,
        col = 0.05,
        width = 0.9,
        height = 0.85,
        border = "rounded",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.3 },
      vertical = { location = "rightbelow", split_ratio = 0.5 },
    },
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  },
}

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
    "typescript-language-server",
  },
}

M.cmp = {
  experimental = {
    ghost_text = true,
  },
}

M.nvimtree = {
  filters = {
    dotfiles = true,
    custom = { "node_modules" },
  },
  git = {
    enable = true,
    ignore = true,
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = true,
    full_name = false,
    highlight_opened_files = "all",
    highlight_modified = "none",
    -- root_folder_label = ":~:s?$?/..?",
    indent_width = 2,
    icons = {
      show = {
        git = true,
      },
    },
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
  },
}
return M
