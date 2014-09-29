set nocompatible " Disable vi-compatibility
syntax on
filetype off

set laststatus=2 " Always show the statusline
set t_Co=256 " Explicitly tell vim that the terminal has 256 colors

set swapfile
set backup
set backupdir=~/tmp/backup//
set directory=~/tmp/swap//
set undodir=~/tmp/undo//

set background=dark
set number
set fileformats=unix
let g:molokai_original=1
let g:rehash256=1
colorscheme molokai
match ErrorMsg '\s\+$' " Shows trailing whitespace
set cursorline
setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set mouse=a
set ttymouse=xterm2
set scrolloff=4
set lazyredraw
set ttyfast

filetype plugin indent on
