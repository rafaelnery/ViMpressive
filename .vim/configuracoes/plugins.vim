" 
" Author: Rafael Serpa Nery<rafanery0@gmail.com>
" Version: $Id:$
"
" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
"
" Instalação dos pacotes {
  set runtimepath+=~/.vim/bundle/Vundle.vim
  set nocompatible 
  filetype off     
  call vundle#begin('~/.vim/RNPlugins')
  " Esquema de Cores {
  "
    Plugin 'joedicastro/vim-github256'
    Plugin 'sjl/badwolf'
    Plugin 'vim-scripts/candy.vim'
    Plugin 'nielsmadan/harlequin'
    Plugin 'nanotech/jellybeans.vim'
    Plugin 'vim-scripts/simpleandfriendly.vim'
    Plugin 'yearofmoo/Vim-Darkmate'
    Plugin 'altercation/vim-colors-solarized'
  " }
  "Supertab *,* - Faz de tudo(ou quase) com a tecla tab {
    Plugin 'ervandew/supertab'
  "}
  "Closetag - Fecha automagicamente as tags html {
    Plugin 'docunext/closetag.vim'
  "}
  "Delimitmate - Fecha automagiacamente chavesm,colchetes, apostrofos, aspas, parenteses {
    Plugin 'Raimondi/delimitMate'
  " }
  "PHP getters & setters {
    Plugin 'tobyS/php-accessors.vim'
  "}
  "Mustache Template System para o Vim {
    Plugin 'tobyS/vmustache'
  "}
  "PHP Document {
    Plugin 'tobyS/pdv'
      Plugin 'SirVer/ultisnips'
      Plugin 'honza/vim-snippets'
  "}
  "VIM TernJS {
    Plugin 'marijnh/tern_for_vim'
  "}
  " Correção de SYNTAX do CSS - Syntasctic {
    Plugin 'vim-scripts/Better-CSS-Syntax-for-Vim'
  "}
  " Barra bunita- VimAIRLINE {
    Plugin 'bling/vim-airline'
  "}
  "Pesquisa de arquivos like CtrlP(Sublime) Commant(TextMate) {
    Plugin 'git://git.wincent.com/command-t.git'
  "}
  "Gerenciador de pacotes do vi {
    Plugin 'gmarik/Vundle.vim'
  "}
  "Verificador de Syntax {
    Plugin 'scrooloose/syntastic'
  "}
  "Mostra métodos, variáveis e constantes do código {
    Plugin 'majutsushi/tagbar'
  "}
  "GIT - Fugitive {
    Plugin 'tpope/vim-fugitive'
  "}
  " AutoTag Recria as tags do CTAGS quando salva {
    Plugin 'craigemery/vim-autotag'
  " }
  " Mostra graficamente a arvore de alteração {
    Plugin 'sjl/gundo.vim'
  "}



  call vundle#end()            
  filetype plugin indent on    
"}

" Configurações/Atalhos para Plugins {

  " PHPDoc {
  let g:pdv_template_dir = $BUNDLE."/pdv/templates_snip"
  autocmd FileType php inoremap    <F7> <ESC>:call pdv#DocumentWithSnip()<CR>
  autocmd FileType php nnoremap    <F7>      :call pdv#DocumentWithSnip()<CR>
  autocmd FileType php vnoremap    <F7>      :call pdv#DocumentWithSnip()<CR>
  "}
  "Airline {
  let g:airline#extensions#tabline#enabled      = 1
  set laststatus         =2       "Sempre mostra barra de Mensagens / Necessário para o airline
  "}
  "Command-T {
  inoremap <C-P> <ESC>:CommandT<CR>
  nnoremap <C-P> <ESC>:CommandT<CR>
  vnoremap <C-P> <ESC>:CommandT<CR>
  "}
  "TagBar {
  nnoremap tb <ESC>:TagbarToggle<CR>
  vnoremap tb <ESC>:TagbarToggle<CR>
  "}
  "PHP getters e setters {
  nnoremap <C-g> <ESC> :call phpacc#GenerateAccessors()<CR>
  vnoremap <C-g> <ESC> :call phpacc#GenerateAccessors()<CR>
  "}
  " Syntastic | Syntástico :) {
  nnoremap ts <ESC>:SyntasticToggleMode<CR>
  vnoremap ts <ESC>:SyntasticToggleMode<CR>
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list            = 1
  let g:syntastic_check_on_open            = 1
  let g:syntastic_check_on_wq              = 1
  "}
  " gUndo  {
    let g:gundo_preview_bottom = 1
    let g:gundo_right          = 1

    nnoremap tu <ESC>:GundoToggle<CR>
    vnoremap tu <ESC>:GundoToggle<CR>
  "}
" }
