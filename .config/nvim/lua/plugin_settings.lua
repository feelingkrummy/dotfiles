-- CtrlP
vim.g.ctrlp_working_path_mode = "0"

-- Nerdtree
vim.g.NERDTreeWinSize = 45
vim.g.NERDTreeQuitOnOpen = 1

require('lualine').setup()
require('bufferline').setup{
    options = {
        right_mouse_command = '',
        buffer_close_icon = '',
        close_icon = ''
    }
}
