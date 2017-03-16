set nocompatible
syntax on
filetype off
set clipboard=unnamed

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
" Plugin 'leafgarland/typescript-vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'burnettk/vim-angular'
Plugin 'pangloss/vim-javascript'
Plugin 'claco/jasmine.vim'
call vundle#end()

set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" use jshint
let g:syntastic_javascript_checkers = ['jshint']
"
" show any linting errors immediately
let g:syntastic_check_on_open = 1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected", "id\" has invalid value", "href\" lacks value", "id and name attribute value mismatch"]

set swapfile
set backup
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set undodir=~/.vim/tmp/undo//

set hidden
set background=dark
set number
set fileformats=unix
let g:molokai_original=1
let g:rehash256=1
try
	colorscheme molokai
catch
	colorscheme slate
endtry
match ErrorMsg '\s\+$'
set cursorline
set colorcolumn=120
set shiftwidth=4
set tabstop=4
set ttymouse=xterm2
set ttyfast
set scrolloff=4
set incsearch
set showmatch
set hlsearch
set backspace=2
set lazyredraw
set wildmenu
set wildmode=longest:full,full
filetype plugin indent on

let mapleader=","
map <Leader>a :%y+<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>

if has("mouse")
	set mouse=a
endif

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  " or http://sunaku.github.io/vim-256color-bce.html
  set t_ut=
  set t_Co=256
endif

augroup VimCSS3Syntax
	autocmd!

	autocmd FileType css setlocal iskeyword+=-
augroup END
