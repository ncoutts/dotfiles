#!/bin/bash
mkdir ~/.config/nvim
mkdir ~/.config/nvim/bundle
mkdir ~/.config/nvim/colors
mkdir ~/.config/nvim/tmp
mkdir ~/.config/nvim/tmp/backup
mkdir ~/.config/nvim/tmp/swap
mkdir ~/.config/nvim/tmp/undo
git clone https://github.com/gmarik/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
cd ~/.config/nvim/colors && wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim && cd --
