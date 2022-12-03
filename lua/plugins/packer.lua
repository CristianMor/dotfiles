local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use "EdenEast/nightfox.nvim"
	use { "nvim-neo-tree/neo-tree.nvim", branch = "v2.x", requires = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	"MunifTanjim/nui.nvim" } }
	use { 'feline-nvim/feline.nvim', requires = { 'lewis6991/gitsigns.nvim', 'nvim-web-devicons' } }
	use { 'nanozuki/tabby.nvim', requires = { 'kyazdani42/nvim-web-devicons' }, }
	use { 'Pocco81/auto-save.nvim' }
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'}
end
)
