#!/bin/bash
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle
mkdir ~/.vim/colors
mkdir ~/.vim/tmp
mkdir ~/.vim/tmp/backup
mkdir ~/.vim/tmp/swap
mkdir ~/.vim/tmp/undo
git clone https://github.com/bling/vim-airline.git ~/.vim/bundle/vim-airline
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/wookiehangover/jshint.vim.git ~/.vim/bundle/jshint-vim
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim
cd ~/.vim/colors && wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim && cd --
cd ~/.vim/autoload && wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim && cd --
