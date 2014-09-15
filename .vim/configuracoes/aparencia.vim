
syntax enable                   "Habilita coloração por syntax
set t_Co               =256
set textwidth          =110

set showtabline        =2
" Sempre mostra barra de Mensagens 
set laststatus         =2

" Formata Barra de Status
set cursorline                                         " destaca linha  atual
set cursorcolumn                                       " destaca coluna atual
set number                                             " mostra numero da linha

let g:airline#extensions#tabline#enabled      = 1
let g:airline#extensions#tabline#left_sep     = ' '
"let g:airline#extensions#tabline#left_alt_sep = '>'

source ~/.vim/configuracoes/cores.vim

