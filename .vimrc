
" |      _   _____  _                                     
" |     | | / ____|| |                                      |
" |     | || (___  | |_  __ _  _ __ ___    ___  _   _  ___  |
" | _   | | \___ \ | __|/ _` || '_ ` _ \  / _ \| | | |/ __| |	       
" || |__| | ____) || |_| (_| || | | | | ||  __/| |_| |\__ \ |
" | \____/ |_____/  \__|\__,_||_| |_| |_| \___| \__,_||___/ | @github

" |-- VIM --|

" BASIC FUNCTIONALITY  
"-----------------------------------
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

" Setting search path 
set path-=**
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

" Setting up automatic mkview
autocmd BufWinLeave * if expand("%") != "" | mkview | endif
autocmd BufWinEnter * if expand("%") != "" | loadview | endif

" Re-binding the Leader key
let mapleader=" "

" Setting the delay for commands
set timeoutlen=600
"
" Enabling filetype detection
filetype plugin on 

" FILETYPE OVERRIDES:
"-----------------------------------

" CUSTOM COMMANDS & KEYBINDS
"-----------------------------------
" jj: Leave insert mode.
imap jj <Esc>

" F1: Open a new window and go to definition of currently selected word.
nnoremap <F1> yiw:sp<CR>:tag <C-r>"<CR>

" F2: Replace all instances of selected word in file.
nnoremap <F2> yiw:%s/<C-r>"//g<Left><Left>

" F3: Display information about syntax highlighting
nnoremap <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>


" LEADER COMMANDS:
" Normal hh: Clear search highlighting.
nnoremap <Leader>hh :nohls<CR>

" Normal o: Add new line above and below current line, and enter insert mode.
nnoremap <Leader>o o<Esc>O

" Normal c: Delete("close") buffer.
nnoremap <Leader>c :bd<CR>

" Normal f: Quickly open FZF
nnoremap <Leader>f :FZF<CR>

" Normal i: Insert a single character
nnoremap <Leader>i i_<Esc>r

" Normal a: Append a single character
nnoremap <Leader>a a_<Esc>r

" Normal z: Create fold inside curly brackets
nnoremap <Leader>z Vi{zf

" Visual n: Start typing a normal mode command on selected lines.
vnoremap <Leader>n :normal<Space>

" Visual m: Prepare to perform a macro on selected lines.
vnoremap <Leader>m :normal<Space>@
"----------------------------------

" SNIPPETS 
"-----------------------------------
" GENERIC:
" Automatically create matching braces etc.
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap < <><Left>

" Create matching braces and jump to indented block
nnoremap <Leader>b a<Space>{}<Left><CR><Esc>O

" Create matching braces and jump to indented block from Insert mode
inoremap <C-b> <Esc><Right>a<Space>{}<Left><CR><Esc>O

" HTML:
" Standard HTML Boilerplate
nnoremap <Leader>html :-1read $HOME/.vim/snippets/boilerplate.html<CR>4jf>a
" Create a matching end tag
nnoremap <Leader>het wbya<ewpbi/<Esc>ewbba

"-----------------------------------

" SPELL CHECKING & AUTOCOMPLETION 
"-----------------------------------
" Setting English as language to spell check
set spell spelllang=en_us

" Disables spell highlighting by default
set nospell

" Setting up spell checking and popup menu
set complete-=kspell	  
set completeopt=menuone,noinsert,preview

" <CR>: Insert the first completion item and format it if possible.
" NOTE: Requires Coc to function!
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Suppresses unnecessary 'hit Enter' prompts
set shortmess-=c
"-----------------------------------

" COLOR SETUP 
"-----------------------------------
set background=dark
colorscheme derva

" True Color Detection Fix
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"-----------------------------------

" PLUGINS 
"-----------------------------------
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
" Installed: coc-tsserver

" LANGUAGE-SPECIFIC 
" Rust: Enables syntax-highlighting, formatting etc
Plug 'rust-lang/rust.vim'
" JavaScript: Enables better syntax highlighting
Plug 'yuezk/vim-js'
" Python: Enables better syntax highlighting
Plug 'vim-python/python-syntax'
" Handlebars: Syntax highlighting
Plug '/mustache/vim-mustache-handlebars'

" Vim Wiki
Plug 'vimwiki/vimwiki'

call plug#end()
"-----------------------------------

