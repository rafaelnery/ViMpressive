<?php 
/**
 * cvsgit - adicionar a lista para commit
 */

/**
 * Parametros do commit  
 */
$oParametros = new StdClass();
$oParametros->sArquivo      = null;
$oParametros->sMensagem     = null;
$oParametros->iTag          = 0;
$oParametros->sTipoAbreviado = null;
$oParametros->sTipoCompleto  = null;

/**
 * Arquivo a ser commitado 
 */
$oParametros->sArquivo = array_shift($aArgumentos);

/**
 * Variavel para controlar itens do array $aArgumentos que serao pulados 
 */
$iContinue = 0;

/**
 * Percorre os argumentos e monta parametros para commit 
 */
foreach ($aArgumentos as $iIndice => $sArgumento) {

  if ( $iContinue > 0 && $iIndice == $iContinue )  {
    continue;
  }
  
  switch ( $sArgumento ) {
    
    /**
     * Mensagem do commit 
     */
    case '-m' :
    case '-msg' :
    case '-mensagem' :

      $iContinue = $iIndice + 1;
      $oParametros->sMensagem = $aArgumentos[$iContinue];
      continue;

    break;

    /**
     * Tag do commit 
     */
    case '-t' :
    case '-tag' :

      $iContinue = $iIndice + 1;
      if ( strpos($aArgumentos[$iContinue], '-') !== false ) {
        continue;
      }
      $oParametros->iTag = $aArgumentos[$iContinue];
      continue;

    break;

    /**
     * Commit para melhorias 
     */
    case '-e' :
    case '-enh' :
    case '-enhanced' :

      $oParametros->sTipoAbreviado = 'ENH';
      $oParametros->sTipoCompleto = 'enhanced';
      continue;

    break;

    /**
     * Commit para correcao de erros 
     */ case '-f' :
    case '-fix' :
    case '-fixed' :

      $oParametros->sTipoAbreviado = 'FIX';
      $oParametros->sTipoCompleto = 'fixed';
      continue;

    break;

    /**
     * Commit para adicionar fonte ou funcionalidade
     */
    case '-a' :
    case '-add' :
    case '-added' :

      $oParametros->sTipoAbreviado = 'ADD';
      $oParametros->sTipoCompleto = 'added';
      continue;

    break;

    /**
     * Commit para modificacoes do layout ou documentacao 
     */
    case '-s' :
    case '-style' :

      $oParametros->sTipoAbreviado = 'STYLE';
      $oParametros->sTipoCompleto = 'style';
      continue;

    break;

  }

  $iContinue = 0;
}

$oParametros->sComandoCommit = "cvs commit $oParametros->sArquivo -m '$oParametros->sTipoAbreviado: $oParametros->sMensagem ($oParametros->sTipoCompleto #$oParametros->iTag)'";
$oParametros->sComandoTag    = "cvs tag $oParametros->sArquivo -F T$oParametros->iTag";

$aMensagemErro = array();
$sEspacamento = ' ';

if ( empty($oParametros->sArquivo) ) {
  $aMensagemErro[] = 'Arquivo para commit nao informado';
}
  
if ( empty($oParametros->sMensagem) ) {
  $aMensagemErro[] = 'Mensagem do commit nao informado';
}

if ( empty($oParametros->iTag) || strlen($oParametros->iTag) < 4 ) {
  $aMensagemErro[] = 'Tag nao informada, ou invalida';
}

if ( empty($oParametros->sTipoAbreviado) || empty($oParametros->sTipoCompleto) ) {
  $aMensagemErro[] = "Tipo de commit nao informado | Tipos de commit: addeded(a, add), fixed(fix, f), enhanced(enh, e), style(s)";
}

if ( !empty($aMensagemErro) ) {

  echo "Erro ao adicionar aquivo para commit:\n\n - ";
  echo implode("\n - ", $aMensagemErro);
  echo "\n";
  exit(1);
}

$sCaminhoArquivoObjetoCommit = '/tmp/arquivoObjetoCommit';
$aCommit = array();

if ( file_exists($sCaminhoArquivoObjetoCommit) ) {
  $aCommit = unserialize(file_get_contents($sCaminhoArquivoObjetoCommit));
}

$aCommit[ $oParametros->sArquivo ] = $oParametros;
file_put_contents($sCaminhoArquivoObjetoCommit, serialize($aCommit));
