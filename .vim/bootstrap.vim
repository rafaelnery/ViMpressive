" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
" Super Hiper Mega Configuração do VIMRC {

  " Criando Variáveis {
  let $__VIMCONF       = expand("$HOME") . "/.vim/configuracoes" 
  let $BUNDLE          = expand("$HOME") . "/.vim/RNPlugins" 
  let g:diretorio_undo = expand("$HOME") . "/.vim/Pessoal/undo"
  let g:diretorio_tags = expand("$HOME") . "/.vim/Pessoal/tags"
  let g:diretorio_bkps = expand("$HOME") . "/.vim/Pessoal/bkps" 
  "}
  " Requerindo as configurações {
  source $__VIMCONF/plugins.vim
  source $__VIMCONF/geral.vim
  source $__VIMCONF/atalhos.vim
  source $__VIMCONF/aparencia.vim
  source $__VIMCONF/arquivos.vim
  source $__VIMCONF/funcoes.vim
  set    viminfo^=%
  "}
  " Carregando Configurações do Usuário {
    if filereadable("$HOME/.vimrc.local")
      source $HOME/.vimrc.local
    endif
  "}
"}
