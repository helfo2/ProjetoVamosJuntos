<?php
	session_start();

	ob_start(); // no servidor 
	
	if(strpos($_POST['nome'], '\'') !== false or strpos($_POST['email'], '\'') !== false or strpos($_POST['password'], '\'') !== false or strpos($_POST['con_password'], '\'') !== false) {
		echo "<script>alert('Dado(s) inválido(s)!');</script>";
	}
	else { 		
		if(isset($_GET['entrar'])) {
			if(!isset($_GET['aceito'])) {
				echo "<script>alert('Você precisa ler e aceitar os termos de uso primeiro!');</script>";
			}
			else {				
				require_once('model/clsConexaoBanco.php');
				$db = new ConexaoBanco();
				
				require_once('controller/clsUsuario.php');			
				$usuario = new Usuario();
				
				$usuario->id_usuario = null; // por causa do AUTO_INCREMENT do BD
				$usuario->nome = $_POST['nome'];
				$usuario->cpf = '';
				$usuario->sexo = null;
				$usuario->tipo = 'Passageiro'; // tipo (motorista ou passageiro)
				$usuario->idade = null;
				$usuario->dt_nascimento = null;
				$usuario->dt_cadastro = 'NOW()'; // data de cadastro (momento em que a pessoa clicar no botao "Cadastrar")
				$usuario->ultimo_acesso = 'NOW()'; // equivalente a data de cadastro
				
				$usuario->logradouro = null;
				$usuario->complemento = null;
				$usuario->cidade = null;
				$usuario->bairro = null;
				$usuario->cep = null;
				$usuario->uf = null;
				
				$usuario->login = $_POST['email'];
				$usuario->restricao = 'usu';
				$usuario->senha = $_POST['password'];
				$usuario->habilitado = 0;
				
				$usuario->InserirUsuario();
				
				$usuario->ValidarUsuario(); // login
				
				$_SESSION['primeira_vez'] = true;
				
				header('location: termos-de-uso.php');
			}
		}
	}
?>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Vamos Juntos - Cadastro</title>
        <link rel="stylesheet" href="css/style.css" />
		<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon" />
    </head>
    <body>
        <div class="limited">
            <form id="form-cadastro" method="POST" action="cadastro.php">
                <input type="text" name="nome" placeholder="Nome">
                <input type="text" name="email" placeholder="Email">
                <input type="password" name="password" id="password" placeholder="Senha">
                <input type="password" name="con_password" placeholder="Confirma Senha">
                <input type="submit" name="cadastrar" value="Cadastrar">
            </form>
        </div>
    </body>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
</html>
<?php ob_flush(); // no servidor ?>