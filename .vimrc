
" |      _   _____  _                                     
" |     | | / ____|| |                                      |
" |     | || (___  | |_  __ _  _ __ ___    ___  _   _  ___  |
" | _   | | \___ \ | __|/ _` || '_ ` _ \  / _ \| | | |/ __| |	       
" || |__| | ____) || |_| (_| || | | | | ||  __/| |_| |\__ \ |
" | \____/ |_____/  \__|\__,_||_| |_| |_| \___| \__,_||___/ | @github

" |-- VIM --|

"-- BASIC FUNCTIONALITY -- 
set relativenumber
set ruler
set hlsearch
filetype on
syntax on

set tabstop=4
filetype plugin indent on 
"-------------------------

"-- COLOR SETUP --
"set termguicolors
set background=dark
colorscheme gruvbox
"-------------------------

"-- CUSTOM COMMANDS --
" Display information about syntax highlighting
map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
"-------------------------

"-- PLUGINS --
" Don't forget to run :PlugInstall after tweaking the setup! 
call plug#begin('~/.vim/plugged')

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Installed: coc-rust-analyzer
" Installed: coc-pyright 
" Installed: coc-html
" Installed: coc-css
" Installed: coc-emmet
" Installed: coc-vetur

" Automatically show Vim's autocomplete menu while typing.
Plug 'vim-scripts/AutoComplPop'

" LANGUAGE-SPECIFIC
" Rust
Plug 'rust-lang/rust.vim'

call plug#end()
"-------------------------

"-- SNIPPETS --
"-------------------------

"-- SPELL CHECKING & AUTOCOMPLETION --
set spell spelllang=en_us
set complete+=kspell	  
set completeopt=menuone,noinsert,preview
set shortmess+=c
"-------------------------

