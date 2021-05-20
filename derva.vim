" AUTHOR: Joseph Stameus
" REPO: https://github.com/JStameus/derva-vim
"
" SUPPORT: 
" 256 color terminals, GVim, Termguicolors
"
" DERVA:
set background=dark

highlight clear
	if exists("syntax_on")
	syntax reset
endif

let g:colors_name="derva"

" TODO: Change background color of popup menu
" ------------------------------------------------------------------------------
 
" COLOR CODES:
" background: #292a2d
" background highlight: #303538 
" background faint: #242b30

" foreground: #e5d1aa
" foreground highlight: #ede5dd 

" comments: #6f7b8c
" indigo: #8d98ab 
" dark gray: #3b4449 
" darker gray: #2f3335
" blue: #b2c4c1
" red: #bd5747
" red hightlight: #ce5a48
" orange: #e09f5a
" green: #ccc578
" murky: #8caaa7

" COMMON:
hi Normal guifg=#e5d1aa guibg=#292a2d
hi PreProc guifg=#e5d1aa guibg=NONE
hi Comment guifg=#6f7b8c guibg=NONE
hi Function guifg=#b2c4c1 guibg=NONE
hi Statement guifg=#bd5747 guibg=NONE
hi Repeat guifg=#bd5747 guibg=NONE
hi Constant guifg=#ccc578 guibg=NONE
hi Number guifg=#e09f5a guibg=NONE
hi Boolean guifg=#e09f5a guibg=NONE
hi Identifier guifg=#bd5747 guibg=NONE
hi Type guifg=#bd5747 guibg=NONE
hi Typedef guifg=#bd5747 guibg=NONE
hi StorageClass guifg=#bd5747 guibg=NONE
hi Structure guifg=#e09f5a guibg=NONE
hi String guifg=#ccc578 guibg=NONE 
hi Special guifg=#e09f5a guibg=NONE
hi Conditional guifg=#bd5747 guibg=NONE
hi Operator guifg=#ede5dd guibg=NONE
hi Title guifg=#e5d1aa guibg=NONE
hi Delimiter guifg=#ede5dd guibg=NONE
hi Tag guifg=#e5d1aa guibg=NONE
hi Todo guifg=#8d98ab guibg=NONE
hi Underlined guifg=#ccc578 guibg=NONE

" SPELLING:
hi SpellBad guifg=#e09f5a guibg=#6f7b8c
hi SpellBad guifg=#e09f5a guibg=#6f7b8c
hi SpellBad guifg=#e09f5a guibg=#6f7b8c
hi SpellBad guifg=#e09f5a guibg=#6f7b8c

" UI:
hi LineNr guifg=#6f7b8c guibg=NONE
hi Cursor guifg=#000000 guibg=NONE gui=NONE
hi CursorLine guifg=NONE guibg=#303538 gui=NONE cterm=NONE
hi CursorLineNr guifg=#6f7b8c guibg=NONE gui=NONE
hi EndOfBuffer guifg=#6f7b8c guibg=NONE
hi VertSplit guifg=#4f5b66 guibg=#ede5dd
hi MatchParen guifg=#b5cdce guibg=#6f7b8c
hi MoreMsg guifg=#d2c7ba guibg=NONE
hi NonText guifg=#8d98ab guibg=NONE
hi SpecialKey guifg=#bd5747 guibg=NONE
hi Folded guifg=#8caaa7 guibg=NONE 
hi FoldColumn guifg=#8d98ab guibg=NONE 
hi Visual guifg=#d2c7ba guibg=#4d5457
hi Search guifg=#d2c7ba guibg=#4d5457
hi Question guifg=#e8a74c guibg=NONE
hi Error guifg=#d2c7ba guibg=#cd5148 gui=reverse
hi ErrorMsg guifg=#d2c7ba guibg=NONE gui=NONE
hi WarningMsg  guifg=#e8a74c guibg=NONE gui=NONE
hi Directory guifg=#d2c7ba guibg=NONE
hi WildMenu guifg=#ede5dd guibg=#bd5747 
hi SignColumn guifg=#f943f6 guibg=#cd5148
hi Pmenu guifg=#e5d1aa guibg=#3b4449
hi PmenuSel guifg=#ede5dd guibg=#4f5b66 gui=reverse
hi TabLine guifg=#8d98ab guibg=#3b4449
hi TabLineSel guifg=#ede5dd guibg=#4f5b66
hi TabLineFill guifg=#2f3335 guibg=NONE gui=NONE 
hi StatusLine guifg=#4f5b66 guibg=#ede5dd gui=NONE
hi StatusLineNC guifg=#3b4449 guibg=#8d98ab
" Plugin Specific
" Vim Plug
hi plugBracket guifg=#e5d1aa guibg=NONE
" Vim Wiki
hi vimWikiHeader1 guifg=#ce5a48 guibg=NONE
hi vimWikiHeader2 guifg=#e09f5a guibg=NONE
hi vimWikiHeader3 guifg=#adc2c7 guibg=NONE
hi VimwikiHR guifg=#8d98ab guibg=NONE
hi VimwikiLink guifg=#ccc578 guibg=NONE

