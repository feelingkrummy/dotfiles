vim.opt.hidden = true
vim.opt.autoread = true

-- Tabs and Whitespace
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.list = true
vim.opt.listchars = "tab:> ,trail:.,nbsp:+"

-- Colors
vim.opt.termguicolors = true
vim.o.background = "dark"
vim.cmd.colorscheme("gruvbox")

-- Visual
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wrap = false
vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 0
vim.opt.colorcolumn = "100"

-- Window
vim.opt.splitbelow = true
vim.opt.splitright = true
