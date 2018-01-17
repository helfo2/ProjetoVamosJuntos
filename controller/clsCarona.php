<?php

class Carona {
	public $cod;
	public $id_de;
	public $onde_vai;
	public $onde_sai;
	public $carro;
	public $quando;
	public $quanto;
	public $qtd_pessoas;
	public $descricao;
	
	public $resource;
	public $resource_dados;
	public $lista;
	public $lista_dados;
	
	public function InserirCarona($con){
		$sql = "INSERT INTO tbl_carona VALUES (NULL, ".$this->id_de.", '".$this->onde_vai."', '".$this->onde_sai."', '".$this->carro."', '".$this->quando.":00', ".$this->qtd_pessoas.", '".$this->descricao."', '".$this->quanto."')";
		$res = mysqli_query($con, $sql) or die("Erro 1: ".mysql_error());
		return $res;
	}
	
	public function ListarCarona($con){
		$sql = "SELECT * FROM tbl_carona ORDER BY quando ASC";
		$this->resource = mysqli_query($con, $sql) or die("Erro 2: ".mysql_error());
		return $this->resource;
	}
	
	public function ListarCaronaPorCod($con, $cod){
		$sql = "SELECT * FROM tbl_carona WHERE cod = ".$cod;		
		$this->resource_dados = mysqli_query($con, $sql) or die("Erro 3: ".mysql_error());
		return $this->resource_dados;
	}
	
	public function ListarCaronaUsuarioParticipante($con, $id_usuario){
		$sql = "SELECT cod_carona, id_criador FROM tbl_carona_quem_vai WHERE id_participante = ".$id_usuario." AND status = 1";		
		$this->resource = mysqli_query($con, $sql) or die("Erro 4: ".mysql_error());
		return $this->resource;
	}
	
	public function ListarCaronaUsuario($con, $id_usuario){
		$sql = "SELECT cod FROM tbl_carona WHERE id_de = ".$id_usuario;		
		$this->resource = mysqli_query($con, $sql) or die("Erro 5: ".mysql_error());
		return $this->resource;
	}
	
	public function ListarUsuarioCriador($con, $cod_carona){
		$sql = "SELECT id_de FROM tbl_carona WHERE cod = ".$cod_carona;		
		$this->resource = mysqli_query($con, $sql) or die("Erro 6: ".mysql_error());
		return $this->resource;
	}
	
	public function ListarPesquisaCarona($con, $dado){
		$sql = "SELECT * FROM tbl_carona WHERE onde_vai LIKE '%".$dado."%' ORDER BY quando ASC";
		$this->resource = mysqli_query($con, $sql) or die("Erro 7: ".mysql_error());
		return $this->resource;
	}

	public function PegaNome($con, $dados){
		$sql = "SELECT nome FROM tbl_usuario WHERE idusuario = '".$dados['id']."'";
		$resultado = mysqli_query($con, $sql) or die("Erro 8: ".mysql_error());
		$resultado = mysqli_fetch_assoc($resultado);
		return $resultado;
	}
	
	public function ExecutaListaCarona(){
		$this->lista = mysqli_fetch_assoc($this->resource);
		return $this->lista;
	}
		
	public function ExecutaDadosListaCarona($con){
		$this->lista_dados = mysqli_fetch_assoc($this->resource_dados); 
		return $this->lista_dados;
	}
	
	public function InserirComentarioCarona($con, $cod_carona, $cod_post){
		$sql = "INSERT INTO tbl_comentario_carona VALUES (NULL, ".$cod_carona.", ".$cod_post.", NOW())";
		$res = mysqli_query($con, $sql) or die("Erro 9: ".mysql_error());
		return $res;
	}

	public function ListarComentarioCarona($con, $cod){
		$sql = "SELECT * FROM tbl_comentario_carona WHERE cod_carona = ".$cod." ORDER BY data_hora DESC";
		$this->resource = mysqli_query($con, $sql) or die("Erro 10: ".mysql_error());
		return $this->resource;
	}
	
