return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline_popup",
    },
    views = {
      cmdline_popup = {
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = 80,
          height = "auto",
        },
        border = {
          style = "rounded",
          padding = { 1, 2 },
        },
        win_options = {
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
        },
      },
    },
  },
}
