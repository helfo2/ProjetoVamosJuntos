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
		
		if(isset($_GET)) {					
			$id_amigo = $_GET['id'];
			
			require_once('controller/clsUsuario.php');
			$usuario_amigo = new Usuario();
			
			$usuario_amigo->ListarDadosUsuarioPorId($db->con, $id_amigo);
			$dados_amigo = $usuario_amigo->ExecutaListaUsuario($b->con);
			
			require_once('controller/clsImagem.php');
			$img = new Imagem();
			
			$img->usuario_idusuario = $id_amigo;
			
			$img->ListarDadosImagem($db->con);
			$imagem_amigo = $img->ExecutaListaImagem($db->con);
			
			if($imagem_amigo['imagem'] == '')
				$imagem_bd = "images/perfil-branco.jpg";
			else
				$imagem_bd = "imagem-perfil.php?id=".$id_amigo;
			
			$usu_amigo = new Usuario();

			if(isset($_POST['adicionar'])) { 
				$usu_amigo->InserirAmizade($array['idusuario'], $id_amigo);	
				echo "<script>alert('Sua solicitação foi enviada!');</script>"; 
				$desabilitado = "disabled";
				header('location: perfil-amigo.php?id='.$id_amigo); 
			}

			$desabilita = $usu_amigo->DesabilitaInserirAmizade($db->con, $array['idusuario'], $id_amigo);

			if($desabilita) {
				$desabilitado = "";
				$nome_botao = "+1 amigo";
			} else { $desabilitado = "disabled"; $nome_botao = "+1 enviado"; }
			
			require_once('controller/clsCarona.php');
			$caronas = new Carona();
			
			$qnt_caronas = $caronas->QuantidadeCaronas($db->con, $id_amigo);
		}
	}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Vamos Juntos - Perfil de <?php echo $dados_amigo['nome']; ?></title>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon" />
    </head>
    <body>
        <div class="limited">

            <?php  
            	include 'menu.php';
			?>
		
            <div class="fotoPerfil" style="background: url('<?php echo $imagem_bd; ?>') center center no-repeat; background-size: auto 160px;">
        		<form id="adicionaAmigo" method="POST" action="" >
        			<input type="submit" name="adicionar" value="<?php echo $nome_botao; ?>" <?php echo $desabilitado; ?> >
        		</form>
            </div>
            <?php
                $num = rand(1,4);
            ?>
            <div>
            <div class="dados" style="background: url('images/wall/0<?php echo $num; ?>.jpg') center center no-repeat; background-size: 100%;">
                <label><?php echo $dados_amigo['nome']; ?></label>
                <div id="star"></div>
                <div id="dadosAmigo">
                    <span>Idade: <?php echo $dados_amigo['idade']; ?></span>
                    <span>Tipo: <?php echo $dados_amigo['tipo']; ?></span>
                    <span>Bairro: <?php echo ($dados_amigo['bairro'] == '') ? "..." : $dados_amigo['bairro']; ?></span>
                    <?php 											
						echo '<span class="semBorda">Quantas caronas participei: '.$qnt_caronas.'</span>';
                    ?>
                </div>
            </div></div>
            <div class="container">
                <?php
					require_once('controller/clsPostagem.php');
					$post = new Postagem();	
					
					$post->ListarDadosPostagemPerfil($db->con, $id_amigo);
					$count_post = 0;
					
					$estilo = "background: url('".$imagem_bd."') center center no-repeat; background-size: auto 60px";
					
					/*
					<div class=\"nao\" title=\"Não\"></div>
									<div class=\"talvez\" title=\"Talvez\"></div>
					*/
					
					$semaforo = "<div class=\"icones\">									
									<div class=\"sim\" title=\"Sim\"></div>
								</div>";	

					$dia = array("Monday" => "Segunda-Feira",
									"Tuesday" => "Terça-Feira",
									"Wednesday" => "Quarta-Feira",
									"Thursday" => "Quinta-Feira",
									"Friday" => "Sexta-Feira",
									"Saturday" => "Sábado",
									"Sunday" => "Domingo");							
					
					while($postagens = $post->ExecutaListaPostagemPerfil()) {						
						if($postagens['Tipo'] == "c") {
							$diaEng = strftime('%A', strtotime($postagens['data_hora']));
							$data = date('d/m/Y', strtotime($postagens['data_hora']));
							$hora = date('h:i a', strtotime($postagens['data_hora']));
							echo "<div class=\"feedAmigo\">
										<span class='hora'>".$dia[$diaEng]." - ".$data." as ".$hora."</span>
										<div class=\"miniFotoAmigo\" style=\"$estilo\"></div>
										<a title=\"".$dados_amigo['nome']."\" href=\"perfil-amigo.php?id=".$id_amigo."\">".$dados_amigo['nome']."</a>
										<span>".ucfirst($postagens['post'])."</span>
										$semaforo
									</div>";
						}
						else if($postagens['Tipo'] == "s") {
							$diaEng = strftime('%A', strtotime($postagens['data_hora']));
							$data = date('d/m/Y', strtotime($postagens['data_hora']));
							$hora = date('h:i a', strtotime($postagens['data_hora']));
							echo "<div class=\"feedAmigo\">
										<span class='hora'>".$dia[$diaEng]." - ".$data." as ".$hora."</span>
										<div class=\"miniFotoAmigo\" style=\"$estilo\"></div>
										<a title=\"".$dados_amigo['nome']."\" href=\"perfil-amigo.php?id=".$id_amigo."\">".$dados_amigo['nome']."</a>
										<span>".ucfirst($postagens['post'])."</span>
									</div>";							
						}
						
						$count_post++;
						
						if($count_post == 10) {
							break;
						}
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
            score: 5
        });
        $('.liMenu').mouseenter(function(){
            $('.subMenu').stop().slideDown();
        });
        $('.liMenu').mouseleave(function(){
            $('.subMenu').stop().slideUp();
        });
        $('.fotoPerfil').mouseenter(function(){
			$('#adicionaAmigo').stop().slideDown();
		});
		$('.fotoPerfil').mouseleave(function(){
			$('#adicionaAmigo').stop().slideUp();
		});
    </script>
</html>

<?php ob_flush(); // no servidor ?>