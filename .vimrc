set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has("win32") || has("win64")
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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

"読み込み時のエンコード順番
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

set encoding=utf-8

"タブをスペース4に変換
set expandtab
set smarttab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent

":nohにESC*2割り当て
noremap <silent> <ESC><ESC> :noh<CR>

"Run Python
if has("win32") || has("win64")
    set pythonthreedll=C:\Users\Nori\AppData\Local\Programs\Python\Python38\python38.dll
    noremap <F5> :term python %<CR>
else
    noremap <F5> :term python3 %<CR>
endif

"Toggle NERDTree
noremap <F4> :NERDTreeToggle<CR>"

""vim-indent-guides
function SetIndentGuide()
    ""Use this option to control whether the plugin is enabled on Vim startup.
    let g:indent_guides_enable_on_vim_startup = 1
    "Use this option to customize the size of the indent guide
    let g:indent_guides_guide_size=1
    "Use this option to control which indent level to start showing guides from.
    let g:indent_guides_start_level = 2
endfunction

"Color Scheme
function SetStyle()
    set t_Co=256
    syntax on
    set background=dark
    colorscheme gruvbox
endfunction

"コマンドプロンプトではcolorscheme、IndentGuideを適用しない。
if !(has("win32") || has("win64"))
    call SetStyle()
    call SetIndentGuide()
endif
