
syntax enable                   "Habilita colora��o por syntax
set t_Co               =256
set textwidth          =110

set showtabline        =2
" Sempre mostra barra de Mensagens 
set laststatus         =2

" Formata Barra de Status
set statusline         =%<%f\ \ %h%m%r%Y%=\ZoeiRa\ linha:\ %l,total\ :%L,%c%V\ %P 
set cursorline                                         " destaca linha  atual
set cursorcolumn                                       " destaca coluna atual
set number
source ~/.vim/configuracoes/cores.vim
