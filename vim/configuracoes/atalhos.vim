" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
" 
" Author: Rafael Serpa Nery<rafanery0@gmail.com> 
" Version: $Id:$
"
"Abre arquivo em nova aba {
map gf :tabnew <cfile><CR>
" }
"Salvar {
noremap  <F2> <ESC>:Salvar<CR>
inoremap <F2> <ESC>:Salvar<CR>
vnoremap <F2> <ESC>:Salvar<CR>
noremap  tp <ESC>:set paste!<CR>
inoremap tp <ESC>:set paste!<CR>
" }
" Alterna entre Janelas Abertas {
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-l> <C-W>l
noremap <C-h> <C-W>h
" }
" Redimensiona Janela com ALT + Direcional {
nnoremap <A-Up>    <C-w>+
nnoremap <A-Down>  <C-w>-
nnoremap <A-Left>  <C-w><
nnoremap <A-Right> <C-w>>
" }
" Ctrl-Space para AutoComplete Like Eclipse {
if has("gui_running")
  inoremap <C-Space> <C-x><C-o>
else 
  if has("unix")
    inoremap <Nul> <C-x><C-o>
  endif
endif
" }
" Toggles :( -> :) {
  " Toggle modo de Colagem {
    noremap tp :set paste!<cr>
    vnoremap tp :set paste!<cr>
  " }
  " Toggle Highlighsearch {
  
    noremap th :set paste!<cr>
    vnoremap th :set paste!<cr>
  " }
"}
" Remove the Windows ^M - when the encodings gets messed up {
  noremap <Leader>m %s/<C-V><cr>//g<cr>
" }
" Setando Tecla LEADER {
  let mapleader   = ","
  let g:mapleader = ","
" }
" Movimentaçao entre janelas {
  noremap <C-j> <C-W>j
  noremap <C-k> <C-W>k
  noremap <C-l> <C-W>l
  noremap <C-h> <C-W>h
" }
" Redimensionando Janelas {
  noremap <A-Up> <C-w>+
  noremap <A-Down> <C-w>-
  noremap <A-Left> <C-w><
  noremap <A-Right> <C-w>>
" }
" Remap VIM 0 to first non-blank character {
  map 0 ^
" }
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac {
  nmap <M-j> mz:m+<cr>`z
  nmap <M-k> mz:m-2<cr>`z
  vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
" }
" Quando abrir um arquivo php  Ctrl + M salva executa o arquivo {
" }
  " Repetir a operação com . para todas as linhas selecionadas {
    vnoremap . :normal .<CR>
  "}

