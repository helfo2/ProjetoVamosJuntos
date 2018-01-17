<?php

session_start();

require_once('model/clsConexaoBanco.php');
$db = new ConexaoBanco();

$array = $_SESSION['tudo'];

ob_start(); // no servidor

if(isset($_POST['amizade'])) {	
	require_once('controller/clsUsuario.php');
	$usu_amizade = new Usuario();
	
	if(strpos($_POST['amizade'], 'ac') > 0) {		
		$usu_amizade->ConfirmarAmizade($array['idusuario'], intval($_POST['amizade']));
	}
	else {
		$usu_amizade->NaoConfirmarAmizade($array['idusuario'], intval($_POST['amizade']));		
	}
	echo "<script>alert('OK!');</script>";
	header('location: perfil.php');
}

ob_flush(); // no servidor

?>