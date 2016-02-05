"PHP Complete
autocmd FileType php set         omnifunc=phpcomplete#CompletePHP
"VIm Complete  
autocmd FileType vim set         omnifunc=syntaxcomplete#Complete
"Define tipo de arquivo plpgsql
autocmd Filetype sql setfiletype pgsql

"HTML INDENT
let g:html_indent_script1  = "inc"
let g:html_indent_style1   = "inc"
let g:html_indent_inctags  = "html,body,head,tbody"
let g:html_indent_autotags = "th,td,tr,tfoot,thead"

"Indenta��o

set expandtab        " Use spaces instead of tabs
set smarttab         " Be smart when using tabs ;)

set shiftwidth =2    " 1 tab == 2 spa�os
set tabstop    =2    " 1 tab == 2 spa�os
"set linebreak          
"set textwidth  =150 " Linebreak on 150 characters

set autoindent       "Auto indent
set smartindent      "Smart indent
set nowrap           "No Wrap lines
