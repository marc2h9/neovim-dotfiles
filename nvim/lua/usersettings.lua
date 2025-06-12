-- Telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<space>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<space>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Disable status bar
vim.opt.laststatus = 0
vim.cmd([[
  set noshowmode
  colorscheme onedark
]])

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282c34", fg = "#abb2bf" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", bg = "#282c34" })

-- Misc
vim.cmd([[
  set termguicolors

  set nu
  set tabstop=2
  set shiftwidth=2
  set expandtab
]])
