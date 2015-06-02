cd %USERPROFILE%
call D:\Program\Git\bin\git.exe clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
copy vimtools\.vimrc .vimrc
copy vimtools\.gvimrc .gvimrc
pause
