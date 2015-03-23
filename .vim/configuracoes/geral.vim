" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:

" Geral {
filetype plugin on                                     " Plugins por tipo de arquivo
filetype indent on                                     " Indentação por tipo de arquivo
set backspace          =eol,start,indent               " Configure backspace so it acts as it should act
set history            =2000                           " Quantas linhas de histórico o vim deve lembra0
set hlsearch                                           " Destaca resultados da busca
set ignorecase                                         " Ignora maiusculas/minusculas quando fizer pesquisa
set incsearch                                          " Vai buscando enquando digita
set magic                                              " For regular expressions turn magic on
set matchtime          =2                              " How many tenths of a second to blink when matching brackets
set scrolloff          =1                              " Set 7 lines to the cursor - when moving vertically using j/k
set showmatch                                          " Show matching brackets when text indicator is over them
set smartcase                                          " When searching try to be smart about cases ??? @todo descobrir o que eh mesmo
set whichwrap         +=<,>,h,l                        " @todo -naum sei
"}
" Navegacao {
set wildmenu
set wildmode           =list:longest,full              " Command <tab> completion, list matches, then longest common, then all.
set wildignore         =*.o,*~,*.pyc,CVS,*~            " Ignora certos tipos de arquivo
"}
" Codificação do Arquivo {
set fileencoding       =latin1                         " Codificação do arquivo
set termencoding       =utf-8                          " Codificação do terminal
set fileformats        =unix,dos,mac                   " Define tipo de utilização do arquivo(quebras de linhas)
set switchbuf          =useopen,usetab,newtab          " Comportamento nas trocas de janelas( Ctrl + Tab para mudar de aba)  
"}
" Recolher Pela Syntax {
set foldmethod        =syntax
set foldlevelstart    =1
let javaScript_fold   =1                               " JavaScript
let perl_fold         =1                               " Perl
let php_folding       =1                               " PHP
let r_syntax_folding  =1                               " R
let sh_fold_enabled   =1                               " sh
let vimsyn_folding    ='af'                            " Vim script
let xml_syntax_folding=1                               " XML
"}
" Opções visuais {
set shortmess        +=filmnrxoOtT                     " Abreviação de mensagens
set viewoptions       =folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit       =onemore                         " permite o cursor ficar na ultima letra da linha 
"}
" Mouse {
set mouse             =n                               " Utilizar o mouse fora do modo de inserção/comando 
"}
" Utilizando 'Completação' 8) Inteligente(omnicomplete) {

 autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS 
 autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
 autocmd FileType javascript    setlocal omnifunc=javascriptcomplete#CompleteJS 
 autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags 
 autocmd FileType php           setlocal omnifunc=phpcomplete#CompletePHP 
 "}
" Comportamento de Divisão das janelas = *,*' {
  set splitbelow  
  set splitright
"}

