local fn = vim.fn

-- Instalar automáticamente el empaquetador
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "-- depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }

  print "Instalar packer cerrar y volver a abrir Neovim..."

  vim.cmd [[packadd packer.nvim]]
end
-- Autocomando que recarga neovim cada vez que se guarda el archivo plugins.lua
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Utilizar una llamada protegida para que no se produzca un error en el primer uso
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Hacer que el empaquetador utilice una ventana emergente
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins
return packer.startup(function(use)

  use "wbthomason/packer.nvim"                    -- que el empaquetador se gestione solo
  use "nvim-lua/popup.nvim"                       -- una implementacion de la API Popop de vim en neovim
  use "nvim-lua/plenary.nvim"                     -- funciones lua utiles utilizadas en muchos plugins
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  -- Completacion cmp
  use "hrsh7th/nvim-cmp"                          -- el plugin de completacion
  use "hrsh7th/cmp-buffer"                        -- buffer completacion
  use "hrsh7th/cmp-path"                          -- path completacion
  use "hrsh7th/cmp-cmdline"                       -- cmpline completacion
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  --use "hrsh7th/cmp-emoji"
  use "hrsh7th/cmp-nvim-lsp-signature-help"
  use "saadparwaiz1/cmp_luasnip"                  -- snippet completacion

  -- Explorador de archivosuse {
  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- auto pairs
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  -- Snippets
  use "L3MON4D3/LuaSnip"                          -- maquiona de snippets
  use "rafamadriz/friendly-snippets"              -- un montón de fragmentos para usar

  -- LSP 
  use "neovim/nvim-lspconfig"                     -- habilitar LSP
  use "williamboman/mason.nvim"                   -- Instalador de servidores de idiomas fácil de usar
  use "williamboman/mason-lspconfig.nvim"         -- instalador de servidores de idiomas fácil de usar
  use "jose-elias-alvarez/null-ls.nvim"           -- diagnóstico de LSP y acciones de código


  -- Preview archivos markdown
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Tema  
  use "EdenEast/nightfox.nvim"
  --[[
  use({
    'Allianaab2m/penumbra.nvim',
    config = function()
      require('penumbra').setup()
      vim.api.nvim_command('colorscheme penumbra')
    end
  }) 
  ]]--

  -- Git
	use 'lewis6991/gitsigns.nvim'

  -- Neovim estatus baar
  use 'feline-nvim/feline.nvim'
  use 'nvim-tree/nvim-web-devicons'

  -- Busqueda difusa de archivos [[ Telescope ]] 
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  }

  -- Highlighting nvim-treesiter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'p00f/nvim-ts-rainbow'

  -- Establecer automaticamente su configuracion despues de clonar packer.nvim
  -- poner esto al dinal despues de todos los plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
