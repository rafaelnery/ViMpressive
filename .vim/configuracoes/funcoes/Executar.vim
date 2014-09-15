"
" Executa um comando e retorna resposta do comando ou erro
"
" Autor: Jeferson Belmiro
"
function! Executar(sComando) 

  let l:sRetorno = system(a:sComando)

  if v:shell_error 
    throw l:sRetorno
  endif
  return l:sRetorno
endfunction
