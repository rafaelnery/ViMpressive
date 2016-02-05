" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
" Super Hiper Mega Configura��o do VIMRC {

  " Criando Vari�veis {
  let $__VIMCONF       = expand("$HOME") . "/.vim/configuracoes" 
  let $BUNDLE          = expand("$HOME") . "/.vim/RNPlugins" 
  let g:diretorio_undo = expand("$HOME") . "/.vim/Conteudo/undo"
  let g:diretorio_tags = expand("$HOME") . "/.vim/Conteudo/tags"
  let g:diretorio_swap = expand("$HOME") . "/.vim/Conteudo/swap" 
  "}
  " Requerindo as configura��es {
  source $__VIMCONF/plugins.vim
  source $__VIMCONF/geral.vim
  source $__VIMCONF/atalhos.vim
  source $__VIMCONF/aparencia.vim
  source $__VIMCONF/arquivos.vim
  source $__VIMCONF/funcoes.vim
  set    viminfo^=%
  "}
  " Carregando Configura��es do Usu�rio {
    if filereadable("$HOME/.vimrc.local")
      source $HOME/.vimrc.local
    endif
  "}
"}
