#!/bin/sh
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp .vimrc ~/
cp -r templates ~/.vim
vim +BundleInstall +qall
