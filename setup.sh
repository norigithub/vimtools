#!/bin/sh
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp .vimrc ~/
cp -r template ~/.vim
vim +BundleInstall +qall
