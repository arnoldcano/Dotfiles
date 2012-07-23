"plugins:
" pathogen
" ctrlp

"pathogen
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"set no compatibility mode
set nocompatible

"enable syntax highlighting
syntax on
"select scheme
colorscheme desert

"show line numbers
set number
"show position
set ruler
"show status
set laststatus=2
"show mode
set showmode
"show matching parenthesis
set showmatch
"show command
set showcmd
"show tabs
set list
"tab according to sw not ts
set smarttab
"highlighting in search
set hlsearch
"show search matches as you type
set incsearch
"ignore case in search
set ignorecase
"case inferred by default
set infercase
"search case sensitive if caps
set smartcase
"detect file changes
set autoread
"no backups
set nobackup
"no swap files
set noswapfile
"no wrap
set nowrap
"use auto indent
set autoindent
"use mouse everywhere
set mouse=a
"no audible bell
set noerrorbells
"no visual bell
set novisualbell
"use system clipboard
set clipboard=unnamed

"enable filetype detection
filetype on
"enable filetype-specific indenting
filetype indent on
"enable filetype-specific plugins
filetype plugin on

"default spaces
autocmd FileType * set ts=4 sw=4 et
"ruby
autocmd FileType ruby,eruby,yaml set ts=2 sw=2 et
"javascript
autocmd FileType javascript set ts=2 sw=2 et
