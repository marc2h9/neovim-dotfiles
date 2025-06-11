-- LSP
require("mason").setup()
require("mason-lspconfig").setup()

-- Lualine / Theme
require('onedark').load()
require('lualine').setup {
  options = { theme = 'onedark' }
}
