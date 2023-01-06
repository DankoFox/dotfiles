return {
  ["goolord/alpha-nvim"] = { disable = false },

  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "round",
      },
    },
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lsp_config"
    end,
  },

  ["Vimjas/vim-python-pep8-indent"] = {},

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["windwp/nvim-ts-autotag"] = {
    after = "nvim-cmp",
    config = function()
      require "custom.plugins.autotag"
    end,
  },

  ["themaxmarchuk/tailwindcss-colors.nvim"] = {
    module = "tailwindcss-colors",
    config = function()
      require("tailwindcss-colors").setup()
    end,
  },
}
