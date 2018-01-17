<?php
	ob_start(); // no servidor	
	
	session_start();
	
	if(isset($_GET['out'])) {
		if($_GET['out'] == 'ok') {
			// unset($_SESSION);
			session_destroy();
		}
	}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <link href='http://fonts.googleapis.com/css?family=Advent+Pro:400,200,500' rel='stylesheet' type='text/css'>
        <title>Vamos Juntos - Login</title>
        <link rel="stylesheet" href="css/style.css"  />
    </head>
    <body>
        <div id="corpo" class="index">
            <h1>Vamos Juntos</h1>
            <p align="justify" style="margin-top: 15px; ">&nbsp;&nbsp;Um site voltado a caronas entre moradores de uma determinada região para um ponto de destino comum entre esses moradores. Facilitando assim a ida para o lugar desejado.</p>
             <p align="justify">&nbsp;&nbsp;No site Vamos Juntos, você encontrara automaticamente, depois de cadastrado, pessoas que moram perto de você que também estão cadastrados, e por meio do Vamos Juntos você combinará com as mesmas, caronas beneficentes e seguras, ao um mesmo destino, oferecendo a carona ou "pegando a carona" com um amigo. Com o Vamos Juntos, poderemos aliviar o trânsito, diminuindo a quantidade de carros que vão apenas uma pessoa, e diminuindo também a superlotação dos transportes públicos. Além de te oferecer maior conforto e rapidez até o seu destino. Um site seguro que garante a você uma boa compreensão e rapidez em suas pesquisas.</p>
                      <h3>Aproveite conosco! <a href="login.php">Clique</a></h3> 
            <label> Contato: <span class="label">henriqueelferreira@gmail.com</span></label>
            
        </div>
    </body>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
</html>
<?php ob_flush(); // no servidor ?>