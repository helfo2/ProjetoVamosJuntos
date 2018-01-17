<?php
    session_start();

	ob_start(); // no servidor
	$erro_login = false;
	// if(isset($_GET['first'])) {
	// 	if($_GET['first'] == 1) {
	// 		echo "<script>alert('Bem Vindo! Faça seu primeiro login, por favor');</script>";
	// 	}
	// }	
	
	if(isset($_POST['cadastrar'])){
        header('location: cadastro.php');
    }
    else if(isset($_POST['entrar'])){
        if($_POST["login"] == "" or $_POST["password"] == "" or strpos($_POST["login"], '\'') !== false or strpos($_POST["password"], '\'') !== false){ // invalido
			$erro_login = true;
		}
		else { // valida login
			require_once('model/clsConexaoBanco.php');
			$db = new ConexaoBanco();
	
			require_once('controller/clsUsuario.php');
			$logou = new Usuario();	
			
			$logou->login = $_POST['login'];
			$logou->senha = $_POST['password'];
			
			$logou->ValidarUsuario($db->con);
			$tudo /* armazena todas as informacoes do banco de dados */ = $logou->ExecutaListaValidarUsuario($db->con);	

			if($tudo['idusuario'] != 0){ // logado com sucesso
				header('location: perfil.php');
				
				$_SESSION['login'] = $logou->login;
				$_SESSION['password'] = $logou->senha;

				$_SESSION['tudo'] = $tudo;
			}
			else { // nao logou
				$erro_login = true;	
			}
		} 
    } 	
	
?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Vamos Juntos - Login</title>
        <link rel="stylesheet" href="css/style.css"  />
    </head>
    <body>


        <div id="cadastre">
		
			<img src="./images/logo_login.png" /><br><br>

			<p>Novo usuário? <a href="cadastro.php" title="Cadastre-se aqui">Cadastre-se aqui</a></p>
        
        </div>
        
        <div id="login">
            <form id="form-login" method="POST">

				<?php

					if ($erro_login==true){

						echo '<div class="error"> Login Inválido! </div>';						
					}


				?>
				

                <input type="text" name="login" placeholder="Login">
                <input type="password" name="password" placeholder="Senha">
                <input class="login-botao" type="submit" name="entrar" value="Entrar">

            </form>
        </div>
    </body>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>


</html>

<?php ob_flush(); // no servidor ?>