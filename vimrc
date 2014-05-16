"plugins:
" pathogen
" ctrlp
" vim-airline
" vim-ruby
" tmuxline.vim
" vim-go
" YouCompleteMe
" tagbar
" syntastic
" nerdtree
" vim-fugitive

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
"disable backups
set nobackup
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
"use complete ctags completion
set omnifunc=syntaxcomplete#Complete
"use current buffer for files
set autochdir

"set leader
let mapleader = ','

"select scheme
let g:solarized_termcolors=256
colorscheme solarized

"custom ignore for ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|ct_run'

"setup tmuxline for vim-airline
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

"setup gotags for tagbar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"no by default
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }
"check on buffer open
let g:syntastic_check_on_open = 1
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        Errors
    endif
endfunction

"go class outline in tagbar
map <leader>t :TagbarToggle<CR>
"directory listing 
map <leader>n :NERDTreeToggle<CR>
"errors listing 
map <leader>e :call ToggleErrors()<CR>

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
"go source definition in new split
autocmd Filetype go nnoremap <leader>d :sp <CR>:exe "GoDef"<CR>
