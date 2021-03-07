set guifont=Cica:h14
set guifont=HackGenNerd:h14

set encoding=utf-8

call SetStyle()
call SetIndentGuide()
IndentGuidesToggle

"IME制御
set iminsert=0
set imsearch=-1

"英語メニューにする
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_JP.utf-8
source $VIMRUNTIME/menu.vim

"英語メッセージにする
language C

"emoji
set rop=type:directx,renmode:5

" 縦幅　デフォルトは24
set lines=40
" 横幅　デフォルトは80
set columns=120
