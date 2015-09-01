"
" Salva o Arquivo
" Autor: Jeferson Belmiro 
"
function! Salvar()

  try

    silent write
    silent execute ':set filetype='.&filetype
    if &filetype == 'php'
      call Executar('php -l ' . expand('%') . ' 2> /tmp/vim_save')
    endif

    echo  'Feitoria! =]~'

  catch

    let s:sErro = Executar('cat /tmp/vim_save')

    if !empty(s:sErro)
      let s:sErro = split(s:sErro, "\n")[0] " Retorna a primeira linha do arquivo
    else
      let s:sErro = v:exception
    endif

    echohl WarningMsg | echo s:sErro . ' =[~ '
  endtry
endfunction

