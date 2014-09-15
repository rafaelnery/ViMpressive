"
" Super Hiper Mega Configuração do VIMRC
" 
let $__VIMCONF = expand("$HOME") . "/.vim/configuracoes" 
let $VIMROOT   = $__VIMCONF . "/vimfiles"
source $__VIMCONF/plugins.vim
source $__VIMCONF/geral.vim
source $__VIMCONF/atalhos.vim
source $__VIMCONF/aparencia.vim
source $__VIMCONF/arquivos.vim
source $__VIMCONF/funcoes.vim
set    viminfo^=%
