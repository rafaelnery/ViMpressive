"
" Super Hiper Mega Configuração do VIMRC
" 
let $VIMROOT   = expand("$HOME") . "/vimfiles"
let $__VIMCONF = expand("$HOME") . "/.vim/configuracoes" 

source $__VIMCONF/geral.vim
source $__VIMCONF/atalhos.vim
source $__VIMCONF/aparencia.vim
source $__VIMCONF/indentacao.vim
source $__VIMCONF/funcoes.vim
set    viminfo^=%
