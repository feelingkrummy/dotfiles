" TODO :
" Add FZF Support
" Find better colorscheme

set nocompatible
syntax on

""" SETTINGS
set encoding=utf-8
set hidden
set history=1000
set autoread

"" Tabs and Whitespace
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set smartindent
set smarttab

set list
set listchars=tab:>\ ,trail:-,nbsp:+

set nojoinspaces

set backspace=indent,eol,start

"" Colors
set termguicolors
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
"colorscheme quiet

"" Visual
set cursorline
set number
set norelativenumber
set nowrap
set scrolloff=10
set sidescroll=0
set laststatus=2 " Need more statusline customization
set colorcolumn=100
set hlsearch
set incsearch

" format options, nvim default: tcqj, vim default: tcq
set formatoptions=tcqj " Verify that c doesn't do that annoying comment thing
set formatoptions+=/ " I think this is working

"" Window
set splitbelow
set splitright
set belloff=all
set display=lastline

"" Completion
"set complete=.,w,b,u,t " Neovim default excludes i, Vim does
set completeopt=menuone,popup,noinsert",fuzzy
set completepopup=align:menu,border:on" idk if this is doing anything

"" Mouse
" Want some mouse settings, but need to verify how they interact with tmux
" set mouse=nvi 
" set mousemodel=popup_setpos

" Vim has a diff mode, need to test and configure
" See diff, diffopt

""" REMAPS
let mapleader=" "

nnoremap <leader>/ :noh<CR>
" I think these are obsolete with TmuxNavigation
" nnoremap <M-h> <C-w>h
" nnoremap <M-j> <C-w>j
" nnoremap <M-k> <C-w>k
" nnoremap <M-l> <C-w>l

nnoremap j gj
nnoremap k gk

nnoremap <leader>q :Bclose<CR>
nnoremap <leader>Q :Bclose!<CR>

let g:tmux_navigator_no_mappings=1

nnoremap <silent> <C-h> :<C-U>TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :<C-U>TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :<C-U>TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :<C-U>TmuxNavigateRight<CR>
nnoremap <silent> <C-p> :<C-U>TmuxNavigatePrevious<CR>

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>

""" AUTOCMDS
autocmd BufNewFile,BufRead *.tex set filetype=tex
autocmd Filetype tex setlocal spell
autocmd Filetype markdown setlocal spell


""" FZF
let g:fzf_vim = {}
let g:fzf_vim.preview_window = []
