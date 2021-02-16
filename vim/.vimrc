" VIM Configuration File
" Author: Adam Peterson

" text encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" text rendering
colorscheme default
set background=light
set term=xterm-256color
syntax on

" user interface
set autoindent
set backspace=indent,eol,start
set cmdheight=2
set expandtab
set hidden
set laststatus=2
set mouse=a
set number
set ruler
set showmatch
set smarttab
set smartindent
set splitbelow
set splitright
set textwidth=120
set wildmenu

" miscellaneous
set nocompatible
set undolevels=1000

"strip comment leader when joining lines
set fo+=j

" search
set incsearch
set hlsearch
set smartcase

" navigate easily through word wrapping
nnoremap j gj 
nnoremap k gk

" more convenient leader key
let mapleader = ","

" insert date and time
nnoremap <Leader>d :r !date<CR>

" switch buffers easily
nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> :bprevious<cr>

" temporary files
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" scripts
