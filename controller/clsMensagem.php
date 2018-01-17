<?php

class Mensagem {
	public $cod;
	public $id_de;
	public $id_para;
	public $mensagem;
	public $data_hora;
	
	public $resource;
	public $lista;
	
	public function __contruct($xcod = "", $xid_de = "", $xid_para = "", $xmensagem = "", $xdata_hora = ""){
		$this->cod = $xcod;
		$this->id_de = $xid_de;
		$this->id_para = $xid_para;	
		$this->mensagem = $xmensagem;
		$this->data_hora = $xdata_hora; // Sempre concatenar a data_hora com aspas simples na view, jс que na inserчуo estс sem aspas
	}
	
	public function InserirMensagem(){
		$sql = "CALL SPInserirMensagem(NULL, ".$this->id_de.", ".$this->id_para.", '".$this->mensagem."', ".$this->data_hora.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	/* Nуo sei se vai precisar
	public function AlterarMensagem(){ 
		$sql = "CALL SPAlterarMensagem(".$this->cod.", '".$this->mensagem."')";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	*/
	
	public function DeletarMensagem(){
		$sql = "CALL SPDeletarMensagem(".$this->cod.")";
		$res = mysqli_query($con, $sql) or die(mysql_error());
		return $res;
	}
	
	public function ListarDadosMensagem(){
		$sql = "SELECT * FROM tbl_mensagens";
		$this->resource = mysqli_query($con, $sql) or die(mysql_error());
		return $this->resource;
	}
	
	public function ExecutaListaMensagem(){
		$this->lista = mysqli_fetch_assoc($this->resource);
		return $this->lista;
	}
}

?>