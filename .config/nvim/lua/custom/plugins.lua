local plugins = {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
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
    -- after = "nvim-lspconfig",
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

    dependencies = {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup {}
      end,
    },
  },
  {
    "windwp/nvim-ts-autotag",
    -- after = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup {}
    end,
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
}
return plugins
