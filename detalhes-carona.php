<?php
	session_start();

	ob_start(); // no servidor 
	
	if($_SESSION['login'] == null or $_SESSION['password'] == null) { // seguranca primaria
		header('location: login.php');
	} else {
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
		
		if(isset($_GET)) {			
			require_once('controller/clsCarona.php');
			$carona = new Carona();
		
			$cod_carona = $_GET['cod'];
			
			$carona->ListarCaronaPorCod($db->con, $cod_carona);
			$dados_carona = $carona->ExecutaDadosListaCarona($db->con);					
		}
		
		$img = new Imagem();
		
		$img->usuario_idusuario = $dados_carona['id_de'];
		
		$img->ListarDadosImagem($db->con);
		$imagem = $img->ExecutaListaImagem();
		
		if($imagem['imagem'] == '')
			$imagem_criador_carona = "images/perfil-branco.jpg";
		else
			$imagem_criador_carona = "imagem-perfil.php?id=".$dados_carona['id_de'];
		
		require_once('controller/clsUsuario.php');
		$usuario = new Usuario();
		
		$usuario->ListarNomeUsuarioPorId($db->con, $dados_carona['id_de']);
		$nome_criador = $usuario->ExecutaListaUsuario($db->con);
	}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Vamos Juntos - Caronas</title>
        <link rel="stylesheet" href="css/style.css"  />
        <link href="css/jquery.mCustomScrollbar.css" rel="stylesheet" />
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
                <div class="feedAmigo">
                    <div class="miniFotoAmigo" style="background: url('<?php echo $imagem_criador_carona; ?>') center center no-repeat; background-size: auto 60px;"></div><a title="<?php echo $array['nome']; ?>" href=""><?php echo $nome_criador['nome']; ?></a>
                    <span>
                        <table class="dadosCarona" width="100%">
                            <tr>
                                <td width="130px" class="span">De onde sai:</td>
                                <td><?php echo $dados_carona['onde_sai']; ?></td>
                                <td width="110px" class="span">Para onde vai:</td>
                                <td><?php echo $dados_carona['onde_vai']; ?></td>
                            </tr>
                            <tr>
                                <td class="span">Vagas no carro:</td>
                                <td><?php echo $dados_carona['qtd_pessoas']; ?></td>
                                <td class="span">Hora saída:</td>
                                <td><?php echo $dados_carona['quando']; ?></td>
                            </tr>
                            <tr>                                
                                <td class="span">Preço:</td>
                                <td colspan="3"><?php echo $dados_carona['preco']; ?></td>
                            </tr>
                        </table>
                    </span>
                    <a class="vejamais" title="Voltar" href="caronas.php">Voltar</a>
                    <div class="icones">                        
                        <div class="sim" title="Sim"></div>
                    </div>
                </div>
                <div id="agrupaComentarios">
					<?php						
						require_once('controller/clsPostagem.php');
						$post = new Postagem();
						
						$carona = new Carona();
						
						$carona->ListarComentarioCarona($db->con, $cod_carona);
						
						while($codigos_posts = $carona->ExecutaListaCarona()) {
							$codigos[] = $codigos_posts['cod_post'];
						}
						
						if(count($codigos) != 0) {
							for($c = 0; $c < count($codigos); $c++) {
								$post->ListarDadosPostagemCod($db->con, $codigos[$c]);
								
								$dados = $post->ExecutaListaPostagemPerfil();

                                $data = date('d/m/Y', strtotime($dados['data_hora']));
                                $hora = date('h:i a', strtotime($dados['data_hora']));

                                $nomeUsuPos = $usuario->ListarNomeUsuarioPorId($db->con, $dados['usuario_idusuario']);
                                $nomeUsuPos = $usuario->ExecutaListaUsuario($nomeUsuPos);

								$alinha = '';
								if($dados['usuario_idusuario'] == $array['idusuario']) {
									$post_usu_atual[$c] = $dados['post'];
									$alinha = 'cd';
									$balao = 'eu';
                                    $quem = '<a title="Eu" href="perfil.php">Eu</a>';
								}
								else { 
									$alinha = 'ce';
									$balao = 'outros';
                                    $quem = '<a title="'.$nomeUsuPos['nome'].'" href="perfil-amigo.php?id='.$dados['usuario_idusuario'].'">'.$nomeUsuPos['nome'].'</a>';
								}
								
								if($alinha == 'cd') {
									echo "<div class='comentarios'>                        
											<div class='comentario ".$alinha."'>
												<span>".ucfirst($post_usu_atual[$c])."</span>
                                                <span class='hora' style='right: 20px; top: 4px;'>".$quem." - ".$data." as ".$hora."</span>
											</div>                        
											<div class='".$balao."'></div> 
										  </div>";
								}
								else {
									echo "<div class='comentarios'>                        
												<div class='comentario ".$alinha."'>
													<span>".ucfirst($dados['post'])."</span>
                                                    <span class='hora' style='right: 20px; top: 4px'>".$quem." - ".$data." as ".$hora."</span>
												</div>                        
												<div class='".$balao."'></div> 
											  </div>";
								}                                           
							}
						}
						else {
							echo "Sem comentários!";
						} 
					?>                                   
                </div>
                <div class="meuComentario">
                    <form method="POST" action="publica-status.php?id=<?php echo $array['idusuario']; ?>&cod_carona=<?php echo $cod_carona; ?>" >
                        <textarea maxlength="150" name="comentario" placeholder="Mande seu comentário..."></textarea>
                        <input type="submit" value="Comentar" name="comentar">
                    </form>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <span>&copy; Copyright 2013 - On Solutions</span>
    </footer>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.raty.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript">
        $('#star').raty({ 
            score: 3.5,
            readOnly: true
        });
        (function($){
            $(window).load(function(){
                $('.liMenu').mouseenter(function(){
                    $('.subMenu').stop().slideDown();
                });
                $('.liMenu').mouseleave(function(){
                    $('.subMenu').stop().slideUp();
                });
                $("#agrupaComentarios").mCustomScrollbar({
                    scrollButtons:{
                        enable:true
                    }
                });
                $("#sortable").sortable({
                    scroll:false,
                    axis:"y",
                    opacity:0.5,
                    change:function(event,ui){
                        var p=ui.position.top,
                            h=ui.helper.outerHeight(true),
                            s=ui.placeholder.position().top,
                            elem=$("#agrupaComentarios .mCustomScrollBox")[0],
                            elemHeight=$("#agrupaComentarios .mCustomScrollBox").height();
                            pos=findPos(elem),
                            mouseCoordsY=event.pageY-pos[0];
                        if(mouseCoordsY<h || mouseCoordsY>elemHeight-h){
                            $("#agrupaComentarios").mCustomScrollbar("scrollTo",p-(elemHeight/2));
                        }
                    }
                });
                function findPos(obj){
                    var curleft=curtop=0;
                    if (obj.offsetParent){
                        curleft=obj.offsetLeft
                        curtop=obj.offsetTop
                        while(obj=obj.offsetParent){
                            curleft+=obj.offsetLeft
                            curtop+=obj.offsetTop
                        }
                    }
                    return [curtop,curleft];
                }
            });
        })(jQuery);
    </script>
</html>
<?php ob_flush(); // no servidor ?>