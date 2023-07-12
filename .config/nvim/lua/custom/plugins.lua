local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
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

        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
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
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lsp_config"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
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
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      {
        "ggandor/leap.nvim",
        "tpope/vim-repeat",
      },
    },
    config = function()
      require("flit").setup {}
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
    event = "VeryLazy",
    config = function()
      require("symbols-outline").setup()
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("core.utils").load_mappings "dap"
    end,
  },
}
return plugins
