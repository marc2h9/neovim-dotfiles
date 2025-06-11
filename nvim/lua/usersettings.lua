-- Telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<space>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<space>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Disable status bar
vim.opt.laststatus = 0
vim.cmd([[
  set noshowmode
]])

-- Misc
vim.cmd([[
  set termguicolors

  set nu
  set tabstop=2
  set shiftwidth=2
  set expandtab
]])
