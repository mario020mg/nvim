-- ~/.config/nvim/lua/settings.lua
-- All Neovim options and settings

-- ========================
-- Clipboard support
-- ========================
local has_clipboard = vim.fn.executable("xclip") == 1 or vim.fn.executable("xsel") == 1
if not has_clipboard then
  print("⚠️ Clipboard not found! Install it with: sudo apt install xclip")
else
  vim.opt.clipboard = "unnamedplus"
end

-- ========================
-- Editor options
-- ========================
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.mouse = "a"

-- ========================
-- Additional useful options
-- ========================
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
