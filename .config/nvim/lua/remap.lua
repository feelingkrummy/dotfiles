vim.g.mapleader=" "

--for index, letter in ipairs({ "h", "j", "k", "l" }) do
--    vim.keymap.set( "n", "<C-".. letter .. ">", "<C-w>" .. letter )
--end
vim.keymap.set( "n", "<C-h>", "<C-w>h")
vim.keymap.set( "n", "<C-j>", "<C-w>j")
vim.keymap.set( "n", "<C-k>", "<C-w>k")
vim.keymap.set( "n", "<C-l>", "<C-w>l")

vim.keymap.set( 'n', 'j', 'gj' )
vim.keymap.set( 'n', 'k', 'gk' )

vim.keymap.set( 'n', '<leader>b', '<cmd>CtrlPBuffer<CR>' )
vim.keymap.set( 'n', '<leader>e', '<cmd>CtrlP<CR>' )
vim.keymap.set( 'n', '<leader>/', '<cmd>noh<CR>' )
vim.keymap.set( 'n', '<leader>q', '<cmd>Bclose<CR>' )
vim.keymap.set( 'n', '<leader>Q', '<cmd>Bclose!<CR>' )


-- Nerdtree
vim.keymap.set( 'n', '<C-n>', '<cmd>NERDTreeToggle<CR>' )
