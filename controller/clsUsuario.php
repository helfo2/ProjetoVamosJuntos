<?php

class Usuario {
	#region Propriedades
	public $id_usuario;
	public $nome;
	public $cpf;
	public $sexo;
	public $tipo;
	public $idade;
	public $dt_nascimento;
	public $dt_cadastro;
	public $ultimo_acesso;
	public $logradouro;
	public $complemento;
	public $cidade;
	public $bairro;
	public $cep;
	public $uf;
	
	// Uso do sistema
	public $restricao;
	public $login;
	public $senha;
	public $isCpfValid;	
	
	// Para executar a lista na tela de administrador
	public $resource;
	public $lista;
	
	// Para iniciar a sessão através da validação - funciona da mesma forma que a lista na tela de administrador
	public $resource_valida;
	public $lista_valida;
	
	#endregion Propriedades
	
	// Construtor que preenche as propriedades com valores (é muito importante usar todos os parâmetros)
	public function __construct($xid_usuario = "", $xnome = "", $xcpf = "", $xsexo = "",  $xtipo = "", $xidade = "", $xdt_nascimento = "", $xdt_cadastro = "", $xultimo_acesso = "", $xlogradouro = "", $xcomplemento = "", $xcidade = "", 
	$xbairro = "", $xcep = "", $xuf = "", $xrestricao = "", $xlogin = "", $xsenha = ""){
		// A melhor forma de atribuir os valores é um por um, sem usar o construtor
		$this->id_usuario = $xid_usuario;
		$this->nome = $xnome;
		$this->cpf = $xcpf;
		$this->sexo = $xsexo;
		$this->tipo = $xtipo;
		$this->idade = $xidade;
		$this->dt_nascimento = $xdt_nascimento;
		$this->dt_cadastro = $xdt_cadastro;
		$this->ultimo_acesso = $xultimo_acesso;
		$this->logradouro = $xlogradouro;
		$this->complemento = $xcomplemento;
		$this->cidade = $xcidade;
		$this->bairro = $xbairro;
		$this->cep = $xcep;
		$this->uf = $xuf;
		
		$this->restricao = $xrestricao;
		$this->login = $xlogin;
		$this->senha = $xsenha;		
	}
	
