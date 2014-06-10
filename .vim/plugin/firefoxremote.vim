command! -nargs=0 FirefoxRemoteReload       silent call firefoxremote#AtualizarFirefox()
command! -nargs=1 FirefoxRemoteGoTo         silent call firefoxremote#Redirecionar(<args>)
command! -nargs=1 FirefoxRemoteHttpRedirect silent call firefoxremote#Redirecionar("http://" . <args>)
command! -nargs=0 FirefoxRemoteOpenCurrent  silent call firefoxremote#AbrirArquivo()
