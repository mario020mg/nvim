return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        openai = {
          api_key = os.getenv("OPENAI_API_KEY"),
        },
      },
      strategies = {
        chat = { adapter = "openai" },
        inline = { adapter = "openai" },
        cmd = { adapter = "openai" },
      },
      opts = {
        log_level = "DEBUG",
      },
    })

    -- Keymap to open CodeCompanion chat in a floating window
    vim.keymap.set("n", "<leader>cc", function()
      require("codecompanion").chat({
        window_opts = { layout = "float", width = 80, height = 15 }
      })
    end, { desc = "Open CodeCompanion Chat" })  -- <--- close the keymap
  end,  -- close config function
}

