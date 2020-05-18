" init.vim: neovim configuration
"
" see also nvim (:help vimrc)


syntax on " enable syntax highlighting
set tabstop=4 " tabs are 4 spaces
set softtabstop=4 " # of spaces equal to a tab
set shiftwidth=4 " set > shift to 4 spaces
set expandtab " turn tabs into spaces
set smarttab " adds/removes tabs at line start
set autoindent " copy indent from previous line

set title " set term/window title
set number " display line numbers
set wrap " enable line wrapping
set breakindent " wrapped lines have have indention
set wildmenu " enable autocomplete menu

set incsearch " search while being typed
set hlsearch " highlight search result
set showmatch " show matching bracket

set showcmd " show visual selection size, & last cmd
set showmode " show if in insert/visual/replace
set ruler " show current position (ie. Line,Char)
set cc=80 " set an 80 column border

set nocompatible " disable vi compatibility
filetype plugin indent on " allow auto indent depending on filetype

set encoding=utf-8
