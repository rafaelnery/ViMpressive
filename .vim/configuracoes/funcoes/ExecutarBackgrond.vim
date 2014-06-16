"
" Executa comando em Background e  envia uma notificação ao 
" Gerenciador de janelas
"
function! ExecuteBackground(command, title)

  execute "silent !" . a:command. " > /dev/null 2>&1 && " .
        \ "/usr/bin/notify-send \"" . a:title . "\" complete &"
  redraw!
endfunction


