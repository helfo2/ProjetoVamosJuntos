<?php
	require_once('../model/clsConexaoBanco.php');
	$db = new ConexaoBanco();
	if(isset($_POST['submit'])){
		$salva = "UPDATE tbl_admin SET termos = '".$_POST['editor1']."' WHERE id = 1";
		mysql_query($salva);
	}
?>

<!DOCTYPE html>
<!--
Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
	<title>Administrador - Termos de uso</title>
	<meta charset="utf-8">
	<script src="js/ckeditor.js"></script>
	<link rel="stylesheet" href="css/sample.css">
</head>
<body>
	<form method="POST">
		<textarea class="ckeditor" cols="80" id="editor1" name="editor1" rows="10">
			<?php
				$dado = mysql_query("SELECT termos FROM tbl_admin WHERE id = 1");
				$dado = mysql_fetch_assoc($dado);
				echo "<span>".$dado['termos']."</span>";
			?>
		</textarea>
		<input type="submit" name="submit" value="Submit">
	</form>
</body>
</html>
