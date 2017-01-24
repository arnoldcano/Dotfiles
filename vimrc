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
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"promptline.vim
let g:promptline_theme = 'onedark'

"vim-polyglot
let g:jsx_ext_required = 0

"vim-test
nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>y :TestSuite<CR>

"vim-go
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"tagbar
nmap <silent> <leader>T :TagbarToggle<CR>
