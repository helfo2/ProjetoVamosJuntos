<?php

session_start();
date_default_timezone_set('America/Sao_Paulo');
ob_start(); // no servidor

require_once('model/clsConexaoBanco.php');
$db = new ConexaoBanco();

require_once('controller/clsPostagem.php');
$post = new Postagem();

if(isset($_POST['publicar'])) {	
	$post->usuario_idusuario = $_GET['id'];
	
	$post->data_hora = date('Y-m-d H:i:s'); 
	
	$post->post = $_POST['status']; 
	
	$post->tipo = 's';
	
	$post->InserirPostagem($db->con);
	
	header('location: perfil.php');
} 

if(isset($_POST['comentar'])){ 
	require_once('controller/clsCarona.php');
	$carona = new Carona();
	
	$post->usuario_idusuario = $_GET['id'];
	
	$post->data_hora = date('Y-m-d H:i:s'); 
	
	$post->post = $_POST['comentario']; 

	$post->tipo = 'c';
	
	$post->InserirPostagem($db->con); 
	$post->SelecionarUltimaPostagem($db->con);
	
	var_dump($post->SelecionarUltimaPostagem($db->con));
	$ultima_postagem = $post->ExecutaListaPostagemPerfil();
	
	$carona->InserirComentarioCarona($db->con, $_GET['cod_carona'], $ultima_postagem['cod']);
	
	header('location: detalhes-carona.php?cod='.$_GET['cod_carona']);
}

ob_flush(); // no servidor

?>