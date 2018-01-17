<?php
	require_once('../model/clsConexaoBanco.php');
	$db = new ConexaoBanco();
	if(isset($_POST['submit'])){
		$salva = "UPDATE tbl_admin SET termos = '".$_POST['editor1']."' WHERE id = 1";
		mysql_query($salva);
		header("location: home.php");
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Administrador - Textos | Home</title>
	<meta charset="utf-8">
	
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/sample.css">
</head>
<body>
	<div class="limited">
		<div class="container">
			<nav>
				<ul>
					<li><a title="Home" href="index.php">Home</a></li>
					<li class="liMenu"><a class="ativo">Textos</a>
						<ul class="subMenu">
							<li><a title="Home" href="home.php">Home</a></li>
							<li><a title="Termos de uso" href="termos.php">Termos de uso</a></li>
						</ul>
					</li>
					<li class="sair"><a title="Sair" href="index.php">Sair</a></li>
				</ul>
			</nav>
			<h2>Home - Cadastro e Alteração</h2>
			<form id="ckeditor" method="post">
				<textarea class="ckeditor" cols="80" id="editor1" name="editor1" rows="10">
				<?php
					$dado = mysql_query("SELECT termos FROM tbl_admin WHERE id = 1");
					$dado = mysql_fetch_assoc($dado);
					echo "<span>".$dado['termos']."</span>";
				?>
				</textarea>
				<input type="submit" name="submit" value="Enviar" />
			</form>
		</div>
	</div>
</body>
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<script src="js/ckeditor.js"></script>
    <script type="text/javascript">
        $('.liMenu').mouseenter(function(){
            $('.subMenu').stop().slideDown();
        });
        $('.liMenu').mouseleave(function(){
            $('.subMenu').stop().slideUp();
        });
    </script>
</html>
