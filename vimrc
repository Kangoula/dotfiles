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

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcuts & custom commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:map ;; <Esc>
:imap ;; <Esc>

:command! CompileLatex execute "!pdflatex %"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let t_Co=256
set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:autocmd BufWritePost *.tex :CompileLatex


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }
set laststatus=2
set noshowmode
