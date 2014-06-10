function! firefoxremote#EnviarComando( sCommand )

  if !exists("g:FirefoxRemotePort") 
    let g:FirefoxRemotePort=4242
  endif
  
  let l:sStringEnvio  =' " ' . a:sCommand . ' " | '
  let l:sStringEnvio .=' nc -w 1 localhost ' . g:FirefoxRemotePort . ' | grep "repl>" | head -n1 | sed -e "s/repl> //g" | sed -e "s/\\\"//g" '
  let x = system("echo " . l:sStringEnvio)
  return x
endfunction

function! firefoxremote#AbrirArquivo()

  let l:sComando =";"

  if !exists("g:FirefoxRemoteContext") 
    let g:FirefoxRemoteContext=''
  endif

  if g:FirefoxRemoteContext != '' 
    let l:sComando.="var oContext  = content.window." . g:FirefoxRemoteContext . " || content.window;"
  endif

  let l:sComando.=" oContext.location.pathname;"
  let l:sArquivo = ".." .firefoxremote#EnviarComando( l:sComando )

  exec( "tabnew " . l:sArquivo )
endfunction

function! firefoxremote#AtualizarFirefox()

" if !&modified
"   return 1
" endif

  let l:sComando =";"

  if !exists("g:FirefoxRemoteContext") 
    let g:FirefoxRemoteContext=''
  endif

  if g:FirefoxRemoteContext != '' 
    let l:sComando.="var oContext  = content.window." . g:FirefoxRemoteContext . " || content.window;"
  endif
  let l:sComando.="var iBrowserX = oContext.pageXOffset;"
  let l:sComando.="var iBrowserY = oContext.pageYOffset;"
  let l:sComando.="oContext.location.reload();"
  let l:sComando.="oContext.scrollTo(iBrowserX, iBrowserY);"
  call  firefoxremote#EnviarComando( l:sComando )
  echo "Feitoria."
endfunction

function! firefoxremote#Redirecionar( sUrl )
 
  if !exists("g:FirefoxRemoteContext") 
    let g:FirefoxRemoteContext=''
  endif

  let l:sEnvio = ";"
  if g:FirefoxRemoteContext != '' 
    let l:sEnvio.="var oContext  = content.window." . g:FirefoxRemoteContext . " || content.window;"
  endif
  let l:sEnvio.= "repl.home();"
  let l:sEnvio.= "oContext.location.href = '" . a:sUrl . "';"
  let l:sEnvio.= "repl.enter(content);"
  call  firefoxremote#EnviarComando( l:sEnvio )
  echo "Feitoria."
endfunction
