set background =dark
colorscheme monokai 
hi clear TabLineFill

hi  TabLineSel   ctermbg=1 guibg=DarkRed term=reverse 
hi  TabLine      ctermbg=8 guibg=White   term=reverse 

" Cores especiais para pesquisa normal/incremental
" Utilizado com set t_Co=256
hi Search    ctermbg=1 ctermfg=190
hi IncSearch ctermbg=2 ctermfg=cyan
