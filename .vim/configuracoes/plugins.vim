
set runtimepath+=~/.vim/bundle/Vundle.vim
set nocompatible 
filetype off     
call vundle#begin('~/.vim/RNPlugins')

"Cores
Plugin 'joedicastro/vim-github256'
Plugin 'sjl/badwolf'
Plugin 'vim-scripts/candy.vim'
Plugin 'nielsmadan/harlequin'

"Plugins
Plugin 'bling/vim-airline'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
"Plugin 'vim-php/tagbar-phpctags.vim'
"GIT
Plugin 'tpope/vim-fugitive'

call vundle#end()            
filetype plugin indent on    


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Atalhos de Plugins : 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(CVS|git|hg|svn)$',
      \ 'file': '\v\.(jpg|png|gif|pdf)$'
      \ }

""'
" Plugin: PHPDoc
"

autocmd FileType php inoremap    <F7> <ESC>:call PhpDocSingle()<CR>
autocmd FileType php nnoremap    <F7>      :call PhpDocSingle()<CR>
autocmd FileType php vnoremap    <F7>      :call PhpDocRange()<CR>

"Airline
let g:airline#extensions#tabline#enabled      = 1
"let g:airline#extensions#tabline#left_sep     = ' '
