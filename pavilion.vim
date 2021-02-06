" AUTHOR: Joseph Stameus
" REPO: https://github.com/JStameus/pavilion-vim
"
" SUPPORT: 
" 256 color terminals, GVim, Termguicolors
"
" PAVILION:
set background=dark

highlight clear
	if exists("syntax_on")
	syntax reset
endif

let g:colors_name="pavilion"

" ------------------------------------------------------------------------------
" TODO: Make line number color slightly brighter and tint it
" TODO: Figure out how to color the 'no write since last change' kind of
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
" background: #232a2f
" background highlight: #2d393d
" background faint: #242b30

" foreground: #9bbec6
" foreground highlight: #c2d5d6 

" comments: #5b6b7a
"
" blue: #8aaecc 
" gold: #d0bf97
" copper: #bc8865 
" seafoam green: #7ed6c1
" purple normal: #c489bd
"
" testing: #ff0000

" COMMON:
hi Normal guifg=#9bbec6 guibg=#252d33 
hi PreProc guifg=#9bbec6 guibg=NONE
hi Comment guifg=#5b6b7a guibg=NONE
hi Function guifg=#7ed6c1 guibg=NONE
hi Statement guifg=#d0bf97 guibg=NONE
hi Repeat guifg=#d0bf97 guibg=NONE
hi Constant guifg=#7ed6c1 guibg=NONE
hi Number guifg=#c489bd guibg=NONE
hi Identifier guifg=#d0bf97 guibg=NONE
hi String guifg=#7ed6c1 guibg=NONE 
hi Special guifg=#c489bd guibg=NONE
hi Conditional guifg=#d0bf97 guibg=NONE
hi Operator guifg=#c2d5d6 guibg=NONE
hi Title guifg=#9bbec6 guibg=NONE
hi Delimiter guifg=#c2d5d6 guibg=NONE

" SPELLING:
hi SpellBad guifg=#c489bd guibg=#5b6b7a
hi SpellBad guifg=#c489bd guibg=#5b6b7a
hi SpellBad guifg=#c489bd guibg=#5b6b7a
hi SpellBad guifg=#c489bd guibg=#5b6b7a

" UI:
hi LineNr guifg=#5b6b7a guibg=NONE
hi Cursor guifg=#000000 guibg=NONE gui=NONE
hi CursorLineNr guifg=#526d75 guibg=NONE
hi CursorLine guifg=NONE guibg=#242b30 
hi EndOfBuffer guifg=#5b6b7a guibg=NONE
hi VertSplit guifg=#4f5b66 guibg=#c2d5d6
hi MatchParen guifg=#b5cdce guibg=#5b6b7a
hi MoreMsg guifg=#d2c7ba guibg=NONE
hi Folded guifg=#d2c7ba guibg=#2d393d 
hi FoldColumn guifg=#d2c7ba guibg=#2d393d 
hi Visual guifg=#d2c7ba guibg=#5b6b7a
hi Search guifg=#d2c7ba guibg=#5b6b7a
hi Question guifg=#e8a74c guibg=NONE
hi Error guifg=#d2c7ba guibg=#cd5148 gui=reverse
hi ErrorMsg guifg=#d2c7ba guibg=NONE gui=NONE
hi WarningMsg  guifg=#e8a74c guibg=NONE gui=NONE
hi Directory guifg=#d2c7ba guibg=NONE
hi WildMenu guifg=#7ed6c1 guibg=NONE gui=reverse
hi SignColumn guifg=#f943f6 guibg=#cd5148
hi Pmenu guifg=#9bbec6 guibg=#2d393d
hi PmenuSel guifg=#d0bf97 guibg=#4f5b66 gui=reverse
hi TabLine guifg=#4f5b66 guibg=#d0bf97
hi TabLineSel guifg=#d0bf97 guibg=#2d383d
hi StatusLine guifg=#c2d5d6 guibg=#4f5b66
hi StatusLineNC guifg=#4f5b66 guibg=#c2d5d6

" VIMSCRIPT:
hi vimOption guifg=#9bbec6 guibg=NONE
hi vimGroup guifg=#9bbec6 guibg=NONE
hi vimHiGroup guifg=#9bbec6 guibg=NONE
hi vimHiGuiFgBg guifg=#c2d5d6 guibg=NONE
hi vimHiGui guifg=#c2d5d6 guibg=NONE
hi vimFTOption guifg=#c489bd guibg=NONE
hi vimSynType guifg=#c489bd guibg=NONE
hi vimLineComment guifg=#5b6b7a guibg=NONE
hi vimCommentTitle guifg=#bc8865 guibg=NONE gui=bold
hi vimTodo guifg=#bc8865 guibg=NONE
hi vimSetSep guifg=#d2c7ba guibg=NONE

