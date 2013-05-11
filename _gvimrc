set guifont=Inconsolata:h14
set guifontwide=ＭＳ_ゴシック
set encoding=utf-8

"英語メニューにする
source $VIMRUNTIME/delmenu.vim 
set langmenu=none 
source $VIMRUNTIME/menu.vim

"英語メッセージにする
if has("multi_lang")
language C
endif

"IM Contorol Settings
if has('win32') || has('win64')
  " Windowsの場合
    inoremap <silent> <C-j> <C-^><C-r>=IMState('FixMode')<CR>
elseif has('unix')
  " Unixの場合    
    let IM_CtrlMode = 1
    inoremap <silent> <C-j> <C-r>=IMState('FixMode')<CR>
endif


