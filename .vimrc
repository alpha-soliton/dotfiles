"=========
"vim-clang
"=========
" 'Shougo/neocomplete.vim' {{{
let g:neocomplete#enable_at_startup = 1
if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"""}}}

" 'justmao945/vim-clang' {{{

" disable auto completion for vim-clanG
let g:clang_auto = 0
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1

" default 'longest' can not work with neocomplete
let g:clang_c_completeopt   = 'menuone'
let g:clang_cpp_completeopt = 'menuone'

let g:clang_exec = 'clang'
let g:clang_format_exec = 'clang-format'

let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '
  \ -std=c++1z 
  \ -stdlib=libc++ 
  \ -pedantic-errors
  \ '

" }}}


"dein Scripts---------------
if &compatible
    set nocompatible        "Be iMproved
endif

let s:dein_path = expand('~/.vim/dein')
let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

" Required:
set runtimepath+=/home/soliton/.vim/dein/repos/github.com/Shougo/dein.vim

" Required
if dein#load_state('/home/soliton/.vim/dein')
    call dein#begin('/home/soliton/.vim/dein')

    "Let dein manage dein
    "" Required:
    call dein#add('/home/soliton/.vim/.dein/repos/gtihub.com/Shougo/dein.vim')

    " Add or remove your plugins here like this:
    " call dein#add('Shugo/neosnippet.vim')
    " call dein#add('Shugo/neosnippet-snippets')

    let g:config_dir = expand('~/.vim/dein/userconfig')
    let s:toml = g:config_dir . '/plugins.toml'
    let s:lazy_toml = g:config_dir . '/plugins_lazy.toml'

    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})
    call dein#add('Shougo/neocomplete.vim')
    call dein#add('Shougo/vimproc.vim', {'build': 'make'})
    call dein#add('justmao945/vim-clang')
    call dein#add('Shougo/neoinclude.vim')

    "Required:
    call dein#end()
    call dein#save_state()
endif

"Required:
filetype plugin indent on
syntax enable

" if you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-----------



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
