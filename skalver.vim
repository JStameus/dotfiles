" AUTHOR: Joseph Stameus
" REPO: https://github.com/JStameus/skalver-vim
"
" SUPPORT: 
" 256 color terminals, GVim, Termguicolors
"
" SKALVER:
set background=dark

highlight clear
	if exists("syntax_on")
	syntax reset
endif

let g:colors_name="skalver"

" ------------------------------------------------------------------------------
" TODO: Highlight current line slightly
" TODO: Make comment color slightly brighter
" TODO: Make line number color slightly brighter and tint it
" TODO: Change split/status bar colors to blend in better
" TODO: Figure out how to color the "no write since last change" kind of
" messages
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Opening statements, let/var/fn/function and
" things like for/if/while etc = red
"
" Values such as numbers, strings, attributes etc = orange
"
" functions/methods/class names = green
"
" Variables, constants, most common text = foreground
" Operators, parentheses, brackets = midtones
"
" Basically, red should be a common accent, orange should be all literal values,
" and green should be used sparingly. Every other generic thing should be
" white. If visual clutter gets to be too much, red should be the first
" thing to be replaced with white.
" ------------------------------------------------------------------------------
 
" COLOR CODES:
" background: #272c2d
" background highlight: #2d393d
" foreground: #e5e0d8
" midtones: #b5cdce 
" comments: #5d7a7a
" comments brighter: #668484
"
" green normal: #8fd39c
" green dim: #659b6f 
"
" red normal: #dd4c42
" red dim: #a0524d 
"
" orange normal: #e8b978
" orange dim: #b7a26c 
"
" testing: #f943f6

" COMMON:
hi Normal guifg=#e5e0d8 guibg=#252d33
hi PreProc guifg=#e5e0d8 guibg=NONE
hi Comment guifg=#5d7a7a guibg=NONE
hi Function guifg=#8fd39c guibg=NONE
hi Statement guifg=#dd4c42 guibg=NONE
hi Repeat guifg=#dd4c42 guibg=NONE
hi Constant guifg=#8fd39c guibg=NONE
hi Number guifg=#e8b978 guibg=NONE
hi Identifier guifg=#dd4c42 guibg=NONE
hi String guifg=#8fd39c guibg=NONE 
hi Special guifg=#e8b978 guibg=NONE
hi Conditional guifg=#dd4c42 guibg=NONE
hi Operator guifg=#b5cdce guibg=NONE
hi Title guifg=#e5e0d8 guibg=NONE
hi Delimiter guifg=#e5e0d8 guibg=NONE

" SPELLING:
hi SpellBad guifg=#e8b978 guibg=#5d7a7a
hi SpellBad guifg=#e8b978 guibg=#5d7a7a
hi SpellBad guifg=#e8b978 guibg=#5d7a7a
hi SpellBad guifg=#e8b978 guibg=#5d7a7a

" UI:
hi LineNr guifg=#5d7a7a guibg=NONE
hi Cursor guifg=#000000 guibg=NONE gui=NONE
hi CursorLineNr guifg=#668484 guibg=NONE
hi EndOfBuffer guifg=#668484 guibg=NONE
hi VertSplit guifg=#d2c7ba guibg=#668484 
hi MatchParen guifg=#e5e0d8 guibg=NONE gui=reverse
hi MoreMsg guifg=#d2c7ba guibg=NONE
hi Folded guifg=#d2c7ba guibg=#2d393d 
hi FoldColumn guifg=#d2c7ba guibg=#2d393d 
hi Visual guifg=#d2c7ba guibg=#5d7a7a
hi Search guifg=#d2c7ba guibg=#5d7a7a
hi Question guifg=#e8a74c guibg=NONE
hi Error guifg=#d2c7ba guibg=#cd5148 gui=reverse
hi ErrorMsg guifg=#d2c7ba guibg=NONE gui=NONE
hi WarningMsg  guifg=#e8a74c guibg=NONE gui=NONE
hi Directory guifg=#d2c7ba guibg=NONE
hi WildMenu guifg=#8fd39c guibg=NONE gui=reverse
hi SignColumn guifg=#f943f6 guibg=#cd5148
hi Pmenu guifg=#e5e0d8 guibg=#2d393d
hi PmenuSel guifg=#8fd39c guibg=#2d393d gui=reverse
hi TabLine guifg=#d2c7ba guibg=#2d393d 
hi TabLineSel guifg=#e8a74c guibg=#2d383d

