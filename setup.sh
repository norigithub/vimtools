#!/bin/sh

dir=~/.vim/bundle/vundle
if [ ! -e $dir ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
cp .vimrc ~/
cp -r template ~/.vim
vim +BundleInstall +qall
vim +BundleUpdate +qall

cp .dircolors ~/
