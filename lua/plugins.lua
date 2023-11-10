local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer no esta instalado")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
	use("nvim-tree/nvim-web-devicons")
	use("feline-nvim/feline.nvim") -- Neovim estatus baar
  use 'neovim/nvim-lspconfig'
end)
