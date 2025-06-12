-- LSP
require("mason").setup()
require("mason-lspconfig").setup()

-- Lualine Theme
require('lualine').setup {
  options = { theme = 'onedark' }
}