" VIMSCRIPT:
hi vimOption guifg=#e5e0d8 guibg=NONE
hi vimGroup guifg=#e5e0d8 guibg=NONE
hi vimHiGroup guifg=#e5e0d8 guibg=NONE
hi vimHiGuiFgBg guifg=#b5cdce guibg=NONE
hi vimHiGui guifg=#b5cdce guibg=NONE
hi vimFTOption guifg=#e8b978 guibg=NONE
hi vimSynType guifg=#e8b978 guibg=NONE
hi vimLineComment guifg=#5d7a7a guibg=NONE
hi vimCommentTitle guifg=#86bc90 guibg=NONE gui=bold
hi vimTodo guifg=#86bc90 guibg=NONE
hi vimSetSep guifg=#d2c7ba guibg=NONE

" HELP:
hi helpNote guifg=#86bc90 guibg=NONE gui=bold
hi helpOption guifg=#b5cdce guibg=NONE
hi helpWarning guifg=#cd5148 guibg=NONE
hi helpExample guifg=#b5cdce guibg=NONE

" HTML:
hi htmlTag guifg=#b5cdce guibg=NONE
hi htmlEndTag guifg=#b5cdce guibg=NONE
hi htmlTagName guifg=#dd4c42 guibg=NONE
hi htmlArg guifg=#e8b978 guibg=NONE
hi htmlTitle guifg=#e5e0d8 guibg=NONE
hi htmlLink guifg=#e5e0d8 guibg=NONE

" CSS:
hi cssTagName guifg=#e5e0d8 guibg=NONE
hi cssBraces guifg=#b5cdce guibg=NONE
hi cssAttrComma guifg=#b5cdce guibg=NONE
hi cssCustomProp guifg=#e5e0d8 guibg=NONE
hi cssBackgroundProp guifg=#e5e0d8 guibg=NONE
hi cssBoxProp guifg=#b5cdce guibg=NONE
hi cssFlexibleBoxProp guifg=#b5cdce guibg=NONE
hi cssFontProp guifg=#b5cdce guibg=NONE
hi cssPositioningProp guifg=#b5cdce guibg=NONE
hi cssBorderProp guifg=#b5cdce guibg=NONE
hi cssMediaProp guifg=#b5cdce guibg=NONE
hi cssTextProp guifg=#b5cdce guibg=NONE
hi cssUIProp guifg=#b5cdce guibg=NONE
hi cssListProp guifg=#b5cdce guibg=NONE
hi cssTransitionProp guifg=#b5cdce guibg=NONE
hi cssColorProp guifg=#b5cdce guibg=NONE
hi cssAtKeyword guifg=#dd4c42 guibg=NONE
hi cssPseudoClassId guifg=#b5cdce guibg=NONE

" JAVASCRIPT:
hi javaScript guifg=#e5e0d8 guibg=NONE
hi javaScriptFunction guifg=#dd4c42 guibg=NONE
hi javaScriptParens guifg=#b5cdce guibg=NONE
hi javaScriptBraces guifg=#b5cdce guibg=NONE
hi javaScriptNumber guifg=#e8b978 guibg=NONE
hi javaScriptBoolean guifg=#e8b978 guibg=NONE
hi javaScriptNull guifg=#e8b978 guibg=NONE

" JSON:
hi jsonBraces guifg=#b5cdce guibg=NONE
hi jsonKeyword guifg=#dd4c42 guibg=NONE

" PYTHON:
hi pythonInclude guifg=#dd4c42 guibg=NONE
hi pythonBuiltin guifg=#e5e0d8 guibg=NONE
hi pythonExceptions guifg=#e8b978 guibg=NONE

" SHELL SCRIPT:
hi shCmdSubRegion guifg=#b5cdce guibg=NONE
hi shTestOpr guifg=#b5cdce guibg=NONE
hi shDerefVar guifg=#e5e0d8 guibg=NONE

" RUST:
hi rustStorage guifg=#e5e0d8 guibg=NONE
hi rustTrait guifg=#e8b978 guibg=NONE
hi rustSigil guifg=#e8b978 guibg=NONE
hi rustType guifg=#e8b978 guibg=NONE
hi rustFoldBraces guifg=#d2c7ba guibg=NONE
hi rustFuncName guifg=#e5e0d8 guibg=NONE gui=italic


" MARKDOWN:

