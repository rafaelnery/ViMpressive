" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
" Super Hiper Mega Config for VIM {

  " Criando Variáveis {
  let $__VIMCONF       = expand("$HOME") . "/.vim/config" 
  let $BUNDLE          = expand("$HOME") . "/.vim/repos" 
  let g:diretorio_undo = expand("$HOME") . "/.vim/content/undo"
  let g:diretorio_tags = expand("$HOME") . "/.vim/content/tags"
  let g:diretorio_swap = expand("$HOME") . "/.vim/content/swap" 
  "}
  " Add config {
  source $__VIMCONF/plugin.vim
  source $__VIMCONF/general.vim
  source $__VIMCONF/shortcut.vim
  source $__VIMCONF/view.vim
  source $__VIMCONF/file.vim
  set    viminfo^=%
  "}
"}
