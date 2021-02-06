
" |      _   _____  _                                     
" |     | | / ____|| |                                      |
" |     | || (___  | |_  __ _  _ __ ___    ___  _   _  ___  |
" | _   | | \___ \ | __|/ _` || '_ ` _ \  / _ \| | | |/ __| |	       
" || |__| | ____) || |_| (_| || | | | | ||  __/| |_| |\__ \ |
" | \____/ |_____/  \__|\__,_||_| |_| |_| \___| \__,_||___/ | @github

" |-- VIM --|

"+---------------------------------+
" BASIC FUNCTIONALITY  
"+---------------------------------+
" Line numbers 
set number 
set relativenumber

" Always show tabline
"set showtabline=2

" Show matching braces 
set showmatch

" Displaying position & commands on status bar
set ruler
set showcmd

" Setting the cursor boundaries for scrolling
set scrolloff=5

" Text wrapping
set linebreak
set showbreak=...
set textwidth=80

" Searching and highlighting
set hlsearch 
set incsearch 
set ignorecase
set smartcase

" Searching for files & buffers
set path+=**
set wildmenu

" Enabling switching between buffers without saving
set hidden

" Syntax highlighting and filetype recognition
filetype on
syntax on

" Setting default tab size to 4 & replacing tabs with spaces
set shiftwidth=4
set tabstop=4
set expandtab

" Enabling filetype detection
filetype plugin on 
"+---------------------------------+

"+---------------------------------+
" COLOR SETUP 
"+---------------------------------+
" Background Color Light/Dark
set background=dark
colorscheme pavilion 

" Colorscheme True Color Fixes
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"+---------------------------------+

"+---------------------------------+
" PLUGINS 
"+---------------------------------+
" Don't forget to run :PlugInstall after tweaking the setup! 
call plug#begin('~/.vim/plugged')

" Enable transparent background
Plug 'kjwon15/vim-transparent'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Installed: coc-rust-analyzer
" Installed: coc-pyright 
" Installed: coc-html
" Installed: coc-css
" Installed: coc-emmet
" Installed: coc-vetur

" LANGUAGE-SPECIFIC 
" Rust
Plug 'rust-lang/rust.vim'

call plug#end()
"+---------------------------------+

"+---------------------------------+
" CUSTOM COMMANDS & KEYBINDS
"+---------------------------------+
" TODO: Should , be my leader key? Explore the options here.

" F3: Display information about syntax highlighting
map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
"+---------------------------------

"+---------------------------------+
" SNIPPETS 
"+---------------------------------+
" GENERIC
" Automatically create matching braces etc.
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap < <><Left>

" HTML
" Standard Boilerplate
nnoremap ,html :-1read $HOME/.vim/snippets/boilerplate.html<CR>4jf>a
" Create a matching end tag
nnoremap ,het wbya<ewpbi/<Esc>ewbba

" JAVASCRIPT 
" Console Log
nnoremap ,jsl :-1read $HOME/.vim/snippets/jsconsolelog.js<CR>f(a

"+---------------------------------+

"+---------------------------------+
" SPELL CHECKING & AUTOCOMPLETION 
"+---------------------------------+
" Setting English as language to spell check
set spell spelllang=en_us

" Disables spell highlighting by default
set nospell

" Setting up spell checking and popup menu
set complete+=kspell	  
set completeopt=menuone,noinsert,preview
" Suppresses unnecessary 'hit Enter' prompts
set shortmess+=c
"+---------------------------------+
