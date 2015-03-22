" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
" Super Hiper Mega Configuração do VIMRC {
let $__VIMCONF = expand("$HOME") . "/.vim/configuracoes" 
let $BUNDLE    = expand("$HOME") . "/.vim/RNPlugins" 
source $__VIMCONF/plugins.vim
source $__VIMCONF/geral.vim
source $__VIMCONF/atalhos.vim
source $__VIMCONF/aparencia.vim
source $__VIMCONF/arquivos.vim
source $__VIMCONF/funcoes.vim
set    viminfo^=%
"}
