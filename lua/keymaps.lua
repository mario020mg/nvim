-- ~/.config/nvim/lua/keymaps.lua
-- All custom keybindings

-- ========================
-- Make all 'd' operations NOT copy to clipboard
-- ========================
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true })

-- ========================
-- Better window navigation
-- ========================
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- ========================
-- Clear search highlight with Esc
-- ========================
vim.api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true })

-- ========================
-- Better indenting in visual mode
-- ========================
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Set leader key to space
vim.g.mapleader = " "

-- Neo-tree toggle on <leader>n
vim.api.nvim_set_keymap("n", "<leader>n", ":Neotree toggle<CR>", { noremap = true, silent = true })

-- Ctrl+a to copy entire file
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG\"+y", { noremap = true, silent = true })

