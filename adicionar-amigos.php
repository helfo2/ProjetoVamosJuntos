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
                <form class="buscaAmigo">
                    <input class="quem" type="text" placeholder="Quem você está procurando?" name="nome">
                </form>
                <div class="esconde">
                    <?php for($i = 0; $i < 10; $i++) { ?>
                    <div class="amigo">
                        <a title="Bruno Henrique" href="perfil-amigo.php">
                            <div class="miniFotoAmigo" style="background: url('images/perfil-branco.jpg') center center no-repeat; background-size: 192%;"></div>
                            <span title="Bruno Henrique">Bruno Henrique</span>
                            <div class="more"></div>
                        </a>
                    </div><?php }?>
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
        $('.quem').keypress(function(){
            $('.esconde').slideDown();
        });
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