<?php
	session_start();

	ob_start(); // no servidor	
	
	if($_SESSION['login'] == null or $_SESSION['password'] == null) { // seguranca primaria
		header('location: login.php');
	} 
	else {
		$array = $_SESSION['tudo']; // todas as info do usuario
		
		require_once('model/clsConexaoBanco.php');
		$db = new ConexaoBanco();
	
		require_once('controller/clsImagem.php');
		$img = new Imagem();
		
		$img->usuario_idusuario = $array['idusuario'];
		
		$img->ListarDadosImagem();
		$imagem = $img->ExecutaListaImagem();
		
		if($imagem['imagem'] == '')
			$imagem_bd = "images/perfil-branco.jpg";
		else
			$imagem_bd = "imagem-perfil.php?id=".$array['idusuario'];
	}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Vamos Juntos - Amigos</title>
        <link rel="stylesheet" href="css/style.css"  />
    </head>
    <body>
        <div class="limited">

            <? include 'menu.php'; ?>


            <div class="fotoPerfil" style="background: url('<?php echo $imagem_bd; ?>') center center no-repeat; background-size: 192%;"></div>
            <?php
                $num = rand(1,4);
            ?>
            <div class="dados" style="background: url('images/wall/0<?php echo $num; ?>.jpg') center center no-repeat; background-size: 100%;">
                <label><?php echo $array['nome']; ?></label>
                <div id="star"></div>
            </div>
			<!--a href="adicionar-amigos.php" class="botao"> Adicionar amigos </a><br-->
			<div class="container">
				<form class="buscaAmigo">
                    <input class="quem" type="text" placeholder="Quem você está procurando?" name="nome">
                </form>
                <?php 
					require_once('controller/clsUsuario.php');
					$usu_amigo = new Usuario();
		
					$usu_amigo->SelecionarAmigos($array['idusuario']);
					
					while($dados_amigo = $usu_amigo->ExecutaListaUsuario()) {
						$id_amigo[] = $dados_amigo['idusuario'];
					}
					
					require_once('controller/clsImagem.php');					
					$usu_amigo_imagem = new Imagem();
					
					for($c = 0; $c < count($id_amigo); $c++) {						
						$usu_amigo->ListarDadosAmigo($id_amigo[$c]);
						
						$dados = $usu_amigo->ExecutaListaUsuario();																					
						
						$usu_amigo_imagem->usuario_idusuario = $dados['idusuario'];
						$usu_amigo_imagem->ListarDadosImagem();
						$imagem_amigo = $usu_amigo_imagem->ExecutaListaImagem();
						
						$mostra_imagem = ($imagem_amigo['imagem'] == '') ? 'images/perfil-branco.jpg' : 'imagem-perfil.php?id='.$dados['idusuario'];
						
						echo "<div class='amigo'>
								<a title='".$dados['nome']."' href='perfil-amigo.php?id=".$dados['idusuario']."'>
									<div class='miniFotoAmigo' style=\"background: url('".$mostra_imagem."') center center no-repeat; background-size: 192%;\"></div>
									<span title='".$dados['nome']."'>".$dados['nome']."</span>
									<div class=\"more\"></div>
								</a>
							</div>";
					}
				?>                
            </div>
        </div>
    </body>
    <footer>
        <span>&copy; Copyright 2013 - On Solutions</span>
    </footer>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.raty.min.js"></script>
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