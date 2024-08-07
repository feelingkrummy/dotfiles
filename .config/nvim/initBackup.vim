call plug#begin( stdpath('data') . '/plugged' )
    Plug 'arcticicestudio/nord-vim'
    Plug 'kien/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/goyo.vim'
    Plug 'gyim/vim-boxdraw'
    Plug 'rbgrouleff/bclose.vim'
    "Color Schemes:
    Plug 'morhetz/gruvbox'
    Plug 'sainnhe/everforest'
call plug#end()

"set t_Co=256

"highlight colorcolumn ctermbg=0 guibg=lightgrey
set termguicolors

let mapleader=" "

set cursorline

"colorscheme nord
let g:gruvbox_contrast_dark='hard'
set background=dark
colorscheme gruvbox

"set background=dark
"let g:everforest_background='medium'
"colorscheme everforest

set hidden

set splitbelow
set splitright

set number relativenumber

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap j gj
nnoremap k gk

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent

set linebreak
set breakindent
set breakindentopt=shift:4,min:0


"CtrlP
let g:ctrlp_working_path_mode = '0'

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
"let g:airline_theme='everforest'

"Nerdtree
let NERDTreeWinSize=45
let NERDTreeQuitOnOpen=1
map <C-n> :NERDTreeToggle<CR>

nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>bn :bn<CR>
"nnoremap <leader>bp :bN<CR>
nnoremap <leader>e :CtrlP<CR>
nnoremap <leader>/ :noh<CR>
nnoremap <leader>q :Bclose<CR>
nnoremap <leader>Q :Bclose!<CR>

autocmd BufNewFile,BufRead *.tex set filetype=tex
autocmd Filetype tex setlocal spell
autocmd Filetype markdown setlocal spell
