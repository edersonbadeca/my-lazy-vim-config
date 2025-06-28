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
      mini = {
        position = {
          row = -2, -- Duas linhas acima do rodapé
          col = "50%", -- Centralizado horizontalmente
        },
        size = {
          width = "auto",
          height = "auto",
        },
        align = "center",
      },
    },
    messages = {
      view = "mini", -- Garante que as notificações usem o view centralizado
    },
  },
}
