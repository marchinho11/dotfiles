let mapleader = " "

au FocusGained,BufEnter * :checktime " Autoreload
syntax enable

set number
set relativenumber
set cursorline

set scrolloff=7

set clipboard=unnamed " Yank to clipboard.

set noshowmode " Do not show mode on command line since lightline can show it

" Tabs and indenting
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile

set ignorecase " Case-insensitive searching.
set smartcase " But case-sensitive if expression contains a capital letter.
set showmatch  " Show matching char (like {})
set wrapscan " Circle search

set termguicolors

set mousehide
set mouse=a

set hidden " Handle multiple buffers better

set encoding=utf-8
set fileencodings=utf-8

set backspace=indent,eol,start
set completeopt=menu,menuone,noselect

" Lua auto format
autocmd FileType lua nnoremap <buffer> <c-k> :call LuaFormat()<cr>
autocmd BufWrite *.lua call LuaFormat()

