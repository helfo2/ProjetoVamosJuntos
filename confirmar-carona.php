<?php

session_start();

require_once('model/clsConexaoBanco.php');
$db = new ConexaoBanco();

$array = $_SESSION['tudo'];

ob_start(); // no servidor

if(isset($_POST['carona']) && isset($_GET['cod_carona'])) { 
	require_once('controller/clsCarona.php');
	$carona_participa = new Carona();	
	
	if(strpos($_POST['carona'], 'si') > 0) { 
		$carona_participa->ConfirmarParticipanteCarona($_GET['cod_carona'], $array['idusuario'], intval($_POST['carona']));
		$carona_participa->AtualizarQtdPessoas($_GET['cod_carona']);
		echo "<script>alert('OK! Confirmado!');</script>";
	}
	else {
		$carona_participa->RecusarParticipanteCarona($_GET['cod_carona'], $array['idusuario'], intval($_POST['carona']));		
		echo "<script>alert('OK! Recusado!');</script>";
	}
	
	header('location: perfil.php');
}
else {
	echo "<script>alert('Erro na transferencia de dados!');</script>";
}

ob_flush(); // no servidor

?>