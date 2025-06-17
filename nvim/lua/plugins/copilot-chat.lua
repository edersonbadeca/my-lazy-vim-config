return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      context = "buffer",
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    event = "VeryLazy",
    opts = function(_, opts)
      opts.left = opts.left or {}
      opts.bottom = opts.bottom or {}
      opts.right = opts.right or {}

      -- Adiciona painel esquerdo com Neo-tree (explorador de arquivos)
      table.insert(opts.left, {
        ft = "neo-tree",
        title = "File Explorer",
        size = { width = 30 },
        pinned = true,
        open = "Neotree toggle",
      })

      -- Adiciona terminal fixo no fundo
      table.insert(opts.bottom, {
        ft = "toggleterm",
        title = "Terminal",
        size = { height = 15 },
        pinned = true,
        open = "ToggleTerm",
      })

      -- Adiciona painel direito com Copilot Chat
      table.insert(opts.right, {
        ft = "copilot-chat",
        title = "Copilot Chat",
        size = { width = 50 },
      })

      -- Outras opções visuais e de comportamento
      opts.keys = {
        toggle = "<c-j>", -- atalho para abrir/fechar o layout
      }

      opts.animate = {
        enabled = true,
        fps = 60,
        cps = 120,
      }

      opts.exit_when_last = true
    end,
  },
}
