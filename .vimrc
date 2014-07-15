syntax on
filetype off
set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline
set t_Co=256 " Explicitly tell vim that the terminal has 256 colors
set background=dark
set number
set fileformats=unix
colorscheme molokai
match ErrorMsg '\s\+$' " Shows trailing whitespace
set cursorline
setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set mouse=a
set ttymouse=xterm2

filetype plugin indent on
