set nocompatible 
filetype off     
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/RNPlugins')
"Cores
Plugin 'joedicastro/vim-github256'
Plugin 'sjl/badwolf'
Plugin 'vim-scripts/candy.vim'
Plugin 'nielsmadan/harlequin'

"Plugins
Plugin 'sjl/gundo.vim'
Plugin 'othree/html5.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            
filetype plugin indent on    
