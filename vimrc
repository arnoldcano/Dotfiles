execute pathogen#infect()
syntax on
colorscheme onedark
filetype plugin indent on
set background=dark
set mouse=a
set number
set clipboard=unnamed
set list
set listchars=tab:▸\ ,eol:¬
set nowrap
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
let mapleader=","
autocmd Filetype html,ruby,javascript setlocal ts=2 sts=2 sw=2 et

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

"vim-airline
let g:airline_powerline_fonts = 1

"vim-polyglot
let g:jsx_ext_required = 0

"vim-test
let test#strategy = "dispatch"
nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>y :TestSuite<CR>
