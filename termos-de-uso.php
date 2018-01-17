<?php
	session_start();

	ob_start(); // no servidor 

	require_once('model/clsConexaoBanco.php');
	$db = new ConexaoBanco();
?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Vamos Juntos - Termos de Uso</title>
        <link rel="stylesheet" href="css/style.css" />
    </head>
    <body>
        <div class="limited">
            <div id="termos">
                <h1>Termos de Uso</h1>
                <div id="todosTermos">
					<?php
						$termos = mysqli_query($db->con, "SELECT termos FROM tbl_admin WHERE id = 1");
						$termos = mysqli_fetch_assoc($termos);
						echo "<span>".htmlspecialchars_decode(utf8_encode($termos["termos"]))."</span>";
					?>
                </div>
            </div>
        </div>
    </body>
    <footer>
    </footer>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
</html>
<?php ob_flush(); // no servidor ?>