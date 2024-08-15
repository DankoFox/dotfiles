local opts = {
  -- add any options here
  routes = {
    {
      filter = {
        event = "msg_show",
        any = {
          { find = "%d+L, %d+B" },
          { find = "; after #%d+" },
          { find = "; before #%d+" },
          { find = "%d fewer lines" },
          { find = "%d more lines" },
        },
      },
      opts = { skip = true },
    },
  },
  lsp = {
    hover = {
      enabled = false,
    },
    signature = {
      enabled = false,
    },
  },
}

require("noice").setup(opts)
