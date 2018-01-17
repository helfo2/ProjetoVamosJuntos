<?php 

ob_start(); // No servidor

require_once('model/clsConexaoBanco.php');
$db = new ConexaoBanco();

require_once('controller/clsUsuario.php');
$usu_amigo = new Usuario();

$nome = $_POST['palavra'];

var_dump($nome);

while($dados_amigo = $usu_amigo->SelecionarAmigosPorNome($nome)) {
	$id_amigo[] = $dados_amigo['idusuario'];
}

require_once('controller/clsImagem.php');					
$usu_amigo_imagem = new Imagem();

for($c = 0; $c < count($id_amigo); $c++) {						
	$usu_amigo->ListarDadosAmigo($id_amigo[$c]);
	
	$dados = $usu_amigo->ExecutaListaUsuario();																					
	
	$usu_amigo_imagem->usuario_idusuario = $dados['idusuario'];
	$usu_amigo_imagem->ListarDadosImagem();
	$imagem_amigo = $usu_amigo_imagem->ExecutaListaImagem();
	
	$mostra_imagem = ($imagem_amigo['imagem'] == '') ? 'images/perfil-branco.jpg' : 'imagem-perfil.php?id='.$dados['idusuario'];
	
	echo "<div class='amigo'>
			<a title='".$dados['nome']."' href='perfil-amigo.php?id=".$dados['idusuario']."'>
				<div class='miniFotoAmigo' style=\"background: url('".$mostra_imagem."') center center no-repeat; background-size: 192%;\"></div>
				<span title='".$dados['nome']."'>".$dados['nome']."</span>
				<div class=\"more\"></div>
			</a>
		</div>";
}

ob_flush(); // No servidor

?>