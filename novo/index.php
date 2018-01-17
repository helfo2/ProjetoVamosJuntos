<?php
	require_once('../model/clsConexaoBanco.php');
	$db = new ConexaoBanco();
	if(isset($_POST['submit'])){
		$salva = "UPDATE tbl_admin SET termos = '".$_POST['editor1']."' WHERE id = 1";
		mysql_query($salva);
		header("location: index.php");
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Administrador - Home</title>
	<meta charset="utf-8">
	<script src="js/ckeditor.js"></script>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/sample.css">
</head>
<body>
	<div class="limited">
		<div class="container">
			<nav>
				<ul>
					<li><a class="ativo" href="index.php" title="Home">Home</a></li>
					<li class="liMenu"><a>Textos</a>
						<ul class="subMenu">
							<li><a title="Home" href="home.php">Home</a></li>
							<li><a title="Termos de uso" href="termos.php">Termos de uso</a></li>
						</ul>
					</li>
					<li class="sair"><a title="Sair" href="index.php">Sair</a></li>
				</ul>
			</nav>
			<img src="logo.png">
		</div>
	</div>
</body>
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $('.liMenu').mouseenter(function(){
            $('.subMenu').stop().slideDown();
        });
        $('.liMenu').mouseleave(function(){
            $('.subMenu').stop().slideUp();
        });
    </script>
</html>
