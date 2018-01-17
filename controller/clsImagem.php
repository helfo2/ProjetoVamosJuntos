<?php

class Imagem {
	public $id;
	public $nome;
	public $imagem;
	public $tamanho;
	public $usuario_idusuario;
	
	public $resource2;
	public $lista2;
	
	public $resource;
	public $lista;	
	
	public function __construct($xid = "", $xnome = "", $ximagem = "", $xtamanho = "", $xusuario_idusuario = ""){
		$this->id = $xid;
		$this->nome = $xnome;
		$this->imagem = $ximagem;
		$this->tamanho = $xtamanho;
		$this->usuario_idusuario = $xusuario_idusuario;
	}
	
	public function InserirImagem($con){
		$sql = "CALL SPInserirImagem(NULL, '".$this->nome."', '".$this->imagem."', ".$this->usuario_idusuario.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}	
		
	// A funчуo AlterarImagem() nуo foi testada	
	public function AlterarImagem($con){
		$sql = "CALL SPAlterarImagem(".$this->id/* Serс gerado pela funчуo ExecutaListaAlterarExcluirImagem() abaixo */.", '".$this->nome."', '".$this->imagem."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	// A funчуo DeletarImagem() nуo foi testada	dinтmicamente
	public function DeletarImagem($con, $xid){
		$sql = "CALL SPDeletarImagem(".$xid/* Serс gerado pela funчуo ExecutaListaAlterarExcluirImagem() abaixo */.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
		
	public function ListarDadosAlterarExcluirImagem($con){	
		$sql = "SELECT * FROM tbl_imagens WHERE usuario_id_usuario = ".$this->usuario_idusuario; /* A imagem em si deverс ser pega pela tela, com a funчуo ---> addslashes(file_get_contents($_FILES['imagem']['tmp_name']) , presente no arquivo teste_imagem_inserir.php */
		$this->resource2 = mysqli_query($con, $sql) or die(mysql_error());
		return $this->resource2;
	}
	
	public function ExecutaListaAlterarExcluirImagem($con){
		$this->lista2 = mysqli_fetch_assoc($this->resource2);
		return $this->lista2;
		
		// Importante: ao listar a imagem, sugiro que use o comando ---> header('Content-type: image/jpeg');
	}
	
	public function ListarDadosImagem($con/*$id Preferi colocar como parтmetro */){	
		$sql = "SELECT * FROM tbl_imagens WHERE nome = 'perfil.png' AND usuario_id_usuario = ".$this->usuario_idusuario;
		$this->resource = mysqli_query($con, $sql) or die(mysql_error());
		return $this->resource;
	}
	
	public function ExecutaListaImagem(){
		$this->lista = mysqli_fetch_assoc($this->resource);
		return $this->lista;
		
		// Importante: ao listar a imagem, sugiro que use o comando ---> header('Content-type: image/jpeg');
	}
}

?>