" HELP:
hi helpNote guifg=#bc8865 guibg=NONE gui=bold
hi helpOption guifg=#c2d5d6 guibg=NONE
hi helpWarning guifg=#cd5148 guibg=NONE
hi helpExample guifg=#c2d5d6 guibg=NONE

" HTML:
hi htmlTag guifg=#c2d5d6 guibg=NONE
hi htmlEndTag guifg=#c2d5d6 guibg=NONE
hi htmlTagName guifg=#8aaecc guibg=NONE
hi htmlArg guifg=#d0bf97 guibg=NONE
hi htmlTitle guifg=#c2d5d6 guibg=NONE
hi htmlLink guifg=#9bbec6 guibg=NONE

" CSS:
hi cssTagName guifg=#8aaecc guibg=NONE
hi cssIdentifier guifg=#bc8865 guibg=NONE
hi cssClassName guifg=#d0bf97 guibg=NONE
hi cssClassNameDot guifg=#d0bf97 guibg=NONE
hi cssBraces guifg=#c2d5d6 guibg=NONE
hi cssAttrComma guifg=#c2d5d6 guibg=NONE
hi cssCustomProp guifg=#9bbec6 guibg=NONE
hi cssBackgroundProp guifg=#9bbec6 guibg=NONE
hi cssBoxProp guifg=#c2d5d6 guibg=NONE
hi cssFlexibleBoxProp guifg=#c2d5d6 guibg=NONE
hi cssFontProp guifg=#c2d5d6 guibg=NONE
hi cssPositioningProp guifg=#c2d5d6 guibg=NONE
hi cssBorderProp guifg=#c2d5d6 guibg=NONE
hi cssMediaProp guifg=#c2d5d6 guibg=NONE
hi cssTextProp guifg=#c2d5d6 guibg=NONE
hi cssUIProp guifg=#c2d5d6 guibg=NONE
hi cssListProp guifg=#c2d5d6 guibg=NONE
hi cssTransitionProp guifg=#c2d5d6 guibg=NONE
hi cssColorProp guifg=#c2d5d6 guibg=NONE
hi cssAtKeyword guifg=#d0bf97 guibg=NONE
hi cssPseudoClassId guifg=#c2d5d6 guibg=NONE

" JAVASCRIPT:
hi javaScript guifg=#9bbec6 guibg=NONE
hi javaScriptFunction guifg=#d0bf97 guibg=NONE
hi javaScriptParens guifg=#c2d5d6 guibg=NONE
hi javaScriptBraces guifg=#c2d5d6 guibg=NONE
hi javaScriptNumber guifg=#c489bd guibg=NONE
hi javaScriptBoolean guifg=#c489bd guibg=NONE
hi javaScriptNull guifg=#c489bd guibg=NONE

" JSON:
hi jsonBraces guifg=#c2d5d6 guibg=NONE
hi jsonKeyword guifg=#d0bf97 guibg=NONE

" PYTHON:
hi pythonInclude guifg=#d0bf97 guibg=NONE
hi pythonBuiltin guifg=#9bbec6 guibg=NONE
hi pythonExceptions guifg=#c489bd guibg=NONE
hi pythonTodo guifg=#bc8865 guibg=NONE
hi pythonFunction guifg=#9bbec6 guibg=NONE

" SHELL SCRIPT:
hi shCmdSubRegion guifg=#c2d5d6 guibg=NONE
hi shTestOpr guifg=#c2d5d6 guibg=NONE
hi shDerefVar guifg=#9bbec6 guibg=NONE

" RUST:
hi rustStorage guifg=#9bbec6 guibg=NONE
hi rustTrait guifg=#bc8865 guibg=NONE
hi rustSigil guifg=#bc8865  guibg=NONE
hi rustType guifg=#bc8865 guibg=NONE
hi rustFoldBraces guifg=#d2c7ba guibg=NONE
hi rustFuncName guifg=#9bbec6 guibg=NONE gui=italic
hi rustFuncCall guifg=#9bbec6 guibg=NONE gui=italic


" MARKDOWN:


