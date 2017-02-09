"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Sets how many lines of history VIM has to remember
set history=700

filetype plugin on
filetype indent on
filetype off

set ruler
set ignorecase
set smartcase
set hlsearch
set showmatch
set autoindent
set nocompatible
set number
set nobackup
set wildmenu
set wildmode=list:longest
set spell spelllang=fr
set guifont=Source\ Code\ Pro\ 14
set tabstop=4

syntax enable 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'raimondi/delimitmate' "auto-colsing brackets...
"Plugin 'LaTeX-Box-Team/LaTeX-Box' 
Plugin 'scrooloose/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jbgutierrez/vim-babel'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcuts & custom commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:map ;; <Esc>
:imap ;; <Esc>
map <C-n> :NERDTreeToggle<CR>
map <silent> <A-Up> :wincmd k<CR>
map <silent> <A-Down> :wincmd j<CR>
map <silent> <A-Left> :wincmd h<CR>
map <silent> <A-Right> :wincmd l<CR>

:command! CompileLatex execute "!pdflatex %"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let t_Co=256
colorscheme eva01 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:autocmd BufWritePost *.tex :CompileLatex
":autocmd vimenter * NERDTree

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctrl P
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }
set laststatus=2
set noshowmode
