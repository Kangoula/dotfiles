"""""""""""""""""""""""""
" plugins
"""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'

Plug 'luochen1990/rainbow'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'clojure-vim/acid.nvim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

"""""""""""""""""""""""""
" commands
"""""""""""""""""""""""""

" open NerdTree on startup if no file is specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window open is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""
" mappings
""""""""""""""""""""""""
let mapleader = ' '
map <C-n> :NERDTreeToggle<CR>
map ;; <Esc>
imap ;; <Esc>
" exist terminal mode with <Esc> key
tnoremap <Esc> <C-\><C-n>
" open vertical shell
nnoremap <C-t><C-v> <c-w><c-v><c-w><c-l>:e term://$SHELL<CR>A
" open horizontal shell
nnoremap <c-t><c-s> <c-w><c-s><c-w><c-j>:e term://$SHELL<CR>A

""""""""""""""""""""""""
" config 
""""""""""""""""""""""""
":call deoplete#enable()
let g:deoplete#enable_at_startup = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

filetype plugin indent on

set ruler
set ignorecase
set smartcase
set autoindent
set number
set expandtab
set shiftwidth=2

let g:airline#extensions#tabline#enabled = 1

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let t_Co=256
colorscheme dracula

let g:rainbow_active = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


