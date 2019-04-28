"colorscheme
colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark


set number
set laststatus=2
set clipboard=unnamed,unnamedplus,autoselect
set background =dark

" tab set
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set nocompatible

set splitbelow
set splitright
set history=50
set commentstring=\ #\ %s
set browsedir=buffer
set hidden

" japanese
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932,sjis
set encoding=utf-8

" backspace 
set backspace=indent,eol,start

"search settings
set hlsearch
set incsearch
set ignorecase
set smartcase


set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

"lisp
filetype plugin indent on
set showmatch
let lisp_rainbow=1

let g:lisp_rainbow=1
let g:lisp_instring=1
autocmd BufNewFile,BufRead *.l set tabstop=2 shiftwidth=2 lisp showmatch nocindent filetype=lisp
