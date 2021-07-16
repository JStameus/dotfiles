
" |                    d8,   ,d8888b  d8,                  d8b       |
" |                   `8P    88P'    `8P                   ?88       |
" |                       d888888P                          88b      |
" |  d8888b ?88,  88P  88b  ?88'      88b  88bd88b  d8888b  888888b  |
" | d8P' ?88 `?8bd8P'  88P  88P       88P  88P' ?8bd8P' `P  88P `?8b |
" | 88b  d88 d8P?8b,  d88  d88       d88  d88   88P88b     d88   88P |
" | `?8888P'd8P' `?8bd88' d88'      d88' d88'   88b`?888P'd88'   88b | @github

" |---------------------------[  VIM  ]------------------------------|

"   = GENERAL =
"-----------------------------------
set nocompatible

"   == File & Buffer Settings ==
set hidden                   " Enable switching buffers without saving
set splitright               " Open splits on right side instead of left
filetype on                  " Enable filetyp detection
filetype plugin on           " Enabling filetype plugins

"   == Editor UI & Cursor Settings ==
set number                   " Show line numbers
set relativenumber           " Show line numbers relative to cursor
set cursorline               " Enable current cursor line highlight
set scrolloff=5              " Scroll screen when cursor is 5 lines from border

"   == Window UI Settings ==
set showcmd                  " Show commands/key inputs below status line
set wildmenu                 " Enable wildmenu
set ruler                    " Show line and column number on status line
set showtabline=1            " Show tabline when there are more than one tab
set laststatus=2             " Always show status line
set shortmess-=c             " Suppress unnecessary 'hit Enter' prompts

"   == Input Settings ==
let mapleader=" "            " Re-bind the Leader key to Space
set timeoutlen=600           " Set the delay for commands to 600 ms

"   == Search & Matching Settings ==
set hlsearch                 " Highlight search matches
set incsearch                " Show matches in real-time when searching
set ignorecase               " Ignore case when searching
set smartcase                " Enable context-sensitive case detection
set infercase                " Enable smart case-sensitive completion

"   == Spell Checking & Completion ==
set spell spelllang=en_us    " Setting English as language to spell check
set nospell                  " Disables spell highlighting by default
set complete-=kspell	     " Disable kspell 
set completeopt=menuone      " Enable popup menu even if there is only one match 
set completeopt+=noinsert    " Do not insert from popup menu automatically
set completeopt+=preview     " Show more information about highlighted menu item

"   == Text Display Settings ==
syntax on                    " Enable syntax highlighting
set linebreak                " Break lines instead of going off screen
set showbreak=~~             " Override line break sign to two tildes
set textwidth=80             " Make text break at 80 characters width
set showmatch                " Highlight matching braces/parentheses etc
set expandtab                " Replace tab characters with spaces
set shiftwidth=4             " Setting default tab size to 4 
set tabstop=4
"-----------------------------------

"   = CUSTOM COMMANDS & KEYBINDS =
"-----------------------------------
"   == Insert Mode Commands ==
" jj               Leave insert mode
" ( [ { <          Create matching braces, parentheses etc
" Enter            Insert first suggestion and format (Requires CoC)
imap jj <Esc>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"   == Normal Mode Commands ==
" <leader>hh       Clear search highlighting
" <leader>o        Create blank line above and below current, enter insert mode 
" <leader>c        Delete buffer
" <leader>f        Open FZF
" <leader>i        Insert single character
" <leader>a        Append single character
" <leader>ev       Open .vimrc in a split
" <leader>sv       Source .vimrc 
" <leader>kk       Swap current line up
" <leader>jj       Swap current line down
" <leader>mv       mkview
" <leader>lv       loadview
nnoremap <leader>hh :nohls<CR>
nnoremap <leader>o o<Esc>O
nnoremap <leader>c :bd<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>i i_<Esc>r
nnoremap <leader>a a_<Esc>r
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>kk ddkP
nnoremap <leader>jj ddp
nnoremap <leader>mv :mkview<cr>
nnoremap <leader>lv :loadview<cr>

" == Visual Mode Commands ==
" <leader>n        Start typing a normal mode command on selected lines
" <leader>m        Use a macro on selected lines
" <leader>"        Surround selection with double quotes
" <leader>'        Surround selection with single quotes
" <leader>`        Surround selection with back ticks
" <leader>(        Surround selection with parentheses
" <leader>[        Surround selection with square brackets
" <leader>{        Surround selection with curly brackets
vnoremap <leader>n :normal<Space>
vnoremap <leader>m :normal<Space>@
vnoremap <leader>" <esc>`<i"<esc>`>a<right>"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>a<right>'<esc>
vnoremap <leader>` <esc>`<i`<esc>`>a<right>`<esc>
vnoremap <leader>( <esc>`<i(<esc>`>a<right>)<esc>
vnoremap <leader>[ <esc>`<i[<esc>`>a<right>]<esc>
vnoremap <leader>{ <esc>`<i{<esc>`>a<right>}<esc>

" == Function Key Commands ==
" F1               Open a new window and go to definition of word under the cursor
" F2               Replace all instances of selected word in buffer
" F3               Display highlight group for character under the cursor
nnoremap <F1> yiw:sp<CR>:tag <C-r>"<CR>
nnoremap <F2> yiw:%s/<C-r>"//g<Left><Left>
nnoremap <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
"-----------------------------------

" = SNIPPETS & ABBREVIATIONS =
"-----------------------------------
"   == HTML ==
" <leader>html     Standard HTML Boilerplate
nnoremap <Leader>html :-1read $HOME/.vim/snippets/html/boilerplate<CR>4jf>a

"   == Signatures ==
" mail#            Enter my developer email 
" git#             Enter my GitHub URL
iabbrev mail# oxifinch@protonmail.com
iabbrev git# https://github.com/oxifinch

" = PLUGINS =
"-----------------------------------
call plug#begin('~/.vim/plugged')
" == Installed ==
" coc.nvim              Autocompletion and suggestions for code editing
" rust.vim              Enables syntax highlighting, formatting etc for Rust
" vim-js                Enables better syntax highlighting for JavaScript
" vimwiki               Personal text-based wiki
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'yuezk/vim-js'
Plug 'vimwiki/vimwiki'

" == CoC Language Packages ==
" [x] coc-rust-analyzer      Rust 
" [ ] coc-pyright            Python 
" [x] coc-html               Basic HTML 
" [x] coc-emmet              Emmet HTML templates 
" [x] coc-css                CSS  
" [ ] coc-vetur              Vue.js 
" [x] coc-tsserver           TypeScript/JavaScript 

call plug#end()
"-----------------------------------

" = COLOR & DISPLAY =
"-----------------------------------
set background=dark
colorscheme derva

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"-----------------------------------

" = FILETYPE OVERRIDES =
"-----------------------------------
" .ejs             HTML
" .mjs             JavaScript
autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.mjs set filetype=javascript
"-----------------------------------

" = SCRAPPED SETTINGS =
"-----------------------------------
" set path-=**

" Setting up automatic mkview
" autocmd BufWinLeave * if expand("%") != "" | mkview | endif
" autocmd BufWinEnter * if expand("%") != "" | loadview | endif

" Python: Enables better syntax highlighting
" Plug 'vim-python/python-syntax'
" Handlebars: Syntax highlighting
" Plug '/mustache/vim-mustache-handlebars'
"-----------------------------------
