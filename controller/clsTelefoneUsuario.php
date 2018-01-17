<?php

class TelefoneUsuario {
	public $idtel_usuario;
	public $telefone;
	public $usuario_idusuario;
	
	public $resource;
	public $lista;
	
	public function __construct($xidtel_usuario = "", $xtelefone = "", $xusuario_idusuario = ""){
		$this->idtel_usuario = $xidtel_usuario;
		$this->telefone = $xtelefone;
		$this->usuario_idusuario = $xusuario_idusuario;	
	}
	
	public function InserirTelefoneUsuario(){
		$sql = "CALL SPInserirTelUsuario(NULL, '".$this->telefone."', ".$this->usuario_idusuario.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function AlterarTelefoneUsuario(){
		$sql = "CALL SPAlterarTelUsuario(".$this->idtel_usuario.", '".$this->telefone."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function DeletarTelefoneUsuario($idtel_usuario){
		$sql = "CALL SPDeletarTelUsuario(".$idtel_usuario.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function ListarDadosTelefoneUsuarioPerfil(){
		$sql = "SELECT * FROM tbl_tel_usuario WHERE usuario_idusuario = ".$this->usuario_idusuario;
		$this->resource = mysqli_query($con, $sql) or die(mysql_error());
		return $this->resource;		
	}
	
	public function ExecutaListaTelefoneUsuarioPerfil(){
		$this->lista = mysqli_fetch_assoc($this->resource); 
		return $this->lista;
	}
}

?>