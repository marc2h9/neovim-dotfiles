require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Lualine / Theme
  use 'navarasu/onedark.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-tree/nvim-web-devicons'

  -- Autocomplete / Snippets
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'
  use 'petertriho/cmp-git'
  use 'nvim-lua/plenary.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- LSP
  use 'mason-org/mason.nvim'
  use 'neovim/nvim-lspconfig'
  use 'mason-org/mason-lspconfig.nvim'
end)
