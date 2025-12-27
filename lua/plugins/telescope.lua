return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope", -- lazy-load on use
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
   
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "flex",
        layout_config = { width = 0.8, height = 0.6 },
        sorting_strategy = "ascending",
        prompt_prefix = "🔍 ",
      },
    })
  end,
}

