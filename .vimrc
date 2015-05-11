set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'wookiehangover/jshint.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
call vundle#end()

set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

set swapfile
set backup
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set undodir=~/.vim/tmp/undo//

set background=dark
set number
set fileformats=unix
let g:molokai_original=1
let g:rehash256=1
colorscheme molokai
match ErrorMsg '\s\+$'
set cursorline
set shiftwidth=4
set tabstop=4
set ttymouse=xterm2
set mouse=a
set scrolloff=4
set incsearch
set showmatch
set hlsearch
set backspace=2
filetype plugin indent on

augroup VimCSS3Syntax
	autocmd!

	autocmd FileType css setlocal iskeyword+=-
augroup END
