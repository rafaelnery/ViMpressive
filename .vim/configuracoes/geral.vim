""""""""""""""""""""""""""""""""""""""""""""           "
" => Geral                                             "
""""""""""""""""""""""""""""""""""""""""""""           "
filetype plugin on                                     " Plugins por tipo de arquivo
filetype indent on                                     " Indentação por tipo de arquivo
set history            =2000                           " Quantas linhas de histórico o vim deve lembra0
set scrolloff          =1                              " Set 7 lines to the cursor - when moving vertically using j/k
set wildmenu                                           " Turn on the wild menu
set wildignore         =*.o,*~,*.pyc,CVS,*~            " Ignora certos tipos de arquivo
set ruler                                              " Sempre mostra posicao atual
set hid                                                " A buffer becomes hidden when it is abandoned
set backspace          =eol,start,indent               " Configure backspace so it acts as it should act
set whichwrap         +=<,>,h,l                        " @todo -naum sei
set ignorecase                                         " Ignora maiusculas/minusculas quando fizer pesquisa
set smartcase                                          " When searching try to be smart about cases ??? @todo descobrir o que eh mesmo
set hlsearch                                           " Destaca resultados da busca
set incsearch                                          " Vai buscando enquando digita
set magic                                              " For regular expressions turn magic on
set showmatch                                          " Show matching brackets when text indicator is over them
set matchtime          =2                              " How many tenths of a second to blink when matching brackets

" Navegacao
set wildmenu
set wildmode           =list:longest,full              " Command <tab> completion, list matches, then longest common, then all.


set encoding           =latin1                         " Codificação padrão
set fileencoding       =latin1                         " Codificação do arquivo
set termencoding       =utf-8                          " Codificação do terminal

set fileformats        =unix,dos,mac                   " Use unix as the standard file type

set switchbuf          =useopen,usetab,newtab          " Specify the behavior when switching between buffers 


"Recolher Pela Syntax
"
set foldmethod        =syntax
set foldlevelstart    =1
let javaScript_fold   =1                               " JavaScript
let perl_fold         =1                               " Perl
let php_folding       =1                               " PHP
let r_syntax_folding  =1                               " R
let ruby_fold         =1                               " Ruby
let sh_fold_enabled   =1                               " sh
let vimsyn_folding    ='af'                            " Vim script
let xml_syntax_folding=1                               " XML

set shortmess        +=filmnrxoOtT                     " abbrev. of messages (avoids 'hit enter')
set viewoptions       =folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit       =onemore                         " permite o cursor ficar na ultima letra da linha 
