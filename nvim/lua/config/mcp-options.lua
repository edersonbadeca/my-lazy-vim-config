return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      context = "buffer",
    },
  },
  {
    "ravitemer/mcphub.nvim",
    config = function()
      require("mcphub").setup({
        extensions = {
          codecompanion = {
            show_result_in_chat = true,
            make_vars = true,
            make_slash_commands = true,
          },
        },
      })
    end,
  },
  {
    "codecompanion.nvim",
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = {
            tools = {
              ["mcp"] = {
                callback = function()
                  return require("mcphub.extensions.codecompanion")
                end,
                description = "Call tools and resources from the MCP Servers",
              },
            },
          },
        },
      })
    end,
  },
  -- ... sua config do edgy.nvim permanece igual ...
}
