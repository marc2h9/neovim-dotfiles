require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Nvim Treesitter
  use {
    'nvim-treesitter/nvim-treesitter', branch='main',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync=true })
      ts_update()
    end,
  }

  -- Fuzzy finder
  use 'nvim-telescope/telescope.nvim'

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
  use  { 'L3MON4D3/LuaSnip', run="make install_jsregexp" }
  use 'saadparwaiz1/cmp_luasnip'

  -- LSP Signature
  use 'ray-x/lsp_signature.nvim'

  -- LSP
  use 'mason-org/mason.nvim'
  use 'neovim/nvim-lspconfig'
  use 'mason-org/mason-lspconfig.nvim'
end)