	public function InserirParticipanteCarona($con, $cod_carona, $id_criador, $id_participante){
		$sql = "INSERT INTO tbl_carona_quem_vai VALUES (NULL , ".$cod_carona.", ".$id_criador.", ".$id_participante.", 0, NULL)";
		$res = mysqli_query($con, $sql) or die("Erro 11: ".mysql_error());
		return $res;
	}
	
	public function ListarSolicitacaoCarona($con, $idusuario){
		$sql = "SELECT cod_carona, id_participante FROM tbl_carona_quem_vai WHERE id_criador = ".$idusuario." AND status = 0";
		$this->resource = mysqli_query($con, $sql) or die("Erro 12: ".mysql_error());
		return $this->resource;
	}
	
	public function SelecionaDestinoCarona($con, $cod){
		$sql = "SELECT cod, onde_vai FROM tbl_carona WHERE cod = ".$cod;
		$this->resource = mysqli_query($con, $sql) or die("Erro 13: ".mysql_error());
		return $this->resource;
	}
		
	public function ConfirmarParticipanteCarona($con, $cod_carona, $id_criador, $id_participante){
		$sql = "UPDATE tbl_carona_quem_vai SET status = 1 WHERE id_criador = ".$id_criador." AND cod_carona = ".$cod_carona." AND id_participante = ".$id_participante;
		$res = mysqli_query($con, $sql) or die("Erro 14: ".mysql_error());
		return $res;
	}
	
	public function RecusarParticipanteCarona($con, $cod_carona, $id_criador, $id_participante){
		$sql = "UPDATE tbl_carona_quem_vai SET status = 3 WHERE id_criador = ".$id_criador." AND cod_carona = ".$cod_carona." AND id_participante = ".$id_participante;
		$res = mysqli_query($con, $sql) or die("Erro 15: ".mysql_error());
		return $res;
	}
	
	public function PesquisarCarona($con, $onde_sai, $onde_vai){
		$sql = "SELECT cod FROM tbl_carona WHERE onde_sai LIKE '%".$onde_sai."%' AND onde_vai LIKE '%".$onde_vai."%' LIMIT 10";
		$this->resource = mysqli_query($con, $sql) or die("Erro 16: ".mysql_error());
		return $this->resource;
	}
	
	public function DesabilitaParticiparCarona($con, $cod_carona, $id_participante){
		$sql = "SELECT * FROM tbl_carona_quem_vai WHERE cod_carona = ".$cod_carona." AND id_participante = ".$id_participante;
		$res = mysqli_query($con, $sql) or die("Erro 17: ".mysql_error());	
		
		if(mysqli_num_rows($res) == 0)
			$retorno = false; 
		else 
			$retorno = true;
		
		return $retorno;
	}
	
	public function DesabilitaCriadorCarona($con, $cod_carona, $id_criador){
		$sql = "SELECT * FROM tbl_carona_quem_vai WHERE cod_carona = ".$cod_carona." AND id_criador = ".$id_criador;
		$res = mysqli_query($con, $sql) or die("Erro 18: ".mysql_error());	
		
		if(mysqli_num_rows($res) == 0)
			$retorno = false; 
		else 
			$retorno = true;
		
		return $retorno;
	}
	
	public function AtualizarQtdPessoas($con, $cod_carona){
		$sql = "UPDATE tbl_carona SET qtd_pessoas = (qtd_pessoas - 1) WHERE cod = ".$cod_carona;
		$res = mysqli_query($con, $sql) or die("Erro 19: ".mysql_error());
		return $res;
	}
	
	public function QuantidadeCaronas($con, $idusuario){
		$sql = "SELECT COUNT(id_relacao) FROM tbl_carona_quem_vai WHERE id_participante = ".$idusuario." AND STATUS = 1";
		$this->resource = mysqli_query($con, $sql) or die("Erro 20: ".mysql_error());
		$lista = mysqli_fetch_assoc($this->resource);
		return $lista['COUNT(id_relacao)'];		
	}	
}

?>