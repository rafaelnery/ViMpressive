"Abre arquivo em nova aba
map gf :tabnew <cfile><CR>

"Salvar
map  <F2> <ESC>:w<CR> 
imap <F2> <ESC>:w<CR>

"
" Atalhos de Plugins : {{{
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(CVS|git|hg|svn)$',
      \ 'file': '\v\.(jpg|png|gif|pdf)$'
      \ }
"
"}}}

autocmd FileType php inoremap    <F7> <ESC>:call PhpDocSingle()<CR>
autocmd FileType php nnoremap    <F7>      :call PhpDocSingle()<CR>
autocmd FileType php vnoremap    <F7>      :call PhpDocRange()<CR>






" Alterna entre Janelas Abertas
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-l> <C-W>l
noremap <C-h> <C-W>h

" Redimensiona Janela com ALT + Direcional 
nnoremap <A-Up>    <C-w>+
nnoremap <A-Down>  <C-w>-
nnoremap <A-Left>  <C-w><
nnoremap <A-Right> <C-w>>

" Ctrl-Space para AutoComplete Like Eclipse
if has("gui_running")
  inoremap <C-Space> <C-x><C-o>
else 
  if has("unix")
    inoremap <Nul> <C-x><C-o>
  endif
endif

" Toggle no modo de Colagem
  map <leader>pp :setlocal paste!<cr>

" Remove the Windows ^M - when the encodings gets messed up
  noremap <Leader>m %s/<C-V><cr>//g<cr>

" Setando Tecla LEADER
  let mapleader   = ","
  let g:mapleader = ","

" Movimentaçao entre janelas
  noremap <C-j> <C-W>j
  noremap <C-k> <C-W>k
  noremap <C-l> <C-W>l
  noremap <C-h> <C-W>h

" Redimensionando Janelas
  noremap <A-Up> <C-w>+
  noremap <A-Down> <C-w>-
  noremap <A-Left> <C-w><
  noremap <A-Right> <C-w>>

" Spell Check Toogle
  map <leader>ss :setlocal spell!<cr>

" Atalhos de Verificação Ortográfica
  map <leader>sn ]s
  map <leader>sp [s
  map <leader>sa zg
  map <leader>s? z=

" Remap VIM 0 to first non-blank character
  map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <M-j> mz:m+<cr>`z
  nmap <M-k> mz:m-2<cr>`z
  vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z



  "
  " Atalhos de Plugins : {{{
  "
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(CVS|git|hg|svn)$',
    \ 'file': '\v\.(jpg|png|gif)$'
    \ }

  "
  "}}}
  "
