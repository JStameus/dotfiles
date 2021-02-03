
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
" Line numbers and ruler
set number 
set relativenumber
set ruler

" Displays key presses
set showcmd

" Searching and highlighting
set is 
set hlsearch 

" Searching for files & buffers
set path+=**
set wildmenu

" Syntax highlighting and filetype recognition
filetype on
syntax on

" Setting default tab size to 4
set tabstop=4
filetype plugin indent on 
"+---------------------------------+

"+---------------------------------+
" COLOR SETUP 
"+---------------------------------+
" Background Color Light/Dark
set background=dark
colorscheme skalver 

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

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Installed: coc-rust-analyzer
" Installed: coc-pyright 
" Installed: coc-html
" Installed: coc-css
" Installed: coc-emmet
" Installed: coc-vetur

" Enable transparent background
Plug 'kjwon15/vim-transparent'

" Automatically show Vim's autocomplete menu while typing.
Plug 'vim-scripts/AutoComplPop'

" LANGUAGE-SPECIFIC 
" Rust
Plug 'rust-lang/rust.vim'

call plug#end()
"+---------------------------------+

"+---------------------------------+
" CUSTOM COMMANDS & KEYBINDS
"+---------------------------------+
" F3: Display information about syntax highlighting
map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
"+---------------------------------

"+---------------------------------+
" SNIPPETS 
"+---------------------------------+
" HTML Boilerplate
nnoremap ,html :-1read $HOME/.vim/snippets/boilerplate.html<CR>4jf>a

" JavaScript Console Log
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
set shortmess+=c
"+---------------------------------+
