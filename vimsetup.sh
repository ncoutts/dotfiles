#!/bin/bash
mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/colors
mkdir ~/.vim/tmp
mkdir ~/.vim/tmp/backup
mkdir ~/.vim/tmp/swap
mkdir ~/.vim/tmp/undo
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim/colors && wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim && cd --
