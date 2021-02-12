" VIM Configuration File
" Author: Adam Peterson

" Keep defaults
source $VIMRUNTIME/defaults.vim

" Filetype specific plugins and indenting
filetype plugin indent on

" UTF-8 encoding
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" Terminal name and control characters
set term=xterm-256color

" User interface
set cmdheight=2         " number of screen lines to use for the command-line
set hidden              " use hidden buffers (like the good lord intended)
set history=500         " it is important to preserve history
set laststatus=2        " always display a status line in a window
set mouse=a             " enable the mouse in all modes
set number              " enable line numbers
set splitbelow          " new window splits appear below the current one
set splitright          " new window splits appear right of the current one
set undolevels=500      " it is important to preserve history

" Tab handling
set autoindent          " copy indent from current line when starting a new line
set expandtab           " use the appropriate number of spaces to insert a tab

" Line wrapping behavior
set breakindent         " preserve indents during line wrapping
set linebreak           " wrap long lines at 'breakat' characters
set showbreak=\ +       " string to put at the start of wrapped lines
set wrap                " enable line wrapping

" Strings used to represent whitespace ('list' mode) characters
set listchars=eol:$,extends:>,nbsp:~,precedes:<,tab:--\|,trail:.,

" Specifics for netrw file explorer
let g:netrw_banner=0

" Folding behavior
set foldmethod=syntax   " syntax highlighting items specify folds
set foldnestmax=5       " max fold nesting for 'indent' and 'syntax' methods
set foldlevelstart=99   " start editing with no folds closed
set foldminlines=0      " enable closing folds of just one screen line
let g:markdown_folding=1

" Comments
set formatoptions+=j    " remove a comment leader when joining lines
highlight Comment cterm=italic

" Search
set gdefault            " always intend on global search and replace
set hlsearch            " highlight found search patterns
set ignorecase          " ignore case in search patterns
set smartcase           " override 'ignorecase' if search contains upper case

" Temporary files
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
set undodir=~/.vim/undo//
set undofile            " persistent undo after closing and reopening a file

" Convenient leader key
let mapleader = ","

" Insert date and time
nnoremap <Leader>d :r !date<CR>

" Insert a dashed underline
nnoremap <Leader>- yyp<c-v>$r-

" Easily switch buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Remove search highlighting when clearing and redrawing the screen
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Redo the last macro
nnoremap <S-.> @@

" Populate new files with a template, if defined
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.py  0r ~/.vim/templates/skel.py
    autocmd BufNewFile *.sh  0r ~/.vim/templates/skel.sh | 9
  augroup END
endif
