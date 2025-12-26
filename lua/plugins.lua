-- ~/.config/nvim/lua/plugins.lua
-- Plugin management with packer.nvim

-- ========================
-- Ensure packer is installed
-- ========================
local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
local packer_bootstrap = false

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = true
  print("Installing packer.nvim...")
  fn.system({
    "git", "clone", "--depth", "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  })
  vim.cmd [[packadd packer.nvim]]
end

-- ========================
-- Plugin list
-- ========================
require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  
  if packer_bootstrap then
    require("packer").sync()
  end
end)

-- ========================
-- Auto-reload when plugins.lua is saved
-- ========================
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])
