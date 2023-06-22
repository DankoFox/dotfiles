local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "clang-format",
        "clangd",
        "cpplint",
        "css-lsp",
        "eslint_d",
        "html-lsp",
        "jedi-language-server",
        "lua-language-server",
        "luacheck",
        "mypy",
        "prettier",
        "ruff",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vim-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
        opts = { lsp = { auto_attach = true } },
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lsp_config"
    end,
  },
  {
    "Vimjas/vim-python-pep8-indent",
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      dofile(vim.g.base46_cache .. "syntax")
      require "custom.configs.treesitter"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup {}
    end,
    lazy = true,
    event = "VeryLazy",
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
  {
    "ggandor/flit.nvim",
    dependencies = {
      {
        "ggandor/leap.nvim",
        dependencies = {
          { "tpope/vim-repeat" },
        },
        config = function()
          require("leap").add_default_mappings()
        end,
      },
    },
    config = function()
      require("flit").setup {
        keys = { f = "f", F = "F", t = "t", T = "T" },
        labeled_modes = "v",
        multiline = true,
        opts = {},
      }
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      lsp = {
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      {
        "MunifTanjim/nui.nvim",
      },
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      {
        "rcarriga/nvim-notify",
        config = function()
          dofile(vim.g.base46_cache .. "notify")
          require("notify").setup {
            background_colour = "#000000",
          }
        end,
      },
    },
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup {}
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = function()
      require("symbols-outline").setup()
    end,
  },
}
return plugins
