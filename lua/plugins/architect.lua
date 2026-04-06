return {
  dir    = vim.fn.stdpath("config") .. "/lua/plugins/nvim-architect",
  name   = "architect.nvim",
  lazy   = false,
  config = function()
    require("architect").setup({
      model      = "gpt-4o",
      memory_dir = ".nvim/architect",
      auto_save  = true,
    })
  end,
  keys = {
    { "<leader>ar", "<cmd>Architect<CR>",        desc = "Architect: Open" },
    { "<leader>as", "<cmd>Architect status<CR>", desc = "Architect: Status" },
    { "<leader>aR", "<cmd>Architect reset<CR>",  desc = "Architect: Reset" },
  },
}
