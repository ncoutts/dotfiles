#!/bin/bash
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle
mdkir ~/.vim/colors
git clone https://github.com/bling/vim-airline.git ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle
cd ~/.vim/colors && wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim && cd --

mkdir ~/tmp
mkdir ~/tmp/backup
mkdir ~/tmp/swap
mkdir ~/tmp/undo
