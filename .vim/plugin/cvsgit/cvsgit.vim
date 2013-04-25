" 
" cvsgit
"
"

" variaveis globais para guardar ultima tag e tipo de commit
" usados na funcao inputdialog
let g:commitInputTag = ''
let g:commitInputTipo = ''

"
" adiciona aruqivo a lista para commit
"
function! CvsGit(sArgumentos) 

  " arquivo em php que adiciona arquivo a lista para commit 
  let commitArquivo = '/home/jeferson/.vim/plugin/cvsgit/cvsgit add '. FileName() . ' '

  " caso passar argumentos para a funcao, exemplo: :CvsGit -m 'mensagem do  comit' -t 99999 -fix 
  if !empty(a:sArgumentos)

    let commitArquivo .= a:sArgumentos

  " Funcao chamada sem parametro, pergunta mensagem, tag e tipo de commit
  else

    let l:commitMensagem = inputdialog('mensagem: ') 
    let l:commitTag      = inputdialog('tag: ', g:commitInputTag)
    let l:commitTipo     = inputdialog('tipo: ', g:commitInputTipo)

    let commitArquivo .= '-m "' . l:commitMensagem . '" -t '. l:commitTag.' -'. l:commitTipo

    " guarga ultima tag digitada para mostrar no proximo commit
    if !empty(l:commitTag) 
      let g:commitInputTag = l:commitTag
    endif

    " guarga ultimo tipo de commit digitado para mostrar no proximo commit
    if !empty(l:commitTipo) 
      let g:commitInputTipo = l:commitTipo
    endif

  endif

  " executa cvsgit em php e guarda retorno na variavel respostaArquivo
  let respostaArquivo = system(commitArquivo)

  " cvsgit respondeu com erro, mostra na tela o erro
  if v:shell_error && respostaArquivo != ""
    echohl WarningMsg | echon "\r" . respostaArquivo 
    return
  endif

  " nenhum erro 
  echon "\rArquivo adicionado a lista para commit" 

endfunction;

" registra comando CvsGit que pode ter 1 ou nenhum argumento
command! -nargs=? -complete=buffer CvsGit call CvsGit("<args>")

"command! -nargs=? -complete=customlist,CvsGitComplete CvsGit call CvsGit("<args>")
"
"function! CvsGitComplete(argLead, cmdLine, cursorPos)
"
"  let a:teste = ['add', 'enhanced', 'fixed']
"
"  return a:teste
"
"  if a:cursorPos == 7 && a:argLead != 'add'
"    return ['add']
"  endif
"
"  "return ['argLead: ' . a:argLead, 'cmdLine: ' . a:cmdLine, 'cursorPos: ' . a:cursorPos]
"
"  return []
"
"endfunction

map <F6> :CvsGit 
