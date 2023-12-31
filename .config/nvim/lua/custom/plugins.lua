local override = require "custom.configs.override"
local add = require "custom.configs.add"

local plugins = {
  {
    "williamboman/mason.nvim",
    opts = override.mason,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "pmizio/typescript-tools.nvim",
      {
        "nvimtools/none-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      {
        "folke/trouble.nvim",
        dofile(vim.g.base46_cache .. "trouble"),
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lsp_config"
    end,
  },
  { "nvim-tree/nvim-tree.lua", opts = override.nvimtree },
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    dependencies = {
      "windwp/nvim-ts-autotag",
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      dofile(vim.g.base46_cache .. "syntax")
      require "custom.configs.treesitter"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = override.cmp,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
 keys = {
    { "<leader>fl", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>ft", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = require "custom.configs.noice",
    dependencies = {
      {
        "MunifTanjim/nui.nvim",
      },
    },
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = true,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
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
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    dependencies = { "nvim-lua/plenary.nvim" },
    dofile(vim.g.base46_cache .. "todo"),
    config = function()
      require("todo-comments").setup {}
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    ft = { "markdown", "md", "mdwn", "mkd", "mkdn", "mark" },
    build = "cd app && yarn install",
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
    dofile(vim.g.base46_cache .. "rainbowdelimiters"),
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      char = "▏",
      context_char = "┃",
      indent_blankline_use_treesitter_scope = true,
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup {
        lightbulb = {
          enable = false,
        },
      }
    end,
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup()
    end,
  },
  {
    "NvChad/nvterm",
    opts = override.nvterm,
  },
  {
    "kevinhwang91/nvim-ufo",
    event = "VimEnter",
    dependencies = {
      "kevinhwang91/promise-async",
      {
        "luukvbaal/statuscol.nvim",
        opts = add.statuscol,
      },
    },
    opts = {
      close_fold_kinds = { "imports" },
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
  },
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    opts = { easing_function = "sine", mappings = {
      "<C-u>",
      "<C-d>",
      "zz",
    } },
  },
}
return plugins
