"dein Scripts---------------
if &compatible
    set nocompatible        "Be iMproved
endif

let s:dein_path = expand('~/.vim/dein')
let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

" Required:
set runtimepath+=/home/toyota/.vim/dein/repos/github.com/Shougo/dein.vim

" Required
if dein#load_state('/home/toyota/.vim/dein')
    call dein#begin('/home/toyota/.vim/dein')

    "Let dein manage dein
    "" Required:
    call dein#add('/home/toyota/.vim/.dein/repos/gtihub.com/Shougo/dein.vim')

    " Add or remove your plugins here like this:
    " call dein#add('Shugo/neosnippet.vim')
    " call dein#add('Shugo/neosnippet-snippets')

    let g:config_dir = expand('~/.vim/dein/userconfig')
    let s:toml = g:config_dir . '/plugins.toml'
    "let s:lazy_toml = g:config_dir . '/plugins_lazy.toml'

    "call dein#load_toml(s:toml, {'lazy': 0})
    "call dein#load_toml(s:lazy_toml, {'lazy': 1})
    call dein#add('Shougo/neocomplete.vim')
    "call dein#add('Shougo/vimproc.vim', {'build': 'make'})
    call dein#add('justmao945/vim-clang')
    call dein#add('Shougo/neoinclude.vim')
		call dein#add('sainnhe/everforest')
		call dein#add('jiangmiao/auto-pairs')

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

if has('termguicolors')
	set termguicolors
endif

set background=light
let g:everforest_background = 'soft'
colorscheme everforest

set number
set tabstop=2
set cursorline
set clipboard+=unnamed
