local kr = require("kr")

vim.keymap.set( 'n', '<leader>/', '<cmd>noh<CR>' )

-- Navigation
for index, letter in ipairs({ "h", "j", "k", "l" }) do
    vim.keymap.set( "n", "<C-".. letter .. ">", "<C-w>" .. letter )
end
vim.keymap.set('n', 'j', 'gj' ) -- May not need these anymore because no wrap
vim.keymap.set('n', 'k', 'gk' )

vim.keymap.set('n', '<leader>n', ':tabN<CR>')
vim.keymap.set('n', '<leader>m', ':tabn<CR>')
vim.keymap.set('n', '<leader>N', ':$tabnew<CR>')

-- Buffer Control
vim.keymap.set('n', '<leader>q', function() kr.buffer_close() end)
vim.keymap.set('n', '<leader>Q', function() kr.buffer_close{force = true} end)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
