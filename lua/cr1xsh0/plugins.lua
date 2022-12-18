  use "nvim-lua/popup.nvim"                       -- una implementacion de la API Popop de vim en neovim

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
 
  -- Git
	use 'lewis6991/gitsigns.nvim'

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*"}


  -- Highlighting nvim-treesiter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- CR1XHS0 dashboard
  use 'glepnir/dashboard-nvim'

end)
