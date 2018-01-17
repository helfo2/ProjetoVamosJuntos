<?php

class Carona {
	public $cod;
	public $id_de;
	public $id_para;
	public $mensagem;
	public $data_hora;
	
	public $resource;
	public $lista;
	
	public function InserirCarona($dados){
		$sql = "INSERT INTO tbl_carona VALUES(NULL, '".$dados['id']."', '".$dados['onde']."', '".$dados['deOnde']."', '".$dados['modelo']."', '".$dados['data']."', '".$dados['quantas']."', '".$dados['descricao']."' )";
		$res = mysql_query($sql) or die(mysql_error());
		return $res;
	}
	
	public function ListarCarona(){
		$sql = "SELECT * FROM tbl_carona ORDER BY quando ASC";
		$this->resource = mysql_query($sql) or die(mysql_error());
		return $this->resource;
	}
	
	public function ListarCaronaPorCod($cod){
		$sql = "SELECT * FROM tbl_carona WHERE cod = ".$cod;		
		$this->resource = mysql_query($sql) or die(mysql_error());
		return $this->resource;
	}
	
	public function ListarCaronaUsuarioParticipante($id_usuario){
		$sql = "SELECT id_carona FROM tbl_carona_quem_vai WHERE id_participante = ".$id_usuario;		
		$this->resource = mysql_query($sql) or die(mysql_error());
		return $this->resource;
	}
	
	public function ListarPesquisaCarona($dado){
		$sql = "SELECT * FROM tbl_carona WHERE onde_vai LIKE '%".$dado."%' ORDER BY quando ASC";
		$this->resource = mysql_query($sql) or die(mysql_error());
		return $this->resource;
	}

	public function PegaNome($dados){
		$sql = "SELECT nome FROM tbl_usuario WHERE idusuario = '".$dados['id']."'";
		$resultado = mysql_query($sql);
		$resultado = mysql_fetch_assoc($resultado);
		return $resultado;
	}
	
	public function ExecutaListaCarona(){
		$this->lista = mysql_fetch_assoc($this->resource);
		return $this->lista;
	}
}

?>