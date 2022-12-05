local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	use "EdenEast/nightfox.nvim"

	use {
		'feline-nvim/feline.nvim',
		requires = {
			'lewis6991/gitsigns.nvim',
			'nvim-tree/nvim-web-devicons'
		}
	}

	use { 'Pocco81/auto-save.nvim' }
	use {
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}

	-- auto completado
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'onsails/lspkind-nvim'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use "ray-x/lsp_signature.nvim"
	use "windwp/nvim-autopairs"


	use {
		'L3MON4D3/LuaSnip',
		requires = {
			'f3fora/cmp-spell',
		},
	}

	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer'
	}

	-- dashboard
	use { 'glepnir/dashboard-nvim' }

end)
