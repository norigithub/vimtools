#!/bin/sh
git clone https://github.com/gmarik/vundle.git ~/vimfiles/bundle/vundle
cp .vimrc ~/_vimrc
cp .gvimrc ~/_gvimrc
cp -r template ~/vimfiles
vim +BundleInstall +qall