<?php

class EmailUsuario {
	public $idemail_usuario;
	public $email;
	public $usuario_idusuario;
	
	public function __contruct($xidemail_usuario = "", $xemail = "", $xusuario_idusuario = ""){
		$this->idemail_usuario = $xidemail_usuario;
		$this->email = $xemail;
		$this->usuario_idusuario = $xusuario_idusuario;	
	}
	
	public function InserirEmailUsuario(){
		$sql = "CALL SPInserirEmailUsuario(NULL, '".$this->email."', ".$this->usuario_idusuario.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function AlterarEmailUsuario(){
		$sql = "CALL SPAlterarEmailUsuario(".$this->idemail_usuario.", '".$this->email."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function DeletarEmailUsuario(){
		$sql = "CALL SPDeletarEmailUsuario(".$this->idemail_usuario.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function ListarDadosEmailUsuario(){
		return false;
	}
	
	public function ExecutaListaEmailUsuario(){
		return false;
	}
}

?>