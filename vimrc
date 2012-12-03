"plugins:
" pathogen
" ctrlp
" vim-powerline
" vim-ruby
" vim-javascript
" vimerl

"pathogen
call pathogen#infect()

"set no compatibility mode
set nocompatible

"enable syntax highlighting
syntax on

"set 256 colors
set t_Co=256
"set dark background
set background=dark
"show line numbers
set number
"show position
set ruler
"show status
set laststatus=2
"show glyphs
set encoding=utf-8
"show mode
set showmode
"show matching parenthesis
set showmatch
"show command
set showcmd
"show menu in status
set wildmenu
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
"enable backspace in insert mode
set backspace=eol,start,indent
"detect file changes
set autoread
"enable backups
set backup
"directory for backup files
set backupdir=~/.tmp/backup//
"directory for swap files
set dir=~/.tmp/swap//
"no wrap
set nowrap
"use auto indent
set autoindent
"use smart indent
set smartindent
"use mouse everywhere
set mouse=a
"no audible bell
set noerrorbells
"no visual bell
set novisualbell
"use system clipboard
set clipboard=unnamed

"select scheme
let g:solarized_termcolors=256
colorscheme solarized

"enable powerline
let g:Powerline_symbols = 'unicode'

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
