set guifont=Inconsolata:h14
set guifontwide=MS_Gothic:h14
set encoding=utf-8
call SetStyle()

"IME制御
set iminsert=0
set imsearch=-1

"英語メニューにする
source $VIMRUNTIME/delmenu.vim 
set langmenu=none 
source $VIMRUNTIME/menu.vim

"英語メッセージにする
language C

" 縦幅　デフォルトは24
set lines=40
" 横幅　デフォルトは80
set columns=120