" VIMSCRIPT:
hi vimOption guifg=#e5d1aa guibg=NONE
hi vimGroup guifg=#e5d1aa guibg=NONE
hi vimHiGroup guifg=#e5d1aa guibg=NONE
hi vimHiGuiFgBg guifg=#ede5dd guibg=NONE
hi vimHiGui guifg=#ede5dd guibg=NONE
hi vimHiCtermFgBg guifg=#ede5dd guibg=NONE
hi vimHiCterm guifg=#ede5dd guibg=NONE
hi vimFTOption guifg=#e09f5a guibg=NONE
hi vimSynType guifg=#e09f5a guibg=NONE
hi vimLineComment guifg=#6f7b8c guibg=NONE
hi vimCommentTitle guifg=#8d98ab guibg=NONE gui=bold
hi vimTodo guifg=#8d98ab guibg=NONE
hi vimSetSep guifg=#d2c7ba guibg=NONE
hi vimVar guifg=#e5d1aa guibg=NONE

" HELP:
hi helpNote guifg=#8d98ab guibg=NONE gui=bold
hi helpOption guifg=#ede5dd guibg=NONE
hi helpWarning guifg=#cd5148 guibg=NONE
hi helpExample guifg=#ede5dd guibg=NONE

" HTML:
hi htmlTag guifg=#ede5dd guibg=NONE
hi htmlEndTag guifg=#ede5dd guibg=NONE
hi htmlTagName guifg=#b2c4c1 guibg=NONE
hi htmlSpecialTagName guifg=#b2c4c1 guibg=NONE
hi htmlArg guifg=#bd5747 guibg=NONE
hi htmlTitle guifg=#ede5dd guibg=NONE
hi htmlLink guifg=#e5d1aa guibg=NONE

" CSS:
hi cssTagName guifg=#b2c4c1 guibg=NONE
hi cssIdentifier guifg=#ccc578 guibg=NONE
hi cssClassName guifg=#bd5747 guibg=NONE
hi cssClassNameDot guifg=#bd5747 guibg=NONE
hi cssBraces guifg=#ede5dd guibg=NONE
hi cssNoise guifg=#ede5dd guibg=NONE
hi cssAttrComma guifg=#e5d1aa guibg=NONE
hi cssCustomProp guifg=#e5d1aa guibg=NONE
hi cssBoxProp guifg=#e5d1aa guibg=NONE
hi cssFlexibleBoxProp guifg=#e5d1aa guibg=NONE
hi cssFontProp guifg=#e5d1aa guibg=NONE
hi cssBackgroundProp guifg=#e5d1aa guibg=NONE
hi cssPositioningProp guifg=#e5d1aa guibg=NONE
hi cssBorderProp guifg=#e5d1aa guibg=NONE
hi cssMediaProp guifg=#e5d1aa guibg=NONE
hi cssTextProp guifg=#e5d1aa guibg=NONE
hi cssUIProp guifg=#e5d1aa guibg=NONE
hi cssListProp guifg=#e5d1aa guibg=NONE
hi cssString guifg=#ccc578 guibg=NONE
hi cssTransitionProp guifg=#e5d1aa guibg=NONE
hi cssColorProp guifg=#e5d1aa guibg=NONE
hi cssAtKeyword guifg=#bd5747 guibg=NONE
hi cssPseudoClassId guifg=#e5d1aa guibg=NONE
hi cssFlexibleBoxAttr guifg=#e09f5a guibg=NONE
hi cssBorderAttr guifg=#e09f5a guibg=NONE
hi cssMultiColumnAttr guifg=#e09f5a guibg=NONE
hi cssMultiColumnAttr guifg=#e09f5a guibg=NONE
hi cssGridProp guifg=#e5d1aa guibg=NONE

