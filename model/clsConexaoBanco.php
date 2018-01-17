<?php

// Classe com a conexão com o banco de dados
class ConexaoBanco {
	private $host; // Servidor 
	private $user; // Usuário
	private $password; // Senha
	private $database; // Banco de dados
	private $status; // Sucesso ou falha
	
	public $con;

	// Construtor que chama o método "Conectar"
	public function __construct(){
		date_default_timezone_set("America/Sao_Paulo");
		$this->Conectar();
	}
	
	// Método "Conectar" que põe valores nas variáveis
	public function Conectar(){
		$this->host = "localhost";
		$this->user = "root";
		$this->password = "taquim";
		$this->database = "vamosjuntos";
		
		// Teste  de conexão com os valores passados
		$this->con = mysqli_connect($this->host, $this->user, $this->password);

		if(mysqli_select_db($this->con, $this->database))
			$this->status = true; // Deu certo
		else
			$this->status = false; // Deu errado
	}
	
	// Método que retorna o "status"
	public function StatusConexao(){
		return $this->status;
	}	
}

?>