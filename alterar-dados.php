<?php
	@session_start();

	ob_start(); // no servidor
	
	if($_SESSION['login'] == null or $_SESSION['password'] == null) { // seguranca primaria
		header('location: login.php');
	} 
	else {
		require_once('model/clsConexaoBanco.php');
		$db = new ConexaoBanco();
		
		$array = $_SESSION['tudo']; // todas as info do usuario				
		
		require_once('controller/clsVeiculo.php');
		$veic = new Veiculo();
		
		$veic->ListarDadosVeiculoPorIdUsuario($db->con, $array['idusuario']);
		$veic_usuario = $veic->ExecutaListaVeiculo();
		
		require_once('controller/clsImagem.php');
		$img = new Imagem();
		
		$img->usuario_idusuario = $array['idusuario'];
		
		$img->ListarDadosImagem($db->con);
		$imagem = $img->ExecutaListaImagem();
		
		if($imagem['imagem'] == '')
			$imagem_bd = "images/perfil-branco.jpg";
		else
			$imagem_bd = "imagem-perfil.php?id=".$array['idusuario'];
		
		if(isset($_POST['alterar'])) {
			require_once('controller/clsUsuario.php'); 
			$usuario = new Usuario(); 
			
			$usuario->id_usuario = $array['idusuario'];			
			$usuario->cpf = $_POST['cpf'];
			$usuario->sexo = $_POST['sexo'];
			$usuario->tipo = $_POST['tipo'];
			$data = implode("-",array_reverse(explode("/", $_POST['dt_nascimento'])));
			$usuario->dt_nascimento = $data;
			// $usuario->idade = $idade = intval(date("Y")) /* Ano atual */ - intval(substr($data, 0, 4)) /* Ano digitado */;
			$usuario->idade = 21;
			$usuario->cep = $_POST['cep'];
			$usuario->complemento = $_POST['complemento'];
			$usuario->logradouro = $_POST['logradouro'];
			$usuario->bairro = $_POST['bairro'];			
			$usuario->cidade = $_POST['cidade'];	
			$usuario->uf = $_POST['uf']; 						
			
			$arquivo = $_FILES["arquivo"]["tmp_name"]; 
			
			if(!empty($arquivo["name"])) {
				$img = new Imagem();				
				$img->nome = 'perfil.png';				
				
				$img->tamanho = getimagesize($_FILES['arquivo']['tmp_name']);
				$img->usuario_idusuario = $array['idusuario'];
				
				if($img->tamanho == false)
					echo "<script>alert('Não é uma imagem');</script>";
				else { 
					$img->imagem = addslashes(file_get_contents($_FILES['arquivo']['tmp_name'])); // prevenir sqlinjection (aspas)
					
					if($imagem['imagem'] == '') {					
						$img->InserirImagem(); 
					}
					else {
						$img->DeletarImagem($imagem['id']);
						$img->InserirImagem();
					}
				}
			}
			
			if($data == null) {
				if($usuario->AlterarUsuarioNovoSemDataNasc($db->con)) {
					echo "<script>alert('Dados alterados com sucesso!');</script>";								
				}
				else {
					echo "<script>alert('Erro ao alterar');</script>";
				}
			}
			else {
				if($usuario->AlterarUsuarioNovo()) {
					echo "<script>alert('Dados alterados com sucesso!');</script>";										
				}
				else {
					echo "<script>alert('Erro ao alterar');</script>";
				}
			}
			
			$usuario->ListarDadosUsuarioPorId($db->con, $array['idusuario']);
			
			$_SESSION['tudo'] = $usuario->ExecutaListaUsuario($db->con);
			
			$array = $_SESSION['tudo'];

			header('location: alterar-dados.php');
		}
		
		if(isset($_POST['cadastrar'])) {
			require_once('controller/clsVeiculo.php'); 
			$veiculo = new Veiculo(); 
			
			$veiculo->placa = $_POST['placa'];
			$veiculo->cor = $_POST['cor'];
			$veiculo->modelo = $_POST['modelo'];
			$veiculo->marca = $_POST['marca'];
			$veiculo->ano = $_POST['ano'];
			$veiculo->lugares = $_POST['lugares'];
			
			if($veic_usuario['placa'] == '') {
				$veiculo->categoria_idcategoria = $_POST['categoria'];
				$veiculo->usuario_idusuario = $array['idusuario'];
				
				$veiculo->InserirVeiculo();
			}
			else {
				$veiculo->AlterarVeiculo($_POST['placa']);
			}
			
			$veic = new Veiculo();
		
			$veic->ListarDadosVeiculoPorIdUsuario($array['idusuario']);
			$veic_usuario = $veic->ExecutaListaVeiculo();
			
			header('location: alterar-dados.php');
		}
	}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Vamos Juntos - Altere seus dados</title>
        <link rel="stylesheet" href="css/style.css"  />
    </head>
    <body>
        <div class="limited">

            <?php include 'menu.php'; ?>


            <div class="fotoPerfil" style="background: url('<?php echo $imagem_bd; ?>') center center no-repeat; background-size: 192%;"></div>
            <?php
                $num = rand(1,4);
            ?>
            <div class="dados" style="background: url('images/wall/0<?php echo $num; ?>.jpg') center center no-repeat; background-size: 100%;">
                <label><?php echo $array['nome']; ?></label>
                <div id="star"></div>
            </div>
            <div class="container">
                <form id="form_altera" name="form_altera" method="POST" enctype="multipart/form-data">
					<span class="title">Alterar dados</span>
                    <input type="text" name="nome" placeholder="Nome" value="<?php echo $array['nome']; ?>" disabled>
                    <?php
                        $edita = '';                        
						$edita = ($array['CPF'] != '') ? 'disabled' : '';
						
						echo '<input type="text" class="cpf" name="cpf" placeholder="CPF" value="'.$array['CPF'].'" '.$edita.'>';
                    ?>
					<span>Mande sua foto:</span>
                    <input type="file" name="arquivo">
                    <select name="sexo">
                        <option value="M">Masculino</option>
                        <option value="F">Feminino</option>
                    </select>
                    <select name="tipo">
						<option value="caroneiro">Caroneiro</option>
                        <option value="motorista">Motorista</option>                        
                    </select>
					<?php
                        $edita = '';                     
						$edita = ($array['dt_nascimento'] != '0000-00-00') ? 'disabled' : '';
						$valor = ($array['dt_nascimento'] != '0000-00-00') ? implode("/",array_reverse(explode("-", $array['dt_nascimento']))) : '';
						
						echo '<input type="text" class="dtnasc" name="dt_nascimento" placeholder="Data nascimento" value="'.$valor.'" '.$edita.'>';
                    ?>
					<input type="text" class="cep" name="cep" placeholder="CEP" value="<?php echo ($array['CEP'] == "") ? "" : $array['CEP']; ?>">
                    <input type="text" name="logradouro" placeholder="Logradouro" value="<?php echo ($array['logradouro'] == "") ? "" : $array['logradouro']; ?>">
                    <input type="text" name="complemento" placeholder="Complemento" value="<?php echo ($array['complemento'] == "") ? "" : $array['complemento']; ?>">                    
                    <input type="text" name="bairro" placeholder="Bairro" value="<?php echo ($array['bairro'] == "") ? "" : $array['bairro']; ?>">
					<input type="text" name="uf" placeholder="UF" maxlength="2" value="<?php echo ($array['UF'] == "") ? "" : $array['UF']; ?>">
					<input type="text" name="cidade" placeholder="Cidade" value="<?php echo ($array['cidade'] == "") ? "" : $array['cidade']; ?>">                    
                    <input type="submit" name="alterar" value="Alterar">
                </form>
				<form id="form_cad" name="form_cad" method="POST">
                    <?php
                        require_once('controller/clsCategoriaVeiculo.php');
                        $categoriaVeiculoObj = new CategoriaVeiculo();
                        $categorias = $categoriaVeiculoObj->ListarDadosCategoriaVeiculo($db->con);
                    ?>
                    <span class="title">Cadastro de Veículo</span>
                    <input type="text" name="placa" class="placa" placeholder="Placa" maxlength="8" value="<?php echo ($veic_usuario['placa'] == '') ? '' : $veic_usuario['placa']; ?>" >
                    <input type="text" name="cor" placeholder="Cor" value="<?php echo ($veic_usuario['cor'] == '') ? '' : $veic_usuario['cor']; ?>">
                    <input type="text" name="modelo" placeholder="Modelo" value="<?php echo ($veic_usuario['modelo'] == '') ? '' : $veic_usuario['modelo']; ?>">
                    <input type="text" name="marca" placeholder="Marca" value="<?php echo ($veic_usuario['marca'] == '') ? '' : $veic_usuario['marca']; ?>">
                    <input type="text" name="ano" class="ano" placeholder="Ano" maxlength="4" value="<?php echo ($veic_usuario['ano'] == '') ? '' : $veic_usuario['ano']; ?>">
                    <input type="text" name="lugares" placeholder="Lugares" value="<?php echo ($veic_usuario['lugares'] == '') ? '' : $veic_usuario['lugares']; ?>">
                    <select name="categoria">
                        <?php
                            while($cat = mysql_fetch_assoc($categorias)){
                                echo '<option value="'.$cat['idcategoria'].'">'.utf8_encode($cat['descricao']).'</option>';
                            }
                        ?>
                    </select>
                    <input type="submit" name="cadastrar" value="Cadastrar">
                </form>
            </div>
        </div>
    </body>
    <footer>
        <span>&copy; Copyright 2013 - On Solutions</span>
    </footer>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.raty.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script type="text/javascript" src="js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript">
        $('#star').raty({ 
            score: 3.5,
            readOnly: true
        });
        $('.liMenu').mouseenter(function(){
            $('.subMenu').stop().slideDown();
        });
        $('.liMenu').mouseleave(function(){
            $('.subMenu').stop().slideUp();
        });
		$(".placa").mask("aaa-9999");
        $(".cpf").mask("999.999.999-99");
        $(".dtnasc").mask("99/99/9999");
		$(".cep").mask("99.999-999");
		$('.liMenu1').mouseenter(function(){
            $('.subMenu1').stop().slideDown();
        });
        $('.liMenu1').mouseleave(function(){
            $('.subMenu1').stop().slideUp();
        });
        $('.liMenu2').mouseenter(function(){
            $('.subMenu2').stop().slideDown();
        });
        $('.liMenu2').mouseleave(function(){
            $('.subMenu2').stop().slideUp();
        });
    </script>
</html>
<?php ob_flush(); // no servidor ?>