<?php

session_start();

ob_start(); // no servidor

$array = $_SESSION['tudo']; // todas as info do usuario

if(isset($_POST['cod_carona']) && isset($_GET['id_usu'])) {
	require_once('model/clsConexaoBanco.php');
	$db = new ConexaoBanco();
	
	require_once('controller/clsCarona.php');
	$carona = new Carona();
	
	$carona->InserirParticipanteCarona($_POST['cod_carona'], $_GET['id_usu'], $array['idusuario']);
	echo "OK!";
	
	header('location: caronas.php?aguarde=true');
}

ob_flush(); // no servidor

?>