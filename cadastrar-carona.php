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
		
		require_once('controller/clsCarona.php');
		$carona = new Carona();
		
		$dados = array();
		
		if(isset($_POST['cadastrar'])) {
			$carona->id_de = $array['idusuario'];
			$carona->onde_sai = $_POST['de_onde'];
			$carona->onde_vai = $_POST['onde_vai'];
			$carona->carro = $_POST['modelo'];
			$carona->quando = $_POST['quando'];
			$carona->quanto = $_POST['quanto'];
			$carona->qtd_pessoas = $_POST['qtd_pessoas'];
			$carona->descricao = $_POST['desc'];

			$carona->InserirCarona();
			
			header('location: caronas.php');
		}
	}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Vamos Juntos - Cadastrar Carona</title>
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
                <form id="form_cad_carona" name="form_cad_carona" method="POST" action="cadastrar-carona.php">
                    <span class="title">Cadastro de Carona</span>
                    <input type="text" name="de_onde" placeholder="De onde sai">
                    <input type="text" name="onde_vai" placeholder="Para onde vai">
                    <input type="text" name="modelo" placeholder="Modelo do carro">
                    <input type="text" class="quando" name="quando" placeholder="Quando">
                    <input type="text" class="quanto" name="quanto" placeholder="Quanto">
                    <input type="text" name="qtd_pessoas" placeholder="Quantas pessoas">
                    <textarea name="desc" placeholder="Conte mais..."></textarea>
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
    <script type="text/javascript" src="js/jquery.price_format.1.8.min.js"></script>
    <script type="text/javascript">
        $('#star').raty({ 
            score: 3.5,
            readOnly: true
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
        $(".quando").mask("99:99");
        $('.quanto').priceFormat({
            prefix: 'R$ ',
            centsSeparator: ',',
            thousandsSeparator: '.'
        });
    </script>
</html>

<?php ob_flush(); // no servidor ?>