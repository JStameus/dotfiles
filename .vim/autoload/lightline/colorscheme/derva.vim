" -----------------------------
"  Description: Derva Lightline Theme
"  Author: JStameus 
"  ----------------------------

if exists('g: lightline')

    " Color Palette:
    let s:darkgray = '#5b616b'
    let s:lightgray = '#6f7b8c'
    let s:beige = '#e5d1aa'
    let s:white = '#ede5dd'
    let s:red = '#bd5747'
    let s:green = '#a2c89a'
    let s:orange = '#e09f5a'
    let s:blue = '#adc2c7'

    let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace': {}, 'visual': {}, 'tabline':{}}

    " Normal Mode:
    let s:p.normal.left = [ [ s:darkgray, s:beige  ], [ s:beige, s:darkgray ] ]
    let s:p.normal.right = [ [ s:darkgray, s:beige  ], [ s:beige, s:darkgray ] ]
    let s:p.normal.middle = [ [ s:beige, s:darkgray ] ]

    " Inactive Mode:
    let s:p.inactive.left = [ [ s:lightgray, s:white  ], [ s:white, s:lightgray ] ]
    let s:p.inactive.right = [ [ s:lightgray, s:white  ], [ s:white, s:lightgray ] ]
    let s:p.inactive.middle = [ [ s:white, s:lightgray ] ]

    " Insert Mode: 
    let s:p.insert.left = [ [ s:darkgray, s:green  ], [ s:green, s:darkgray ] ]
    let s:p.insert.right = [ [ s:darkgray, s:green  ], [ s:green, s:darkgray ] ]
    let s:p.insert.middle = [ [ s:beige, s:darkgray ] ]

    " Replace Mode:
    let s:p.replace.left = [ [ s:darkgray, s:orange  ], [ s:orange, s:darkgray ] ]
    let s:p.replace.right = [ [ s:darkgray, s:orange  ], [ s:orange, s:darkgray ] ]
    let s:p.replace.middle = [ [ s:beige, s:darkgray ] ]

    " Visual Mode:
    let s:p.visual.left = [ [ s:darkgray, s:red  ], [ s:red, s:darkgray ] ]
    let s:p.visual.right = [ [ s:darkgray, s:red  ], [ s:red, s:darkgray ] ]
    let s:p.visual.middle = [ [ s:beige, s:darkgray ] ]

    " Errors:
    let s:p.normal.error = [ [ s:darkgray, s:red  ] ]
    let s:p.normal.warning = [ [ s:darkgray, s:orange ] ]

    let g:lineline#colorscheme#derva#palette = lightline#colorscheme#flatten(s:p)

endif

