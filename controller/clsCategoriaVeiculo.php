<?php

class CategoriaVeiculo {
	public $idcategoria;
	public $descricao;

	public $resource;
	public $lista;
	
	public function __contruct($xidcategoria = "", $xdescricao = ""){
		$this->idcategoria = $xidcategoria;
		$this->descricao = $xdescricao;		
	}
	
	public function InserirCategoriaVeiculo($con){
		$sql = "CALL SPInserirCategoriaVeiculo(NULL, '".$this->descricao."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function AlterarCategoriaVeiculo($con){ // É importante que o id correto seja especificado
		$sql = "CALL SPAlterarCategoriaVeiculo(".$this->idcategoria.", '".$this->descricao."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function DeletarCategoriaVeiculo($con, $xidcategoria){
		$sql = "CALL SPDeletarCategoriaVeiculo(".$xidcategoria.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function ListarDadosCategoriaVeiculo($con){
		$sql = "SELECT * FROM tbl_categoria_veiculo ORDER BY descricao ASC";
		$this->resource = mysqli_query($con, $sql) or die(mysql_error());
		return $this->resource;
	}
	
	public function ExecutaListaCategoriaVeiculo(){
		$this->lista = mysqli_fetch_assoc($this->resource);
		return $this->lista;
	}
}

?>