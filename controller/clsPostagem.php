<?php

class Postagem {
	public $cod;
	public $data_hora;
	public $post;
	public $usuario_idusuario;
	public $tipo;
	
	public $resource;
	public $lista;
	
	public function __construct($xcod = "", $xdata_hora = "", $xpost = "", $xusuario_idusuario = "", $xtipo = ""){
		$this->cod = $xcod;
		$this->data_hora = $xdata_hora; // Sempre concatenar a data_hora com aspas simples na view, jс que na inserчуo estс sem aspas
		$this->post = $xpost;
		$this->usuario_idusuario = $xusuario_idusuario;
		$this->tipo = $xtipo;
	}
	
	public function InserirPostagem($con){
		$sql = "CALL SPInserirPostagem(NULL, '".$this->data_hora."', '".$this->post."', ".$this->usuario_idusuario.", 'A')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	/* Nуo sei se vai precisar
	public function AlterarPostagem(){ 
		$sql = "CALL SPAlterarPostagem(".$this->cod.", '".$this->post."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	*/
	
	public function DeletarPostagem($con){
		$sql = "CALL SPDeletarPostagem(".$this->cod.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function ListarDadosPostagemPerfil($con, $idusuario){
		$sql = "SELECT * FROM tbl_postagens WHERE usuario_idusuario = ".$idusuario." ORDER BY data_hora DESC";
		$this->resource = mysqli_query($con, $sql) or die("Erro: ".mysql_error());
		return $this->resource;
	}
	
	public function ListarDadosPostagemCod($con, $cod){
		$sql = "SELECT * FROM tbl_postagens WHERE cod = ".$cod." ORDER BY data_hora DESC";
		$this->resource = mysqli_query($con, $sql) or die("Erro 2: ".mysql_error());
		return $this->resource;
	}
	
	public function ListarDadosPostagemCodUsuAtual($con, $cod, $idusuario){
		$sql = "SELECT * FROM tbl_postagens WHERE cod = ".$cod." AND usuario_idusuario = ".$idusuario." ORDER BY data_hora DESC";
		$this->resource = mysqli_query($con, $sql) or die("Erro 2: ".mysql_error());
		return $this->resource;
	}
	
	public function ExecutaListaPostagemPerfil(){
		$this->lista = mysqli_fetch_assoc($this->resource); 
		return $this->lista;
	}
	
	public function ListarDadosPostagemPerfilAmigo($con, $xid){
		$sql = "SELECT * FROM tbl_postagens WHERE usuario_idusuario = ".$xid." ORDER BY data_hora DESC";
		$this->resource = mysqli_query($con, $sql) or die("Erro 3: ".mysql_error());
		return $this->resource;
	}
	
	public function ExecutaListaPostagemPerfilAmigo($con){
		
		$sql = "SELECT * FROM tbl_postagens WHERE usuario_idusuario = ".$xid;

		$res = mysqli_query($con, $sql);

		$this->lista = mysqli_fetch_assoc($res); 
		return $this->lista;
	}
	
	public function SelecionarUltimaPostagem($con){
		$sql = "SELECT cod FROM tbl_postagens WHERE 1 ORDER BY data_hora DESC LIMIT 1";
		$this->resource = mysqli_query($con, $sql) or die("Erro 4: ".mysql_error());
		return $this->resource;
	}
}

?>