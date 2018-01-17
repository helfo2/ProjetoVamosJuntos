<?php 	
	ob_start();	// no servidor
	
	require_once('model/clsConexaoBanco.php');
	$db = new ConexaoBanco();
	
	require_once('controller/clsImagem.php'); 
	$img = new Imagem();	
	
	$idusuario = $_GET['id'];
	
	$img->usuario_idusuario = $idusuario;
	$img->ListarDadosImagem();
	
	$dados = $img->ExecutaListaImagem();	
	
	header('Content-type: image/jpg');	
	
	echo $dados['imagem'];	
	
	ob_flush(); // no servidor
?>