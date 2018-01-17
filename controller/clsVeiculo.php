<?php

class Veiculo {
	public $placa;
	public $cor;
	public $modelo;
	public $marca;
	public $ano;
	public $lugares;
	public $categoria_idcategoria;
	public $usuario_idusuario;
	
	public $resource;
	public $lista;
	
	public function __construct($xplaca = "", $xcor = "", $xmodelo = "", $xmarca = "", $xano = "", $xlugares = "", $xcategoria_id_categoria = "", $xusuario_id_usuario = ""){
		$this->placa = $xplaca;
		$this->cor = $xcor;
		$this->modelo = $xmodelo;
		$this->marca = $xmarca;
		$this->ano = $xano;
		$this->lugares = $xlugares;
		$this->categoria_idcategoria = $xcategoria_id_categoria;
		$this->usuario_idusuario = $xusuario_id_usuario;
	}
	
	public function InserirVeiculo($con){
		$sql = "CALL SPInserirVeiculo('".$this->placa."', '".$this->cor."', '".$this->modelo."', '".$this->marca."', '".$this->ano."', '".$this->lugares."', ".$this->categoria_idcategoria.", ".$this->usuario_idusuario.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function AlterarVeiculo($con, $placa){
		$sql = "CALL SPAlterarVeiculo('".$placa."', '".$this->cor."', '".$this->modelo."', '".$this->marca."', '".$this->ano."', '".$this->lugares."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;		
	}
	
	public function DeletarVeiculo($con, $xplaca){
		$sql = "CALL SPDeletarVeiculo('".$xplaca."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res; 
	}
	
	public function ListarDadosVeiculo($con){
		$sql = "SELECT * FROM tbl_veiculo";
		$this->resource = mysqli_query($con, $sql) or die(mysql_error());
		return $this->resource; 
	}

	public function ListarDadosVeiculoPorIdUsuario($con, $idusu){
		$sql = "SELECT * FROM tbl_veiculo WHERE usuario_idusuario = ".$idusu;
		$this->resource = mysqli_query($con, $sql) or die(mysql_error());
		return $this->resource; 
	}
	
	public function ExecutaListaVeiculo(){
		$this->lista = mysqli_fetch_assoc($this->resource);
		return $this->lista;
	}
}

?>