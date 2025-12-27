-- lua/plugins/codecompanion.lua
return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("codecompanion").setup({
      interactions = {
        chat = {
          adapter = {
            name = "openai",
            api_key = os.getenv("OPENAI_API_KEY"),
          },
        },
        inline = {
          adapter = "openai",
        },
        cmd = {
          adapter = "openai",
        },
      },
      opts = {
        log_level = "DEBUG",
      },
    })
  end,
}

