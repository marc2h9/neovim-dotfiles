-- VSplit window / terminal window
vim.keymap.set('n', '<C-Y>', '<CMD>vsplit<CR>', {desc = 'Opens a new empty buffer in vsplit mode'})
vim.keymap.set('n', '<leader>t', '<CMD>vsplit<CR><CMD>term<CR>', {desc = 'Opens a new empty terminal in vsplit mode'})

-- Setting colorscheme
vim.cmd('colorscheme onedark')

-- Setting tabs
vim.cmd('set shiftwidth=2')
vim.cmd('set tabstop=2')

-- Setting linenumbers
vim.cmd('set nu')
vim.cmd('set rnu')
