
let g:javascript_enable_domhtmlcss=1


source ~/.vim/bootstrap.vim
let g:ctrlp_max_files=0
set background=dark

if ( has("gui_running") ) 
 	set guifont=SourceCodePro+Powerline+Awesome\ Regular\\,\ 10
endif

colorscheme antares

let NERDTreeIgnore = ['^CVS$']

set wildignore+=vendor
set wildignore+=extension
set wildignore+=manuais
set wildignore+=imagens
set wildignore+=tmp
