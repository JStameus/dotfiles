
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
set nocompatible

" Line numbers 
set number 
set relativenumber
set cursorline

" Show tabline
set showtabline=1

" Show status line
set laststatus=2

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

" Case-sensitivity options
set ignorecase
set smartcase
set infercase

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

" Re-binding the Leader key
let mapleader=" "
"+---------------------------------+

"+---------------------------------+
" COLOR SETUP 
"+---------------------------------+
" Background Color Light/Dark
set background=dark
colorscheme derva

" True Color Detection Fix
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
" Plug 'kjwon15/vim-transparent'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Installed: coc-rust-analyzer
" Installed: coc-pyright 
" Installed: coc-html
" Installed: coc-css
" Installed: coc-emmet
" Installed: coc-vetur
" Installed: coc-tsserver

" LANGUAGE-SPECIFIC 
" Rust: Enables syntax-highlighting, formatting etc
Plug 'rust-lang/rust.vim'
" JavaScript: Enables better syntax highlighting
Plug 'yuezk/vim-js'
" Python: Enables better syntax highlighting
Plug 'vim-python/python-syntax'

" Vim Wiki
Plug 'vimwiki/vimwiki'

call plug#end()
"+---------------------------------+

"+---------------------------------+
" CUSTOM COMMANDS & KEYBINDS
"+---------------------------------+
" F3: Display information about syntax highlighting
map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" F2: Replace all instances of selected word in file.
map <F2> yiw:%s/<C-r>"//g<Left><Left>

" LEADER COMMANDS:
" Normal hh: Clear search highlighting.
nnoremap <Leader>hh :nohls<CR>

" Normal o: Add new line above and below current line, and enter insert mode.
nnoremap <Leader>o o<Esc>O

" Normal  c: Delete("close") buffer.
nnoremap <Leader>c :bd<CR>

" Visual n: Start typing a normal mode command on selected lines.
vnoremap <Leader>n :normal<Space>

" Visual m: Prepare to perform a macro on selected lines.
vnoremap <Leader>m :normal<Space>@
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

" Create matching braces and jump to indented block
nnoremap <Leader>b a<Space>{}<Left><CR><Esc>O

" HTML
" Standard HTML Boilerplate
nnoremap <Leader>html :-1read $HOME/.vim/snippets/boilerplate.html<CR>4jf>a
" Create a matching end tag
nnoremap <Leader>het wbya<ewpbi/<Esc>ewbba

" JAVASCRIPT 
" Console Log
nnoremap <Leader>jsl O<Esc>:-1read $HOME/.vim/snippets/jsconsolelog.js<CR>f(a

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
