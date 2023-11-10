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
	use "nvim-tree/nvim-web-devicons" -- File icons
  use "L3MON4D3/LuaSnip" -- Snippet
	use "feline-nvim/feline.nvim" -- Neovim estatus baar
  use 'onsails/lspkind-nvim' -- vscode-like pirctograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for burffer words
	use "hrsh7th/cmp-path" -- path completacion
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completation
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
end)
