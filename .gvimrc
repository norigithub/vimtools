set guifont=Inconsolata:h14
set guifontwide=MS_Gothic:h14
set encoding=utf-8


if has('win32') || has('win64')
  " Windowsの場合
    "英語メニューにする
    source $VIMRUNTIME/delmenu.vim 
    set langmenu=none 
    source $VIMRUNTIME/menu.vim
    
    "英語メッセージにする
    if has("multi_lang")
        language C
    endif
elseif has('unix')
  " Unixの場合    
endif