" JAVASCRIPT:
hi javaScript guifg=#e5d1aa guibg=NONE
hi javaScriptFunction guifg=#bd5747 guibg=NONE
hi javaScriptParens guifg=#ede5dd guibg=NONE
hi javaScriptBraces guifg=#ede5dd guibg=NONE
hi javaScriptNumber guifg=#e09f5a guibg=NONE
hi javaScriptBoolean guifg=#e09f5a guibg=NONE
hi javaScriptNull guifg=#e09f5a guibg=NONE
" Extra Plugin Highlights
hi jsParens guifg=#ede5dd guibg=NONE
hi jsBrackets guifg=#ede5dd guibg=NONE
hi jsFunctionParens guifg=#ede5dd guibg=NONE
hi jsFunctionBraces guifg=#ede5dd guibg=NONE
hi jsIfBraces guifg=#ede5dd guibg=NONE
hi jsObjectBraces guifg=#ede5dd guibg=NONE
hi jsLoopBraces guifg=#ede5dd guibg=NONE
hi jsClassBraces guifg=#ede5dd guibg=NONE
hi jsSwitchBraces guifg=#ede5dd guibg=NONE
hi jsBuiltinValues guifg=#e09f5a guibg=NONE
hi jsVariableType guifg=#bd5747 guibg=NONE
hi jsFunctionCall guifg=#b2c4c1 guibg=NONE
hi jsFunctionName guifg=#b2c4c1 guibg=NONE
hi jsConstructor guifg=#b2c4c1 guibg=NONE
hi jsClassName guifg=#e09f5a guibg=NONE
hi jsNewClassName guifg=#e09f5a guibg=NONE
hi jsNewClassName guifg=#e09f5a guibg=NONE
hi jsBuiltinObjects guifg=#e09f5a guibg=NONE
hi jsCommentTodo guifg=#8d98ab guibg=NONE
hi jsImport guifg=#bd5747 guibg=NONE
hi jsFrom guifg=#bd5747 guibg=NONE
hi jsModuleName guifg=#e09f5a guibg=NONE
hi jsArrow guifg=#ede5dd guibg=NONE

" JSON:
hi jsonBraces guifg=#ede5dd guibg=NONE
hi jsonKeyword guifg=#bd5747 guibg=NONE
hi jsonNull guifg=#e09f5a guibg=NONE

" PYTHON:
hi pythonInclude guifg=#bd5747 guibg=NONE
hi pythonImport guifg=#bd5747 guibg=NONE
hi pythonBuiltin guifg=#e5d1aa guibg=NONE
hi pythonExceptions guifg=#e09f5a guibg=NONE
hi pythonTodo guifg=#8d98ab guibg=NONE
hi pythonFunction guifg=#b2c4c1 guibg=NONE
hi pythonOperator guifg=#bd5747 guibg=NONE

" SHELL SCRIPT:
hi shCmdSubRegion guifg=#ede5dd guibg=NONE
hi shTestOpr guifg=#ede5dd guibg=NONE
hi shDerefVar guifg=#e5d1aa guibg=NONE

" RUST:
hi rustStorage guifg=#bd5747 guibg=NONE
hi rustTrait guifg=#e09f5a guibg=NONE
hi rustSigil guifg=#e09f5a  guibg=NONE
hi rustBoolean guifg=#e09f5a  guibg=NONE
hi rustType guifg=#e09f5a guibg=NONE
hi rustTodo guifg=#8d98ab guibg=NONE
hi rustFoldBraces guifg=#ede5dd guibg=NONE
hi rustIdentifier guifg=#e09f5a guibg=NONE 

" MARKDOWN:

" CONFIG FILES
" SSH
hi sshconfigHostPort guifg=#e09f5a guibg=NONE 