	// Função de inserção de usuário - uso de SP
	public function InserirUsuario($con){
		$sql = "CALL SPInserirUsuario (NULL, 
			'".$this->nome."', 
			'".$this->cpf."', 
			'".$this->sexo."', 
			'".$this->tipo."', 
			'0', 
			NULL, 
			NOW(), 
			NOW(), 
			'".$this->logradouro."', 
			'".$this->complemento."', 
			'".$this->cidade."', 
			'".$this->bairro."', 
			'".$this->cep."', 
			'".$this->uf."', 
			'".$this->restricao."', 
			'".$this->login."', 
			'".$this->senha."'
			)";
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	// Função de alteração de usuário em geral (campos alteráveis) - uso de SP
	public function AlterarUsuarioGeral($con){
		$sql = "CALL SPAlterarUsuarioGeral (".$this->id_usuario.", 
			'".$this->nome."', 
			'".$this->tipo."', 
			'".$this->logradouro."', 
			'".$this->complemento."', 
			'".$this->cidade."', 
			'".$this->bairro."', 
			'".$this->cep."', 
			'".$this->uf."')";
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	// Função de alteração de usuário novo com data de nascimento(campos alteráveis)
	public function AlterarUsuarioNovo($con){
		$sql = "UPDATE tbl_usuario SET 
			cpf = '".$this->cpf."',
			tipo = '".$this->tipo."', 
			sexo = '".$this->sexo."', 
			idade = ".$this->idade.", 
			dt_nascimento = '".$this->dt_nascimento."', 
			ultimo_acesso = NOW(), 
			logradouro = '".$this->logradouro."', 
			complemento = '".$this->complemento."',
			cidade = '".$this->cidade."',
			bairro = '".$this->bairro."',
			CEP = '".$this->cep."',
			UF = '".$this->uf."'
			WHERE idusuario = ".$this->id_usuario;
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	// Função de alteração de usuário novo sem data de nascimento(campos alteráveis)
	public function AlterarUsuarioNovoSemDataNasc($con){
		$sql = "UPDATE tbl_usuario SET 			
			cpf = '".$this->cpf."',
			tipo = '".$this->tipo."', 
			sexo = '".$this->sexo."', 
			idade = ".$this->idade.", 			
			ultimo_acesso = NOW(), 
			logradouro = '".$this->logradouro."', 
			complemento = '".$this->complemento."',
			cidade = '".$this->cidade."',
			bairro = '".$this->bairro."',
			CEP = '".$this->cep."',
			UF = '".$this->uf."'
			WHERE idusuario = ".$this->id_usuario;
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	// Função de alteração de senha de usuário (questão de organização e usabilidade) - uso de SP
	public function AlterarUsuarioSenha($con){
		$sql = "CALL SPAlterarUsuarioSenha (".$this->id_usuario.", '".$this->senha."')";
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	// Função de alteração de último acesso de usuário (baseada no começo de uma sessão) - uso de SP
	public function AlterarUsuarioUltimoAcesso($con){
		$sql = "CALL SPAlterarUsuarioUltimoAcesso (".$this->id_usuario.")";
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	// Função de exclusão de usuário - uso de SP
	// param1 -> id do usuário a ser deletado
	public function DeletarUsuario($con, $xid_usuario){
		$sql = "CALL SPDeletarUsuario(".$xid_usuario.")";
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	// Função de listagem de dados de usuário 
	public function ListarDadosUsuario($con){ // Precisa ser executada antes da função ExecutaListaUsuario() abaixo
		$sql = "SELECT * FROM tbl_usuario";
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $this->resource;
	}
	
	// Função de listagem de dados de usuário por codigo 
	public function ListarDadosUsuarioPorId($con, $id){ // Precisa ser executada antes da função ExecutaListaUsuario() abaixo
		$sql = "SELECT * FROM tbl_usuario WHERE idusuario = ".$id;
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $this->resource;
	}
	
	public function ListarNomeUsuarioPorId($con, $id){ 
		$sql = "SELECT nome FROM tbl_usuario WHERE idusuario = ".$id;
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $this->resource;
	}
	
	// Função de execução de matriz com dados de usuário - uso de SP
	public function ExecutaListaUsuario($con){ // Só funciona se a função ListarDadosUsuario() acima for executada primeiro
		$this->lista = mysqli_fetch_assoc($this->resource);
		return $this->lista;
	}
	
	// Função de listagem de dados de usuário a partir da validação - uso de SP
	public function ValidarUsuario($con){
		$sql = "SELECT * FROM tbl_usuario WHERE login = '".$this->login."' AND senha = '".$this->senha."' LIMIT 1";
		$this->resource_valida = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $this->resource_valida;
	}
	
	// Função de execução de matriz com dados de usuário provindos do método ValidarUsuario() acima - uso de SP
	public function ExecutaListaValidarUsuario(){
		$this->lista_valida = mysqli_fetch_assoc($this->resource_valida);
		return $this->lista_valida;
	}
	
	public function ValidarCPFUsuario()
	{
		$d = array(); // Dígitos
		$dv = array(); // Dígitos verificadores
		$dv_certo = array(); // Dígitos verificadores corretos
		$res = array(); // Resposta do primeiro dígito
		$res2 = array(); // Resposta do segundo dígito
		$soma_d = 0; // Soma dos 9 dígitos
		$soma_d2 = 0; // Soma dos 10 dígitos
		$resto = 0;
		$resto2 = 0;
		
		// Preenche o array com o CPF
		for($c = 0; $c < 9; $c++)
			$d[($c + 1)] = substr($cpf, $c, 1);
		
		// Preenche o array com os dígitos verificadores
		for($c = 9; $c < 11; $c++)	
			$dv[($c + 1)] = substr($cpf, $c, 1);
		
		$res[1] = $d[1] * 10;
		$res[2] = $d[2] * 9;
		$res[3] = $d[3] * 8;
		$res[4] = $d[4] * 7;
		$res[5] = $d[5] * 6;
		$res[6] = $d[6] * 5;
		$res[7] = $d[7] * 4;
		$res[8] = $d[8] * 3;
		$res[9] = $d[9] * 2;
		
		// Soma das multiplicações
		for($c = 1; $c < 10; $c++)	
			$soma_d += $res[$c];
		
		// Resto da divisão da soma por 11 - Primeiro dígito
		$resto = $soma_d % 11;	
		
		if($resto < 2)
			$dv_certo[0] = 0;
		else
			$dv_certo[0] = 11 - $resto;
		
		$res2[1] = $d[1] * 11;
		$res2[2] = $d[2] * 10;
		$res2[3] = $d[3] * 9;
		$res2[4] = $d[4] * 8;
		$res2[5] = $d[5] * 7;
		$res2[6] = $d[6] * 6;
		$res2[7] = $d[7] * 5;
		$res2[8] = $d[8] * 4;
		$res2[9] = $d[9] * 3;
		$res2[10] = $dv_certo[0] * 2;
		
		// Soma das multiplicações do segundo dígito
		for($c = 1; $c < 11; $c++)
			$soma_d2 += $res2[$c];	
		
		// Resto da da divisão da soma por 11 - Segundo dígito
		$resto2 = $soma_d2 % 11;		
		
		if($resto2 < 2)
			$dv_certo[1] = 0;
		else 
			$dv_certo[1] = 11 - $resto2;
		
		if($dv_certo[0] == $dv[10] && $dv_certo[1] == $dv[11])
			return true;
		else 
			return false;
	}
	
	public function ListarDadosAmigo($con, $xid){
		$sql = "SELECT * FROM  tbl_usuario WHERE idusuario = ".$xid;
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $this->resource;
	}
	
	public function ListarNomeAmigo($con, $xid){
		$sql = "SELECT nome FROM tbl_usuario WHERE idusuario = ".$xid;
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $this->resource;
	}
	
	public function UltimoInserido($con){
		$sql = "SELECT MAX(idusuario) FROM tbl_usuario";
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());		
		return mysqli_fetch_assoc($res);
	}
	
	public function SelecionarAmigos($con, $idusu){
		$sql = "SELECT * FROM tbl_usuario WHERE idusuario != ".$idusu;
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $this->resource;
	}
	
	public function SelecionarAmigosPorNome($con, $nome){
		$sql = "SELECT * FROM tbl_usuario WHERE nome LIKE '%$nome%' LIMIT 10";			
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());		
		return $this->resource;
	}
	
	public function InserirAmizade($con, $id_solicitante, $id_solicitado){
		$sql = "INSERT INTO  tbl_amizade VALUES (NULL, ".$id_solicitante.", ".$id_solicitado.", 0, NOW())";
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());		
		return $res;
	}
	
	public function DesabilitaInserirAmizade($con, $id_solicitante, $id_solicitado){
		$sql = "SELECT * FROM tbl_amizade WHERE (id_de = ".$id_solicitante." AND id_para = ".$id_solicitado.") OR (id_de = ".$id_solicitado." AND id_para = ".$id_solicitante.")";
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());	
		
		if(mysqli_num_rows($res) == 0)
			$retorno = true; 
		else 
			$retorno = false;
		
		return $retorno;
	}
	
	public function SelecionarAmizades($con, $cod){
		$sql = "SELECT * FROM tbl_amizade WHERE id_para = ".$cod." AND status = 0";			
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());		
		return $this->resource;
	}
	
	public function ConfirmarAmizade($con, $id_para, $id_de){
		$sql = "UPDATE tbl_amizade SET status = 1 WHERE id_para = ".$id_para." AND id_de = ".$id_de; 
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	public function NaoConfirmarAmizade($con, $id_para, $id_de){
		$sql = "UPDATE tbl_amizade SET status = 3 WHERE id_para = ".$id_para." AND id_de = ".$id_de; 
		$res = mysqli_query($con, $sql) or die(mysqli_error($con)());
		return $res;
	}
	
	public function ListaAmigosSolicitados($con, $cod){
		$sql = "SELECT * FROM tbl_amizade WHERE id_de = ".$cod." AND status = 1";			
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());		
		return $this->resource;
	}
	
	public function ListaAmigosSolicitaram($con, $cod){
		$sql = "SELECT * FROM tbl_amizade WHERE id_para = ".$cod." AND status = 1";			
		$this->resource = mysqli_query($con, $sql) or die(mysqli_error($con)());		
		return $this->resource;
	}
}

?> 