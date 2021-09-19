set path+=**
set modelines=0
set autoread
au FocusGained,BufEnter * :silent! !
set encoding=utf-8
set visualbell
set backspace=indent,eol,start
set smartindent
set nobackup
set nowritebackup
set noswapfile
set number
set relativenumber
set scrolloff=5
set expandtab tabstop=4 shiftwidth=2 softtabstop=4
set autoindent
set showmode showcmd
set showmatch
set hlsearch incsearch ignorecase smartcase
set autochdir
set hidden
set wildmenu wildmode=list:longest,full
set laststatus=2 statusline=%F
set clipboard=unnamedplus
set foldmethod=indent
set foldnestmax=1
set foldlevelstart=1
set mouse=a

call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'vim-airline/vim-airline'
Plug 'ghifarit53/tokyonight-vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()

syntax enable
set termguicolors
set colorcolumn=80
let g:tokyonight_style = 'night'
colorscheme tokyonight
let g:airline_theme = "tokyonight"
let g:airline#extensions#tabline#enabled = 1

" keymaps
let mapleader = " "

:map v "+p<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>

inoremap ii <Esc>

nnoremap cpp :!g++ % -o %.exe && %.exe <CR>           " C++ compile and run keymap
nnoremap cc :!gcc % -o %.exe && %.exe <CR>            " C compile an run keymap

nnoremap <F5> :e $MYVIMRC<CR>
nnoremap <F6> :source $MYVIMRC<CR>
