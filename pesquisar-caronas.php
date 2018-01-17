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
		
		$img->ListarDadosImagem($db->con);
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
        <title>Vamos Juntos - Pesquisar Carona</title>
        <link rel="stylesheet" href="css/style.css"  />
    </head>
    <body>
        <div class="limited">

            <?php include 'menu.php'; ?>

            <div class="fotoPerfil" style="background: url('<?php echo $imagem_bd; ?>') center center no-repeat; background-size: auto 160px;"></div>
            <?php
                $num = rand(1,4);
            ?>
            <div class="dados" style="background: url('images/wall/0<?php echo $num; ?>.jpg') center center no-repeat; background-size: 100%;">
                <label><?php echo $array['nome']; ?></label>
                <div id="star"></div>
            </div>
			<!--a href="adicionar-amigos.php" class="botao"> Adicionar amigos </a><br-->
			<div class="container">
				<form class="buscaCarona" method="POST" action="" >
                    <input class="de_onde" type="text" placeholder="De onde sai?" name="de_onde">
                    <input type="text" placeholder="Para onde vai?" name="para_onde">
                    <input type="submit" name="pesq" value="Pesquisar">
                </form> 
				<?php
					if(isset($_POST['pesq'])) {
						if($_POST['de_onde'] != '' && $_POST['para_onde'] != '') {
							require_once('controller/clsUsuario.php');
							$usu_criador = new Usuario(); 
							
							require_once('controller/clsCarona.php');
							$carona = new Carona(); 

							$carona->PesquisarCarona($db->con, $_POST['de_onde'], $_POST['para_onde']);
							$cod_caronas = array();
							
							while($dados = $carona->ExecutaListaCarona()) {								
								$cod_caronas[] = $dados['cod']; 
							} 													
							
							if(count($cod_caronas) != 0) {							
								for($c = 0; $c < count($cod_caronas); $c++) {									
									$carona = new Carona();
									
									$carona->ListarCaronaPorCod($db->con, $cod_caronas[$c]);
									$dados_caronas = $carona->ExecutaDadosListaCarona($db->con);
									
									$desabilita = $carona->DesabilitaParticiparCarona($db->con, $cod_caronas[$c], $array['idusuario']);
								
									if($desabilita) {
										$desabilitado = "disabled";
									} else {
										$desabilita = $carona->DesabilitaCriadorCarona($db->con, $cod_caronas[$c], $array['idusuario']);
									
										if($desabilita) {
											$desabilitado = "disabled";									
										} else { $desabilitado = ""; } 
									} 
								
									$img = new Imagem(); 
								
									$img->usuario_idusuario = $dados_caronas['id_de']; 
									
									$img->ListarDadosImagem($db->con);
									$imagem_criador_carona = $img->ExecutaListaImagem();
									
									if($imagem_criador_carona['imagem'] == '')
										$imagem_criador_carona = "images/perfil-branco.jpg";
									else
										$imagem_criador_carona = "imagem-perfil.php?id=".$dados_caronas['id_de']; 
									
									$usu_criador->ListarNomeUsuarioPorId($db->con, $dados_caronas['id_de']);
									$nome_criador = $usu_criador->ExecutaListaUsuario($db->con);
									
									// ".$dados_caronas['cod']."
									
									$semaforo = "<div class=\"icones\">												
													<form id='form-participa-carona' method='POST' action='participar-carona.php?id_usu=".$dados_caronas['id_de']."' >
														<input type='hidden' name='cod_carona' value='".$dados_caronas['cod']."'>
														<input type='submit' class=\"sim\" title=\"Sim\" name='participar' value='' ".$desabilitado."> 
													</form>
												</div>";

									echo "<div class='feedAmigo'>
											<div class='miniFotoAmigo' style=\"background: url('$imagem_criador_carona') center center no-repeat; background-size: auto 60px;\"></div><a title='".$nome_criador['nome']."' href='perfil-amigo.php?id=".$dados_caronas['id_de']."'>".$nome_criador['nome']."</a>
												<span>
													<table class=\"dadosCarona\" width=\"100%\">
														<tr>
															<td width=\"130px\" class=\"span\">De onde sai:</td>
															<td>".$dados_caronas['onde_sai']."</td>
															<td width=\"110px\" class=\"span\">Para onde vai:</td>
															<td>".$dados_caronas['onde_vai']."</td>
														</tr>
														<tr>
															<td class=\"span\">Vagas no carro:</td>
															<td>".$dados_caronas['qtd_pessoas']."</td>
															<td class=\"span\">Hora saída:</td>
															<td>".$dados_caronas['quando']."</td>
														</tr>
														<tr>													
															<td class=\"span\">Preço:</td>
															<td colspan='3'>".$dados_caronas['preco']."</td>
														</tr>
													</table>
												</span>
												<a class=\"vejamais\" title=\"Veja mais\" href=\"detalhes-carona.php?cod=".$dados_caronas['cod']."\">Veja mais</a>
												$semaforo
										</div>";
									
								}
							}																										
							else {
								echo "<span class='nadaEnc'>Nada encontrado...</span>";
							}
						}
						else {
							echo "<script>alert('Campo vazio! Digite nos dois campos');</script>";
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