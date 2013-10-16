""Vundle setting
set nocompatible               " be iMproved
filetype off                   " required!

if has("win32") || has("win64")
    set rtp+=~/vimfiles/bundle/vundle 
    call vundle#rc('~/vimfiles/bundle')
    nnoremap <C-Tab>   gt
    nnoremap <C-S-Tab> gT
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tomasr/molokai'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on     " required!
""End Vundle setting

"mapleader
let mapleader=","

"行番号の表示
set number

"ステータスラインを常に表示
set laststatus=2

"ステータスラインの表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"キー操作
set backspace=indent,eol,start

"インクリメンタルな検索
set incsearch

"検索結果をハイライト
set hlsearch

"起動時ハイライトを無効にする
set viminfo+=h

"新規ファイル作成時のテンプレート指定
"html
autocmd BufNewFile *.html 0r ~/.vim/template/skel.html
"Python3
autocmd BufNewFile *.py 0r ~/.vim/template/skel.py

"読み込み時のエンコード順番
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

"タブをスペース4に変換
set expandtab
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4


"Color Scheme
set t_Co=256
syntax on
colorscheme molokai
set background=dark

"Toggle NERDTree
noremap <F2> :NERDTreeToggle<CR>"
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

"vim-indent-guides
""Use this option to control whether the plugin is enabled on Vim startup.
let g:indent_guides_enable_on_vim_startup = 1
""Use this option to customize the size of the indent guide
let g:indent_guides_guide_size=1
""Use this option to control which indent level to start showing guides from.
let g:indent_guides_start_level = 2
""Use this option to control the percent at which the highlight colors will be lightened or darkened.
""(not work on terminal?)
let g:indent_guides_color_change_percent = 10
""Use this option to control whether or not the plugin automatically calculates the highlight colors.
let g:indent_guides_auto_colors = 0
""Change odd Odd and Even line color
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=8
