" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
" 
" Author: Rafael Serpa Nery<rafanery0@gmail.com> 
" Version: $Id:$
"
"Abre arquivo em nova aba {
map gf :tabnew <cfile><CR>
" }
"Salvar {
noremap  <F2> <ESC>:write<CR>
inoremap <F2> <ESC>:write<CR>
vnoremap <F2> <ESC>:write<CR>
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
  
    noremap th :set hlsearch!<cr>
    vnoremap th :set hlsearch!<cr>
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
" Remap VIM 0 to first non-blank character {
  map 0 ^
" }
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac {
"" nmap <A-j> mz:m+<cr>`z
"" nmap <A-k> mz:m-2<cr>`z
"" vmap <A-j> :m'>+<cr>`<my`>mzgv`yo`z
"" vmap <A-k> :m'<-2<cr>`>my`<mzgv`yo`z
" }
" Quando abrir um arquivo php  Ctrl + M salva executa o arquivo {
" }
  " Repetir a operação com . para todas as linhas selecionadas {
    vnoremap . :normal .<CR>
  "}
    
  " Remover palavra a esquerda ou a direita  no modo inserção com CTRL + DEL ou CTRL + BACKSPACE {
    imap <C-Del> <C-o>dw
    imap <C-Backspace> <C-o>db
  " }
