#!/bin/sh

dir=~/vimfiles/bundle/vundle
if [ ! -e $dir ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
cp .vimrc ~/_vimrc
cp .gvimrc ~/_gvimrc
cp -r template ~/vimfiles
vim +BundleInstall +qall
