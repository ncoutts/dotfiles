syntax on
filetype off
set clipboard=unnamed

set rtp+=~/.config/nvim/bundle/Vundle.vim
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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter.git'
call vundle#end()

set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" use eslint
let g:syntastic_javascript_checkers = ['eslint']
"
" show any linting errors immediately
let g:syntastic_check_on_open = 1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected", "id\" has invalid value", "href\" lacks value"]
let g:syntastic_enable_signs = 1 " Show signs on Error Lines
let g:syntastic_enable_highlighting = 1 " show highlighting on error line
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '☒'
let g:syntastic_style_warning_symbol = '⍄'
let g:syntastic_aggregate_errors = 1 " Run all checkers so I get all errors
" let g:syntastic_auto_loc_list = 1 " Auto Open/Close Location List

set swapfile
set backup
set backupdir=~/.config/nvim/tmp/backup//
set directory=~/.config/nvim/tmp/swap//
set undodir=~/.config/nvim/tmp/undo//

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

" match ErrorMsg '\s\+$'
highlight TrailingWhiteSpace ctermbg=red ctermfg=white
match TrailingWhiteSpace / \+$/

set cursorline
set shiftwidth=4
set tabstop=4
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

augroup VimCSS3Syntax
	autocmd!

	autocmd FileType css setlocal iskeyword+=-
augroup END
