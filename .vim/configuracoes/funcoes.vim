"""""""""""""""""""""""""""""""""""
"       FUNÇÕES PERSONALIZADAS
"""""""""""""""""""""""""""""""""""
let g:diretorioArquivoTags = $VIMROOT . "/runtime/tags/"
function UtilizarTags()

  let iOpcao              = confirm("Utilizar Tags???? Qual projeto?", "&zDBPortal_prj\n&xFuncoes8\n&cDBPref", 2)

  let aEscolhas           = { 1 : "dbportal_prj",
                            \ 2 : "funcoes8",
                            \ 3 : "dbpref"}
  let sProjeto            = aEscolhas[iOpcao]

  echo "Definindo configuracoes VIM"
  let sCaminhoArquivoTags = g:diretorioArquivoTags ."".sProjeto."_tags"

  execute "set tags=". sCaminhoArquivoTags
  echo 'Feito o Brique... Pode usar as tags...'
endfunction


function AtualizaTags()

  let iOpcao              = confirm("Atualizar Tags??? Qual projeto?", "&zDBPortal_prj\n&xFuncoes8\n&cDBPref", 2)

  let aEscolhas           = { 1 : "dbportal_prj",
                            \ 2 : "funcoes8",
                            \ 3 : "dbpref"}
  let sProjeto            = aEscolhas[iOpcao]
  let sCaminhoArquivoTags = g:diretorioArquivoTags . sProjeto ."_tags"

  execute "!ctags -f " . sCaminhoArquivoTags . " -R /var/www/" . sProjeto . "/ "
endfunction
