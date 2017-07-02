set guifont=Ricty_Diminished:h14

set encoding=utf-8

call SetStyle()
call SetIndentGuide()
IndentGuidesToggle

"Run script on python2
noremap <F2> :!python %<CR>"

"Run script on python3
noremap <F2> :!python3 %<CR>"

"IME制御
set iminsert=0
set imsearch=-1

"英語メニューにする
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_JP.utf-8
source $VIMRUNTIME/menu.vim

"英語メッセージにする
language C

" 縦幅　デフォルトは24
set lines=40
" 横幅　デフォルトは80
set columns=120
