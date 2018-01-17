<?php
	session_start();

	ob_start(); // no servidor	
	$id_usuario_solicitou = null;
	$cod_amigos = null;
	$codigos  = null;
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
		
		$img->ListarDadosImagem($db->con);
		$imagem = $img->ExecutaListaImagem($db->con);
		
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
        <title>Vamos Juntos - <?php echo $array['nome']; ?></title>
        <link rel="stylesheet" href="css/style.css"  />
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon" />
    </head>
    <body>
        <div class="limited">


            <?php include 'menu.php'; ?>


            <div class="fotoPerfil" style="background: url('<?php echo $imagem_bd; ?>') center center no-repeat; background-size: auto 160px"></div>
            <?php
                $num = rand(1,4);
            ?>
            <div>
            <div class="dados" style="background: url('images/wall/0<?php echo $num; ?>.jpg') center center no-repeat; background-size: 100%;">
                <label><?php echo $array['nome']; ?></label>
                <div id="star"></div>
                <form id="publica-status" method="POST" action="publica-status.php?id=<?php echo $array['idusuario']; ?>">
                    <textarea name="status" placeholder="Conte ao seus amigos o que aconteceu..."></textarea>
                    <input type="submit" name="publicar" value="Publicar">
                </form>
            </div></div>
            <div class="container"> 
				<?php 					
					require_once('controller/clsCarona.php');
					$carona = new Carona();
					
					require_once('controller/clsUsuario.php');
					$usu_amizade = new Usuario();
					
					require_once('controller/clsPostagem.php');
					$post = new Postagem();	
					
					$carona->ListarSolicitacaoCarona($db->con, $array['idusuario']);
					
					while($dados_carona = $carona->ExecutaListaCarona($db->con)) {
						$id_usuario_solicitou[] = $dados_carona['id_participante'];
						$id_caronas_solicitadas[] = $dados_carona['cod_carona'];
					} 
					
					$img = new Imagem();
					
					if(count($id_usuario_solicitou) != 0) { 
						if(count($id_caronas_solicitadas) != 0) { 
							for($c = 0; $c < count($id_usuario_solicitou); $c++) { 								
								$img->usuario_idusuario = $id_usuario_solicitou[$c];
					
								$img->ListarDadosImagem();
								$imagem_amigo = $img->ExecutaListaImagem();
								
								if($imagem_amigo['imagem'] == '')
									$imagem_amigo = "images/perfil-branco.jpg";
								else
									$imagem_amigo = "imagem-perfil.php?id=".$id_usuario_solicitou[$c];																
								
								$carona->SelecionaDestinoCarona($id_caronas_solicitadas[$c]);
								$onde_vai_carona = $carona->ExecutaListaCarona();
								
								$usu_amizade->ListarNomeAmigo($id_usuario_solicitou[$c]);
								$nome_solicitante = $usu_amizade->ExecutaListaUsuario();								
								
								echo "<div class='feedAmigo'>
										<div class='miniFotoAmigo' style='background: url(".$imagem_amigo.") center center no-repeat; background-size: auto 60px'></div>
										<a title='".$nome_solicitante['nome']."' href=\"perfil-amigo.php?id=".$id_usuario_solicitou[$c]."\">".$nome_solicitante['nome']."</a>
										<span>".$nome_solicitante['nome']." quer ser participar de sua carona para ".$onde_vai_carona['onde_vai']."</span>
										<form id='confirma-carona' action='confirmar-carona.php?cod_carona=".$onde_vai_carona['cod']."' method='POST' >
											<button name='carona' value='$id_usuario_solicitou[$c]sim' > Permitir </button>
											<button name='carona' value='$id_usuario_solicitou[$c]nao' > Recusar </button>
										</form>
									</div>";
							}
						}
					} 
					
					$usu_amizade->SelecionarAmizades($db->con, $array['idusuario']);
					
					while($dados_amizade = $usu_amizade->ExecutaListaUsuario($db->con)) {
						$codigos[] = $dados_amizade['id_de'];
					}
					
					$img = new Imagem();
					
					if(count($codigos) != 0) { 
						for($c = 0; $c < count($codigos); $c++) { 
							$img->usuario_idusuario = $codigos[$c];
					
							$img->ListarDadosImagem();
							$imagem_amigo = $img->ExecutaListaImagem();
							
							if($imagem_amigo['imagem'] == '')
								$imagem_amigo = "images/perfil-branco.jpg";
							else
								$imagem_amigo = "imagem-perfil.php?id=".$codigos[$c]; 
			                
							$usu_amizade->ListarNomeUsuarioPorId($codigos[$c]);
							
							$dados = $usu_amizade->ExecutaListaUsuario(); 	
							
							echo "<div class='feedAmigo'>
										<div class='miniFotoAmigo' style='background: url(".$imagem_amigo.") center center no-repeat; background-size: 192%'></div>
										<a title='".$dados['nome']."' href=\"perfil-amigo.php?id=".$codigos[$c]."\">".$dados['nome']."</a>
										<span>".$dados['nome']." quer ser seu amigo</span>
										<form id='amizade' action='confirma-amizade.php' method='POST' >
											<button name='amizade' value='$codigos[$c]aceitar' > Aceitar </button>
											<button name='amizade' value='$codigos[$c]recusar' > Recusar </button>
										</form>
									</div>";
						}
					}									
					
					$usu_amizade = new Usuario();
					$usu_amizade->ListaAmigosSolicitados($db->con, $array['idusuario']);
					
					while($amigos = $usu_amizade->ExecutaListaUsuario($db->con)) {
						if(count($amigos) != 0)
							$cod_amigos[] = $amigos['id_para'];
					}
					
					$usu_amizade->ListaAmigosSolicitaram($db->con, $array['idusuario']);
					
					while($amigos = $usu_amizade->ExecutaListaUsuario($db->con)) {
						if(count($amigos) != 0)
							$cod_amigos[] = $amigos['id_de'];
					}
					
					$post = new Postagem();	
					$img = new Imagem(); 		
					
					/*
					<div class=\"nao\" title=\"Não\"></div>
									<div class=\"talvez\" title=\"Talvez\"></div>
					*/
					
					$semaforo = "<div class=\"icones\">									
									<div class=\"sim\" title=\"Sim\"></div>
								</div>";
					
					if(count($cod_amigos) != 0) {
						for($c = 0; $c < count($cod_amigos); $c++) {
							$img->usuario_idusuario = $cod_amigos[$c];
					
							$img->ListarDadosImagem($db->con);
							$imagem_amigo = $img->ExecutaListaImagem($db->con);
							
							if($imagem_amigo['imagem'] == '')
								$imagem_amigo = "images/perfil-branco.jpg";
							else
								$imagem_amigo = "imagem-perfil.php?id=".$cod_amigos[$c]; 
							
							$usu_amizade->ListarNomeAmigo($cod_amigos[$c]);
							$nome_solicitante = $usu_amizade->ExecutaListaUsuario();
							
							$post->ListarDadosPostagemPerfil($cod_amigos[$c]);
							$post_amigo = $post->ExecutaListaPostagemPerfil(); 													
							
							$dia = array("Monday" => "Segunda-Feira",
									"Tuesday" => "Terça-Feira",
									"Wednesday" => "Quarta-Feira",
									"Thursday" => "Quinta-Feira",
									"Friday" => "Sexta-Feira",
									"Saturday" => "Sábado",
									"Sunday" => "Domingo");

							if($post_amigo['post'] != '') { 
								if($post_amigo['Tipo'] == "c") {
									$diaEng = strftime('%A', strtotime($postagens['data_hora']));
									$data = date('d/m/Y', strtotime($postagens['data_hora']));
									$hora = date('h:i a', strtotime($postagens['data_hora']));
									echo "<div class=\"feedAmigo\">	
												<span class='hora'>".$dia[$diaEng]." - ".$data." as ".$hora."</span>
												<div class=\"miniFotoAmigo\" style=\"background: url('".$imagem_amigo."') center center no-repeat; background-size: auto 60px\"></div>
												<a title=\"".$nome_solicitante['nome']."\" href=\"perfil-amigo.php?id=".$cod_amigos[$c]."\">".$nome_solicitante['nome']."</a>
												<span>".ucfirst($post_amigo['post'])."</span>											
												$semaforo
											</div>";
								}
								else {
									$diaEng = strftime('%A', strtotime($postagens['data_hora']));
									$data = date('d/m/Y', strtotime($postagens['data_hora']));
									$hora = date('h:i a', strtotime($postagens['data_hora']));
									echo "<div class=\"feedAmigo\">
												<span class='hora'>".$dia[$diaEng]." - ".$data." as ".$hora."</span>
												<div class=\"miniFotoAmigo\" style=\"background: url('".$imagem_amigo."') center center no-repeat; background-size: auto 60px\"></div>
												<a title=\"".$nome_solicitante['nome']."\" href=\"perfil-amigo.php?id=".$cod_amigos[$c]."\">".$nome_solicitante['nome']."</a>
												<span>".ucfirst($post_amigo['post'])."</span>																						
											</div>";
								}
							}
						}
					}
					
					$post->ListarDadosPostagemPerfil($db->con, $array['idusuario']);
					$count_post = 0; 
					
					$estilo = "background: url('".$imagem_bd."') center center no-repeat; background-size: auto 60px";														
					
					$dia = array("Monday" => "Segunda-Feira",
									"Tuesday" => "Terça-Feira",
									"Wednesday" => "Quarta-Feira",
									"Thursday" => "Quinta-Feira",
									"Friday" => "Sexta-Feira",
									"Saturday" => "Sábado",
									"Sunday" => "Domingo");

					while($postagens = $post->ExecutaListaPostagemPerfil()) { 
						// echo "Tem post</br>";
						// if($postagens['Tipo'] == "c") {
							$diaEng = strftime('%A', strtotime($postagens['data_hora']));
							$data = date('d/m/Y', strtotime($postagens['data_hora']));
							$hora = date('H:i a', strtotime($postagens['data_hora']));
							echo "<div class=\"feedAmigo\">
										<span class='hora'>".$dia[$diaEng]." - ".$data." as ".$hora."</span>
										<div class=\"miniFotoAmigo\" style=\"$estilo\"></div>
										<a title=\"".$array['nome']."\" href=\"perfil.php\">".$array['nome']."</a>
										<span>".ucfirst($postagens['post'])."</span>
										$semaforo
									</div>";
						// }
						// else if($postagens['Tipo'] == "s") {
						// 	$diaEng = strftime('%A', strtotime($postagens['data_hora']));
						// 	$data = date('d/m/Y', strtotime($postagens['data_hora']));
						// 	$hora = date('H:i a', strtotime($postagens['data_hora']));
						// 	echo "<div class=\"feedAmigo\">
						// 				<span class='hora'>".$dia[$diaEng]." - ".$data." as ".$hora."</span>
						// 				<div class=\"miniFotoAmigo\" style=\"$estilo\"></div>
						// 				<a title=\"".$array['nome']."\" href=\"perfil.php\">".$array['nome']."</a>
						// 				<span>".ucfirst($postagens['post'])."</span>											
						// 			</div>"; 				
						// }
						
						// $count_post++;
						
						// if($count_post == 10) {
						// 	break;
						// }
					}
					
				?>
                </div>
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

<?php ob_flush(); // no servidor ?>