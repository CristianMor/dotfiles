  use "nvim-lua/popup.nvim"                       -- una implementacion de la API Popop de vim en neovim

  use "hrsh7th/cmp-cmdline"                       -- cmpline completacion
  use "hrsh7th/cmp-nvim-lua"
  --use "hrsh7th/cmp-emoji"
  use "hrsh7th/cmp-nvim-lsp-signature-help"

  -- auto pairs
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  -- LSP 


  -- Preview archivos markdown
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
 
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
