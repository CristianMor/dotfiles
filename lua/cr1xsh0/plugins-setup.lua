-- Instalar automáticamente el empaquetador
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	print("Instalar packer cerrar y volver a abrir Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocomando que recarga neovim cada vez que se guarda el archivo plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end ]])

-- Utilizar una llamada protegida para que no se produzca un error en el primer uso
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Hacer que el empaquetador utilice una ventana emergente
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Plugins
return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- que el empaquetador se gestione solo
	use("nvim-lua/plenary.nvim") -- funciones lua utiles utilizadas en muchos plugins

	-- Tema
	use("EdenEast/nightfox.nvim")

	-- Explorador de archivos
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")

	-- Neovim estatus baar
	use("feline-nvim/feline.nvim")

	-- Busqueda difusa de archivos [[ Telescope ]]
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- Plugins esenciales
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	use("numToStr/Comment.nvim")

	-- Completacion cmp
	use("hrsh7th/nvim-cmp") -- el plugin de completacion
	use("hrsh7th/cmp-buffer") -- buffer completacion
	use("hrsh7th/cmp-path") -- path completacion

	-- Snippets
	use("L3MON4D3/LuaSnip") -- maquina de snippets
	use("rafamadriz/friendly-snippets") -- un montón de fragmentos para usar
	use("saadparwaiz1/cmp_luasnip") -- snippet completacion

	-- gestión e instalación de los servidores lsp, linters y formateos
	use("williamboman/mason.nvim") -- Instalador de servidores de idiomas fácil de usar
	use("williamboman/mason-lspconfig.nvim") -- instalador de servidores de idiomas fácil de usar

	-- configuración de los servidores lsp
	use("neovim/nvim-lspconfig") -- habilitar LSP
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim") -- diagnóstico de LSP y acciones de código
	use("onsails/lspkind.nvim")

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Formateo y linting
	use("jose-elias-alvarez/null-ls.nvim") -- diagnóstico de LSP y acciones de código
	use("jayp0521/mason-null-ls.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- Establecer automaticamente su configuracion despues de clonar packer.nvim
	-- poner esto al dinal despues de todos los plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
