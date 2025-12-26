
local ok, neo_tree = pcall(require, "neo-tree")
if ok then
  neo_tree.setup({
    close_if_last_window = true,
    filesystem = { follow_current_file = true },
    window = { width = 30 },
  })

  -- Keymap after plugin is loaded
  vim.api.nvim_set_keymap("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })
end

