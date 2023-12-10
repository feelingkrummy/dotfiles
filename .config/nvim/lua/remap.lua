vim.g.mapleader=" "

for index, letter in ipairs({ "h", "j", "k", "l" }) do
    vim.keymap.set( "n", "<C-".. letter .. ">", "<C-w>" .. letter )
end

vim.keymap.set( 'n', 'j', 'gj' )
vim.keymap.set( 'n', 'k', 'gk' )

vim.keymap.set( 'n', '<leader>/', '<cmd>noh<CR>' )
vim.keymap.set( 'n', '<leader>q', '<cmd>Bclose<CR>' )
vim.keymap.set( 'n', '<leader>Q', '<cmd>Bclose!<CR>' )

-- Neotree 
vim.keymap.set( 'n', '<C-n>', '<cmd>Neotree position=float<CR>' )

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
