<?php
	session_start();

	ob_start(); // no servidor 
	$_GET['aguarde'] = null;
	$_GET['ok'] = null;
	$carona_criada_usu_atual = null;
	$carona_participante = null;
	$carona_criada_usu_atual = null;
	$carona_participante = null;
	if($_SESSION['login'] == null or $_SESSION['password'] == null) { // seguranca primaria
		header('location: login.php');
	} 
	else {
		$array = $_SESSION['tudo']; // todas as info do usuario
		
		if($array['tipo'] == 'passageiro' OR $array['tipo'] == 'Passageiro' OR $array['tipo'] == 'caroneiro') 
			$cadastra_carona = "style='display: none;'";  
		else 
			$cadastra_carona = '';
		
		if($_GET['ok'] == 'false') {
			echo "<script>alert('Você não pode cadastrar uma carona como caroneiro! Altere seus status para motorista e cadastre seu veículo!')</script>";
		}
		
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
        <title>Vamos Juntos - Caronas</title>
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
                <form id="publica-status" method="POST" action="publica-status.php?id=<?php echo $array['idusuario']; ?>">
                    <textarea name="status" placeholder="Conte ao seus amigos o que aconteceu..."></textarea>
                    <input type="submit" name="publicar" value="Publicar">
                </form>
            </div>
            <div class="container">

				<a href="cadastrar-carona.php" class="botao" <?php echo $cadastra_carona; ?> > Cadastrar nova carona </a>
				<!-- LINK NAO FUNCIONA POR CONTA DO CSS, FAZER UM BOTAO Q FUNCIONE -->

                <?php 
				
					if($_GET['aguarde'] == 'true') {
						echo "Sua solicitação foi enviada! Assim que for aceita, a carona em questão aparecerá aqui";
					}
					
					require_once('controller/clsCarona.php');
					$carona = new Carona();
					
					require_once('controller/clsUsuario.php');
					$usu_criador_carona = new Usuario();
					
					// <div class=\"sim\" title=\"Sim\"></div>
					
					$carona->ListarCaronaUsuarioParticipante($db->con, $array['idusuario']);
					
					while($dados_carona = $carona->ExecutaListaCarona()) {
						if(count($dados_carona) != 0) {
							$carona_participante[] = $dados_carona['cod_carona']; 							
						}
					} 
					
					$carona->ListarCaronaUsuario($db->con, $array['idusuario']);
					
					while($dados_carona = $carona->ExecutaListaCarona()) {
						if(count($dados_carona) != 0) {
							$carona_criada_usu_atual[] = $dados_carona['cod']; 							
						}
					}
					
					$caronas_for = count($carona_criada_usu_atual) + count($carona_participante);					
					$caronas_total = array();
					
					if(count($carona_criada_usu_atual) == 0) {
						for($c = 0; $c < count($carona_participante); $c++) {
							$caronas_total[] = $carona_participante[$c];
						}
					}
					else if(count($carona_participante) == 0) {
						for($c = 0; $c < count($carona_criada_usu_atual); $c++) {
							$caronas_total[] = $carona_criada_usu_atual[$c];
						}
					}
					else {
						$caronas_total = array_merge($carona_criada_usu_atual, $carona_participante);
					}
					
					$carona = new Carona();
					if(count($caronas_total) != 0) {
						for($c = 0; $c < count($caronas_total); $c++) {
							$carona->ListarUsuarioCriador($db->con, $caronas_total[$c]);
							$usu_criador = $carona->ExecutaListaCarona();
							$carona_criador[] = $usu_criador['id_de'];
						}
					}					
					
					if($caronas_for > 0) {
						for($c = 0; $c < $caronas_for; $c++) { 
							$img = new Imagem(); 
							
							$img->usuario_idusuario = $carona_criador[$c]; 
							
							$img->ListarDadosImagem($db->con);
							$imagem_criador_carona = $img->ExecutaListaImagem();
							
							if($imagem_criador_carona['imagem'] == '')
								$imagem_criador_carona = "images/perfil-branco.jpg";
							else
								$imagem_criador_carona = "imagem-perfil.php?id=".$carona_criador[$c];
							
							$usu_criador_carona->ListarNomeUsuarioPorId($db->con, $carona_criador[$c]);
							$nome_criador = $usu_criador_carona->ExecutaListaUsuario($db->con);
							
							$carona->ListarCaronaPorCod($db->con, $caronas_total[$c]);
							
							$dados = $carona->ExecutaDadosListaCarona($db->con); 
							
							/*
							<td class=\"span\">Dias:</td>
													<td>Seg, Qua, Sex</td>
							*/
							
							$semaforo = "<div class=\"icones\">										
											<div class=\"sim\" title=\"Sim\"></div>
										</div>"; 
							
							echo "<div class='feedAmigo'>
									<div class='miniFotoAmigo' style=\"background: url('$imagem_criador_carona') center center no-repeat; background-size: auto 60px;\"></div><a title='".$nome_criador['nome']."' href='perfil-amigo.php?id=".$carona_criador[$c]."'>".$nome_criador['nome']."</a>
										<span>
											<table class=\"dadosCarona\" width=\"100%\">
												<tr>
													<td width=\"130px\" class=\"span\">De onde sai:</td>
													<td>".$dados['onde_sai']."</td>
													<td width=\"110px\" class=\"span\">Para onde vai:</td>
													<td>".$dados['onde_vai']."</td>
												</tr>
												<tr>
													<td class=\"span\">Vagas no carro:</td>
													<td>".$dados['qtd_pessoas']."</td>
													<td class=\"span\">Hora saída:</td>
													<td>".$dados['quando']."</td>
												</tr>
												<tr>													
													<td class=\"span\">Preço:</td>
													<td colspan='3'>".$dados['preco']."</td>
												</tr>
											</table>
										</span>
										<a class=\"vejamais\" title=\"Veja mais\" href=\"detalhes-carona.php?cod=".$dados['cod']."\">Veja mais</a>
										$semaforo
								</div>"; 
						}
					}
					else {
						echo "Nenhuma carona... Pesquise por novas caronas!";
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
<?php ob_flush(); // no servidor ?>