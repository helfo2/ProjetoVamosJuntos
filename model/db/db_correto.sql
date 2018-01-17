create database vamosjuntos;

use vamosjuntos;

CREATE TABLE `tbl_admin` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `termos` text NOT NULL,
  `home` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tbl_admin`
--

INSERT INTO `tbl_admin` VALUES(1, 'admin', 'teste', '<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><samp><span style="color: rgb(0, 0, 0);"><span style="font-size:16px;">Termos e<span class="marker"> Condi&ccedil;&otilde;es de uso e privacidade</span></span><br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></samp></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span style="font-size:14px;"><span style="font-family: courier new,courier,monospace;"><samp><span style="color: rgb(0, 0, 0);">Ao cadastrar-se no sistema Vamos Juntos, o usu&aacute;rio declara-se ciente de que:</span></samp></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><span style="color: rgb(0, 0, 0);">1. &Eacute; de total responsabilidade dos usu&aacute;rios a escolha do local de encontro para carona;</span></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">1.1 Deve-se escolher um local movimentado e de f&aacute;cil acesso, para que sejam evitados desencontros;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">2. &Eacute; de total responsabilidade do usu&aacute;rio a verifica&ccedil;&atilde;o dos antecedentes de seus parceiros de carona;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family: courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">3. Os dados dos usu&aacute;rios cadastrados s&atilde;o recolhidos somente para seguran&ccedil;a dos mesmos, e nenhum dos administradores tem permiss&atilde;o de utiliz&aacute;-los de nenhuma maneira;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">3.1 &Eacute; de total responsabilidade do usu&aacute;rio a veracidade de seus dados, tendo em mente que qualquer dado incorreto pode gerar grande transtorno;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">4. Nenhum tipo de taxa &eacute; cobrada pelo sistema;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">4.1 Qualquer tipo de pagamento deve ser decidido entre os usu&aacute;rios pelo chat ou por telefone, tendo em vista de que nenhum tipo de taxa &eacute; cobrado por nossa equipe;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">5. O usu&aacute;rio n&atilde;o poder&aacute; publicar, enviar, distribuir ou divulgar nenhum material ou informa&ccedil;&atilde;o de car&aacute;ter difamat&oacute;rio, obsceno ou il&iacute;cito, inclusive informa&ccedil;&otilde;es de propriedade exclusiva pertencentes a outras pessoas ou empresas, bem como marcas registradas ou informa&ccedil;&otilde;es protegidas por direitos autorais, sem a expressa autoriza&ccedil;&atilde;o do detentor desses direitos;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">5.1 &Eacute; terminantemente proibido colocar ou transmitir, por via deste site, qualquer material ilegal, amea&ccedil;ador, difamador,obsceno, pornogr&aacute;fico ou outro que possa violar qualquer lei;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">5.2 N&oacute;s podemos remover qualquer conte&uacute;do ou informa&ccedil;&otilde;es publicadas por voc&ecirc; se julgarmos que isso viola esta declara&ccedil;&atilde;o ou nossas pol&iacute;ticas;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">5.3 Se forem violados repetidamente os direitos de outras pessoas, desativaremos sua conta quando julgarmos apropriado;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">6. N&atilde;o podem cadastrar-se pessoas menores de idade, ou pessoas que tenham sido inabilitadas, tempor&aacute;ria ou definitivamente;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">6.1 Tamb&eacute;m n&atilde;o &eacute; permitido que uma mesma pessoa tenha mais de um cadastro. Se forem detectados, atrav&eacute;s do sistema de verifica&ccedil;&atilde;o de dados, cadastros duplicados, ser&atilde;o inabilitados definitivamente todos os cadastros;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">6.2 Pessoas Jur&iacute;dicas poder&atilde;o cadastrar-se por seus representantes legais;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">7. Voc&ecirc; tem a responsabilidade de proteger a confidencialidade de sua senha, para prevenir o uso n&atilde;o autorizado da mesma;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">8. Em caso de cancelamento de viagem, esta deve ser notificada aos outros usu&aacute;rios vinculados a esta com, pelo menos, 24 horas de anteced&ecirc;ncia;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">9. N&atilde;o nos responsabilizamos por perda ou extravio de objetos, sendo assim, &eacute; aconselh&aacute;vel que voc&ecirc; mantenha seus pertences em mochilas/bolsas, e evite o contato com eles durante a viagem;</span></samp></span></span></span></span></span></span></span></p>\r\n<p style="text-align: justify;">\r\n	<span><span><span><span><span><span style="font-family:courier new,courier,monospace;"><span style="font-size: 14px;"><samp><span style="color: rgb(0, 0, 0);">10. Fa&ccedil;a uma avalia&ccedil;&atilde;o sincera da viagem, para que possamos avaliar os usu&aacute;rios motoristas justamente.</span></samp></span></span></span></span></span></span></span></p>\r\n', '<h1 style="text-align: center;">\r\n	<span style="font-family:lucida sans unicode,lucida grande,sans-serif;"><span style="color: rgb(255, 140, 0); font-size: 36px;">Vamos</span><span style="font-size: 36px;"><span style="color: rgb(255, 140, 0);">&nbsp;Juntos</span></span></span></h1>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<span>&nbsp; Um site voltado a caronas entre moradores de uma determinada regi&atilde;o para um ponto de destino comum entre esses moradores. Facilitando assim a ida para o lugar desejado.</span></p>\r\n<p style="text-align: justify;">\r\n	<span>&nbsp;<span><span><span><span><span><span><span> No site Vamos Junto<strong>s,</strong> voc&ecirc; encontrara automaticamente, depois de cadastrado, pessoas que moram perto de voc&ecirc; que tamb&eacute;m est&atilde;o cadastrados, e por meio do Vamos Juntos voc&ecirc; combinar&aacute; com as mesmas, caronas beneficentes e seguras, ao um mesmo destino, oferecendo a carona ou &quot;pegando a carona&quot; com um amigo. Com o Vamos Juntos, poderemos aliviar o tr&acirc;nsito, diminuindo a quantidade de carros que v&atilde;o apenas uma pessoa, e diminuindo tamb&eacute;m a superlota&ccedil;&atilde;o dos transportes p&uacute;blicos. Al&eacute;m de te oferecer maior conforto e rapidez at&eacute; o seu destino. Um site seguro que garante a voc&ecirc; uma boa compreens&atilde;o e rapidez em suas pesquisas.</span></span></span></span></span></span></span></span></p>\r\n');

CREATE TABLE `tbl_usuario` (
  `idusuario` int(10) unsigned NOT NULL auto_increment,
  `nome` varchar(80) default NULL,
  `CPF` char(14) default NULL,
  `sexo` char(1) default NULL,
  `tipo` varchar(10) default NULL,
  `idade` tinyint(4) default NULL,
  `dt_nascimento` date default NULL,
  `dt_cadastro` date default NULL,
  `ultimo_acesso` datetime default NULL,
  `logradouro` varchar(60) default NULL,
  `complemento` varchar(30) default NULL,
  `cidade` varchar(50) default NULL,
  `bairro` varchar(50) default NULL,
  `CEP` varchar(10) default NULL,
  `UF` char(2) default NULL,
  `restricao` char(3) default NULL,
  `login` varchar(100) default NULL,
  `senha` varchar(20) default NULL,
  PRIMARY KEY  (`idusuario`),
  UNIQUE KEY `idusuario` (`idusuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Extraindo dados da tabela `tbl_usuario`
--

INSERT INTO `tbl_usuario` VALUES(89, 'Felipe Fernandes', '', '', 'Passageiro', 0, NULL, '2013-11-22', '2013-11-22 06:18:45', '', '', '', '', '', '', 'usu', 'felipe.fernandes35@hotmail.com', '12345');
INSERT INTO `tbl_usuario` VALUES(87, 'Carolina', '', '', 'Passageiro', 0, NULL, '2013-11-22', '2013-11-22 06:18:03', '', '', '', '', '', '', 'usu', 'caroolribeirolima@hotmail.com', '12345');
INSERT INTO `tbl_usuario` VALUES(88, 'Cristiane', '', '', 'Passageiro', 0, NULL, '2013-11-22', '2013-11-22 06:18:23', '', '', '', '', '', '', 'usu', 'cristianes.rocha@yahoo.com.br', '12345');
INSERT INTO `tbl_usuario` VALUES(85, 'Charlles', '', '', 'Passageiro', 0, NULL, '2013-11-22', '2013-11-22 06:16:50', '', '', '', '', '', '', 'usu', 'charlles.ps22@yahoo.com.br', '12345');
INSERT INTO `tbl_usuario` VALUES(86, 'Thais Costa', '', '', 'Passageiro', 0, NULL, '2013-11-22', '2013-11-22 06:17:41', '', '', '', '', '', '', 'usu', 'thais.cfreitas@hotmail.com', '12345');
INSERT INTO `tbl_usuario` VALUES(83, 'Henrique Eustaquio', '', 'M', 'Motorista', 127, '1996-03-25', '2013-11-22', '2013-11-22 06:22:53', 'Rua Visconde de ItaboraÃ­', '-', 'Belo Horizonte', 'Jardim Leblom', '31.540-460', 'MG', 'usu', 'henriqueelferreira@gmail.com', '12345');
INSERT INTO `tbl_usuario` VALUES(84, 'Bruno ', '', '', 'Passageiro', 0, NULL, '2013-11-22', '2013-11-22 06:16:26', '', '', '', '', '', '', 'usu', 'brunobetabio@hotmail.com', '12345');

CREATE TABLE `tbl_veiculo` (
  `placa` char(8) NOT NULL,
  `cor` varchar(15) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `ano` smallint(5) unsigned NOT NULL,
  `lugares` smallint(5) unsigned NOT NULL,
  `categoria_idcategoria` int(10) unsigned NOT NULL,
  `usuario_idusuario` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`placa`),
  KEY `categoria_idcategoria` (`categoria_idcategoria`),
  KEY `usuario_idusuario` (`usuario_idusuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_veiculo`
--

INSERT INTO `tbl_veiculo` VALUES('hbm1122', 'azul', 'Stilo', 'Fiat', 1998, 5, 1, 1);
INSERT INTO `tbl_veiculo` VALUES('lkl1144', 'verde', 'Fazer', 'Yamaha', 2008, 2, 0, 2);
INSERT INTO `tbl_veiculo` VALUES('hkg1277', 'branco', 'palio', 'fiat', 2007, 5, 0, 13);
INSERT INTO `tbl_veiculo` VALUES('abc-1234', 'Preto', 'Uno', 'Fiat', 2010, 4, 1, 2);
INSERT INTO `tbl_veiculo` VALUES('zxy-4321', 'Prata', 'Sei la', 'Chevrolet', 2013, 4, 1, 58);

CREATE TABLE `tbl_tel_usuario` (
  `idtel_usuario` int(10) unsigned NOT NULL auto_increment,
  `telefone` varchar(15) NOT NULL,
  `usuario_idusuario` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`idtel_usuario`),
  KEY `usuario_idusuario` (`usuario_idusuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `tbl_tel_usuario`
--

INSERT INTO `tbl_tel_usuario` VALUES(3, '98184013', 2);
INSERT INTO `tbl_tel_usuario` VALUES(2, '12345678', 5);
INSERT INTO `tbl_tel_usuario` VALUES(4, '88445567', 1);
INSERT INTO `tbl_tel_usuario` VALUES(5, '99999999', 13);
INSERT INTO `tbl_tel_usuario` VALUES(6, '25522552', 18);
INSERT INTO `tbl_tel_usuario` VALUES(7, '88785588', 17);
INSERT INTO `tbl_tel_usuario` VALUES(8, '859562314', 15);

CREATE TABLE `tbl_postagens` (
  `cod` int(10) unsigned NOT NULL auto_increment,
  `data_hora` datetime NOT NULL,
  `post` text,
  `usuario_idusuario` int(10) unsigned NOT NULL,
  `Tipo` char(1) NOT NULL,
  PRIMARY KEY  (`cod`),
  KEY `usuario_idusuario` (`usuario_idusuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=161 ;

--
-- Extraindo dados da tabela `tbl_postagens`
--

INSERT INTO `tbl_postagens` VALUES(3, '2013-09-11 19:13:24', 'sfsafsadfa', 2, 's');
INSERT INTO `tbl_postagens` VALUES(2, '2013-09-11 18:49:18', 'testetesteteste', 1, 's');
INSERT INTO `tbl_postagens` VALUES(4, '2013-09-11 19:13:37', 'dsafasfsa', 2, 's');
INSERT INTO `tbl_postagens` VALUES(5, '2013-09-11 19:13:47', 'dsfafsa', 2, 's');
INSERT INTO `tbl_postagens` VALUES(6, '2013-09-12 04:44:04', 'programando trabalho...', 2, 's');
INSERT INTO `tbl_postagens` VALUES(7, '2013-09-12 04:53:25', 'programando trabalho...', 2, 's');
INSERT INTO `tbl_postagens` VALUES(8, '2013-09-12 05:33:13', 'hahaha', 2, 's');
INSERT INTO `tbl_postagens` VALUES(9, '2013-09-12 05:33:23', 'hahaha', 2, 's');
INSERT INTO `tbl_postagens` VALUES(10, '2013-09-12 05:34:04', 'teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(11, '2013-09-12 05:34:08', 'teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(12, '2013-09-12 05:34:13', 'teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(13, '2013-09-12 05:34:22', 'teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(14, '2013-09-12 05:34:29', 'teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(15, '2013-09-12 05:34:37', 'teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(16, '2013-09-12 05:47:17', 'sumiu', 2, 's');
INSERT INTO `tbl_postagens` VALUES(17, '2013-09-12 05:48:01', 'sumiu', 2, 's');
INSERT INTO `tbl_postagens` VALUES(18, '2013-09-12 05:52:29', 'adfasfsa', 2, 's');
INSERT INTO `tbl_postagens` VALUES(19, '2013-09-12 10:14:02', 'Estou conversando com o charlles', 2, 's');
INSERT INTO `tbl_postagens` VALUES(20, '2013-09-12 10:59:17', 'kole lana', 2, 's');
INSERT INTO `tbl_postagens` VALUES(21, '2013-09-12 12:44:08', 'testando\r\n', 2, 's');
INSERT INTO `tbl_postagens` VALUES(22, '2013-09-12 13:30:14', 'oiiie', 2, 's');
INSERT INTO `tbl_postagens` VALUES(23, '2013-09-13 04:25:24', 'Teste simples', 1, 's');
INSERT INTO `tbl_postagens` VALUES(24, '2013-09-13 04:25:53', 'Testando......\r\n', 1, 's');
INSERT INTO `tbl_postagens` VALUES(25, '2013-09-13 04:26:24', '8h26... NÃ£o sei como nÃ£o apaguei! ', 1, 's');
INSERT INTO `tbl_postagens` VALUES(26, '2013-09-13 04:26:27', '8h26... NÃ£o sei como nÃ£o apaguei! ', 1, 's');
INSERT INTO `tbl_postagens` VALUES(27, '2013-09-13 04:26:38', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(28, '2013-09-13 04:26:41', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(29, '2013-09-13 04:26:45', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(30, '2013-09-13 04:27:29', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(31, '2013-09-13 04:27:33', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(32, '2013-09-13 04:27:38', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(33, '2013-09-13 04:27:42', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(34, '2013-09-13 04:29:45', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(35, '2013-09-13 04:29:50', 'Teste simples.\r\n', 1, 's');
INSERT INTO `tbl_postagens` VALUES(36, '2013-09-13 04:29:55', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(37, '2013-09-13 04:29:58', 'Teste simples.', 1, 's');
INSERT INTO `tbl_postagens` VALUES(38, '2013-09-13 04:30:41', 'Ãšltimo post!', 1, 's');
INSERT INTO `tbl_postagens` VALUES(39, '2013-09-13 04:30:52', '8:30', 1, 's');
INSERT INTO `tbl_postagens` VALUES(40, '2013-09-13 05:03:12', 'Valeeuu Bruno! Muito Obrigado\r\ns2\r\nass.: Charlles', 1, '');
INSERT INTO `tbl_postagens` VALUES(41, '2013-09-13 05:44:26', 'asfdsafa', 3, '');
INSERT INTO `tbl_postagens` VALUES(42, '2013-09-13 06:01:38', 'Oii testando', 5, '');
INSERT INTO `tbl_postagens` VALUES(43, '2013-09-13 06:28:52', 'oie mundo', 7, '');
INSERT INTO `tbl_postagens` VALUES(44, '2013-09-13 11:20:01', 'teste', 1, '');
INSERT INTO `tbl_postagens` VALUES(45, '2013-09-13 13:48:52', 'werwer', 1, '');
INSERT INTO `tbl_postagens` VALUES(46, '2013-09-13 14:04:08', 'perae', 1, '');
INSERT INTO `tbl_postagens` VALUES(47, '2013-09-15 15:47:47', 'hshdhdhhdh', 2, '');
INSERT INTO `tbl_postagens` VALUES(48, '2013-09-30 17:08:56', 'testando ', 15, '');
INSERT INTO `tbl_postagens` VALUES(49, '2013-09-30 17:09:17', 'eu nÃ£o vou pra Calafate ', 15, '');
INSERT INTO `tbl_postagens` VALUES(50, '2013-10-06 06:44:09', 'teste', 17, '');
INSERT INTO `tbl_postagens` VALUES(51, '0000-00-00 00:00:00', 'teste_novo_layout1\r\n', 2, '');
INSERT INTO `tbl_postagens` VALUES(52, '0000-00-00 00:00:00', 'teste_novo_layout1', 2, '');
INSERT INTO `tbl_postagens` VALUES(53, '0000-00-00 00:00:00', 'kole', 2, '');
INSERT INTO `tbl_postagens` VALUES(54, '2013-10-19 15:21:17', 'kole', 2, '');
INSERT INTO `tbl_postagens` VALUES(55, '2013-10-19 15:21:38', 'teste_novo_layout1', 2, '');
INSERT INTO `tbl_postagens` VALUES(56, '2013-10-19 16:04:56', 'kole2', 1, 's');
INSERT INTO `tbl_postagens` VALUES(57, '2013-10-19 16:25:06', 'teste_novo_layout2', 2, 's');
INSERT INTO `tbl_postagens` VALUES(58, '2013-10-19 20:18:38', 'aaaa', 2, 's');
INSERT INTO `tbl_postagens` VALUES(59, '2013-10-20 10:32:30', 'teste_publica_novo_layout3', 2, 's');
INSERT INTO `tbl_postagens` VALUES(60, '2013-10-20 12:51:16', 'isso aqui ta mt daora cara', 2, 's');
INSERT INTO `tbl_postagens` VALUES(61, '2013-10-20 14:51:42', 'oi', 45, 's');
INSERT INTO `tbl_postagens` VALUES(62, '2013-10-20 15:05:13', 'OI', 7, 's');
INSERT INTO `tbl_postagens` VALUES(63, '2013-10-20 15:50:12', 'Oi', 58, 's');
INSERT INTO `tbl_postagens` VALUES(64, '2013-10-20 16:54:49', 'Teste', 60, 's');
INSERT INTO `tbl_postagens` VALUES(65, '2013-10-20 17:03:30', 'Sono', 7, 's');
INSERT INTO `tbl_postagens` VALUES(66, '2013-10-20 17:43:14', 'asdf', 2, 's');
INSERT INTO `tbl_postagens` VALUES(67, '2013-10-20 17:43:20', 'ddd', 2, 's');
INSERT INTO `tbl_postagens` VALUES(68, '2013-10-20 19:53:50', 'Ãšltimo teste!', 2, 's');
INSERT INTO `tbl_postagens` VALUES(69, '2013-10-20 19:53:59', 'funcionou', 2, 's');
INSERT INTO `tbl_postagens` VALUES(70, '2013-10-20 19:54:28', 'Como assim!? Isso aqui ta muito daora?', 2, 's');
INSERT INTO `tbl_postagens` VALUES(71, '2013-10-20 20:01:19', 'pokopkopkpok', 2, 's');
INSERT INTO `tbl_postagens` VALUES(72, '2013-10-21 08:20:38', 'Oi', 7, 's');
INSERT INTO `tbl_postagens` VALUES(73, '2013-10-21 13:16:50', 'Teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(74, '2013-10-21 13:16:50', 'fjgjfjfj', 63, 's');
INSERT INTO `tbl_postagens` VALUES(75, '2013-10-21 13:17:06', '6666666666666666666666666666666666', 63, 's');
INSERT INTO `tbl_postagens` VALUES(76, '2013-10-21 13:18:32', 'lkÃ§kjÃ§ljÃ§', 63, 'c');
INSERT INTO `tbl_postagens` VALUES(77, '2013-10-21 13:19:22', 'Teste', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(78, '2013-10-21 15:18:33', 'O virgem atrasou', 64, 's');
INSERT INTO `tbl_postagens` VALUES(79, '2013-10-21 15:21:47', 'o virgem atrasado', 64, 'c');
INSERT INTO `tbl_postagens` VALUES(80, '2013-10-23 15:44:56', 'fdasmnkl\r\n', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(81, '2013-10-23 15:49:05', 'safasdfasdfasfasfasfasfsd', 65, 's');
INSERT INTO `tbl_postagens` VALUES(82, '2013-10-23 15:49:13', 'estou feliz', 65, 's');
INSERT INTO `tbl_postagens` VALUES(83, '2013-10-23 15:49:31', 'carona pra brumadinho', 65, 's');
INSERT INTO `tbl_postagens` VALUES(84, '2013-10-24 08:58:17', '', 66, 's');
INSERT INTO `tbl_postagens` VALUES(85, '2013-10-24 08:58:25', 'lmkkmk\r\n', 66, 's');
INSERT INTO `tbl_postagens` VALUES(86, '2013-10-25 16:52:10', 'bjvbzxklbvkjbvl', 68, 's');
INSERT INTO `tbl_postagens` VALUES(87, '2013-10-25 16:52:16', 'estou feliz', 68, 's');
INSERT INTO `tbl_postagens` VALUES(88, '2013-11-16 10:23:38', 'Teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(89, '2013-11-16 10:23:56', '''www''', 2, 's');
INSERT INTO `tbl_postagens` VALUES(90, '2013-11-16 10:24:04', '''', 2, 's');
INSERT INTO `tbl_postagens` VALUES(91, '2013-11-17 06:16:44', 'Vivamus suscipit tortor eget felis porttitor volutpat. Donec sollicitudin molestie malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Donec rutrum congue leo eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Sed porttitor lectus nibh. Donec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt.', 2, 's');
INSERT INTO `tbl_postagens` VALUES(92, '2013-11-18 07:53:07', 'testando o site', 73, 's');
INSERT INTO `tbl_postagens` VALUES(93, '2013-11-18 08:01:13', 'oioi', 73, 's');
INSERT INTO `tbl_postagens` VALUES(94, '2013-11-18 08:04:19', 'ola que horas vai', 73, 'c');
INSERT INTO `tbl_postagens` VALUES(95, '2013-11-18 09:40:07', 'Teste_comentario_carona1', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(96, '2013-11-18 09:45:57', 'Teste_comentario_carona1', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(97, '2013-11-18 09:46:59', 'Teste_comentario_carona1', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(98, '2013-11-18 09:47:35', 'Teste_comentario_carona1', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(99, '2013-11-18 09:48:50', 'Teste_comentario_carona1', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(100, '2013-11-18 09:48:55', 'Teste_comentario_carona1', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(101, '2013-11-18 09:49:14', 'Teste_comentario_carona1', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(102, '2013-11-18 09:51:51', 'Teste_comentario_carona1', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(103, '2013-11-18 09:51:58', '', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(104, '2013-11-18 10:09:21', '7yr77yh', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(105, '2013-11-18 10:58:10', 'teste_comentario_carona2', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(106, '2013-11-18 13:15:27', 'Teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(107, '2013-11-18 15:58:01', 'Oi!', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(108, '2013-11-18 16:52:30', 'Deu certo...\r\n', 78, 's');
INSERT INTO `tbl_postagens` VALUES(109, '2013-11-19 10:34:43', 'Aperece', 76, 's');
INSERT INTO `tbl_postagens` VALUES(110, '2013-11-19 10:35:01', 'hbjhkjhkj', 76, 's');
INSERT INTO `tbl_postagens` VALUES(111, '2013-11-19 12:49:54', 'cole henrique  e charlllesss', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(112, '2013-11-19 13:21:33', 'ta errado', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(113, '2013-11-19 13:23:10', 'ta errado', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(114, '2013-11-19 13:27:01', '69\r\n\r\n\r\n\r\n\r\n', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(115, '2013-11-19 13:32:55', 'henriqwhe programa de mais  ', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(116, '2013-11-19 16:51:35', 'Primeiro Teste....', 79, 's');
INSERT INTO `tbl_postagens` VALUES(117, '2013-11-19 17:09:49', 'oi', 73, 'c');
INSERT INTO `tbl_postagens` VALUES(118, '2013-11-20 12:46:24', 'lalalala', 2, 's');
INSERT INTO `tbl_postagens` VALUES(119, '2013-11-20 12:48:40', 'alÃ´ v123 testando', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(120, '2013-11-20 12:55:43', 'AA', 2, 's');
INSERT INTO `tbl_postagens` VALUES(121, '2013-11-20 12:55:55', 'asdfadfasdfasdf', 2, 's');
INSERT INTO `tbl_postagens` VALUES(122, '2013-11-20 12:57:08', 'aehooooooooooou', 82, 's');
INSERT INTO `tbl_postagens` VALUES(123, '2013-11-20 14:12:49', 'aaaaaaaaaaa', 82, 's');
INSERT INTO `tbl_postagens` VALUES(124, '2013-11-21 13:20:39', 'Ufa', 2, 's');
INSERT INTO `tbl_postagens` VALUES(125, '2013-11-21 14:46:32', 'Oi', 2, 's');
INSERT INTO `tbl_postagens` VALUES(126, '2013-11-21 14:59:08', 'Teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(127, '2013-11-21 14:59:39', 'Oiiii', 2, 's');
INSERT INTO `tbl_postagens` VALUES(128, '2013-11-21 14:59:49', 'Simple', 2, 's');
INSERT INTO `tbl_postagens` VALUES(129, '2013-11-21 15:07:47', 'Teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(130, '2013-11-21 15:11:44', 'Teste_final2', 2, 's');
INSERT INTO `tbl_postagens` VALUES(131, '2013-11-21 15:23:38', 'Oi......', 2, 's');
INSERT INTO `tbl_postagens` VALUES(132, '2013-11-21 15:28:39', 'Teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(133, '2013-11-21 15:33:43', 'Teste', 2, 's');
INSERT INTO `tbl_postagens` VALUES(134, '2013-11-21 20:47:32', 'Teste_final3', 5, 's');
INSERT INTO `tbl_postagens` VALUES(135, '0000-00-00 00:00:00', 'Teste_final4', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(136, '0000-00-00 00:00:00', 'Teste_final4', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(137, '0000-00-00 00:00:00', 'adfljadskfjdklasjfdasjfklads', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(138, '0000-00-00 00:00:00', 'alsdfdklsjfdsjf', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(139, '0000-00-00 00:00:00', 'lfkÃ§ldsafkÃ§ads', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(140, '0000-00-00 00:00:00', 'adsfasfasfas', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(141, '0000-00-00 00:00:00', 'bhhhjkn', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(142, '0000-00-00 00:00:00', 'asdasdsad', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(143, '0000-00-00 00:00:00', 'asdasdsad', 5, 'c');
INSERT INTO `tbl_postagens` VALUES(144, '0000-00-00 00:00:00', 'adfsfasdsf', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(145, '0000-00-00 00:00:00', 'que bosta\r\n', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(146, '0000-00-00 00:00:00', 'Teste_final99', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(147, '2013-11-21 21:27:48', 'aiai', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(148, '2013-11-21 21:33:13', 'Oi!!!', 79, 'c');
INSERT INTO `tbl_postagens` VALUES(149, '2013-11-21 21:33:37', 'Tchau.....', 2, 'c');
INSERT INTO `tbl_postagens` VALUES(150, '2013-11-21 21:33:58', 'Grosso.........', 79, 'c');
INSERT INTO `tbl_postagens` VALUES(151, '2013-11-21 23:16:30', 'pqp cade vc brunoooo', 73, 's');
INSERT INTO `tbl_postagens` VALUES(152, '2013-11-22 00:57:38', 'Estou aqui Thais...\r\n', 79, 's');
INSERT INTO `tbl_postagens` VALUES(153, '2013-11-22 01:05:40', 'Noite sem dormir!', 79, 's');
INSERT INTO `tbl_postagens` VALUES(154, '2013-11-22 08:37:39', 'Simples', 79, 'c');
INSERT INTO `tbl_postagens` VALUES(155, '2013-11-22 08:46:18', 'Teste Simples de Ãºltima hora de verificaÃ§Ã£o.', 79, 'c');
INSERT INTO `tbl_postagens` VALUES(156, '2013-11-22 08:48:58', 'Teste', 79, 'c');
INSERT INTO `tbl_postagens` VALUES(157, '2013-11-22 09:06:58', 'Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada. Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.', 79, 'c');
INSERT INTO `tbl_postagens` VALUES(158, '2013-11-22 09:08:38', 'Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada.', 79, 'c');
INSERT INTO `tbl_postagens` VALUES(159, '2013-11-22 11:20:43', 'OlÃ¡ a todos!', 83, 's');
INSERT INTO `tbl_postagens` VALUES(160, '2013-11-22 11:21:02', 'Obrigado por se cadastrarem. Ã‰ hoje!', 83, 's');

CREATE TABLE `tbl_mensagens` (
  `cod` int(10) unsigned NOT NULL auto_increment,
  `id_de` int(10) unsigned NOT NULL,
  `id_para` int(10) unsigned NOT NULL,
  `mensagem` varchar(255) NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY  (`cod`),
  KEY `id_de` (`id_de`),
  KEY `id_para` (`id_para`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `tbl_mensagens`
--

INSERT INTO `tbl_mensagens` VALUES(2, 14, 18, 'oi, tudo bem?', '2013-10-19 18:49:33');
INSERT INTO `tbl_mensagens` VALUES(3, 18, 14, 'tudo ótimo, e vc?', '2013-10-19 18:50:40');
INSERT INTO `tbl_mensagens` VALUES(4, 13, 1, 'ainda há vagas no carro para viagem do barreiro até o calafate?', '2013-10-19 19:09:50');
INSERT INTO `tbl_mensagens` VALUES(5, 1, 13, 'tem vagas sim, está interessada?', '2013-10-19 19:12:07');
INSERT INTO `tbl_mensagens` VALUES(6, 13, 1, 'estou interessada sim. qual seu ponto de saida?', '2013-10-19 19:20:21');
INSERT INTO `tbl_mensagens` VALUES(7, 1, 13, 'saio da portaria do shopping, nos encontramos lá as 8?', '2013-10-19 19:21:17');
INSERT INTO `tbl_mensagens` VALUES(8, 13, 1, 'pode sim, estarei lá. obrigada.', '2013-10-19 19:25:44');
INSERT INTO `tbl_mensagens` VALUES(9, 1, 13, 'até amanhã entao.', '2013-10-19 19:26:02');

CREATE TABLE `tbl_imagens` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nome` varchar(70) NOT NULL,
  `imagem` longblob NOT NULL,
  `usuario_id_usuario` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usuario_id_usuario` (`usuario_id_usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Extraindo dados da tabela `tbl_imagens`
--

INSERT INTO `tbl_imagens` VALUES(1, 'perfil.png', 0xffd8ffe000104a46494600010200000100010000fffe00042a00ffe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffdb004300090607080706090808080a0a090b0e170f0e0d0d0e1c14151117221e2323211e2020252a352d2527322820202e3f2f3237393c3c3c242d4246413a46353b3c39ffdb0043010a0a0a0e0c0e1b0f0f1b392620263939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939ffc2001108007a00ce03002200011101021101ffc4001a000100020301000000000000000000000000040502030601ffc400190101010101010100000000000000000000000103020405ffc400190101010101010100000000000000000000000103020405ffda000c03000001110211000001ee00000000c63d279b6b9d7036e3acf9341859d223eff679bd1d400000000001af641f375a77e7171ebcd16db3e865539e70b9b47d9f312b2fa3d28dbe700000000000adb2adf99accd5b7cf765be9ae6b75932970915120cf858fd3ec86bf3400000000004399861d45970e6e37d1ede1e7ba4e42deb3aecbdf98d7c00000574ed349d4b0b4e673ae8d510a3a4737bcbd51e25f2926c4eacb3e6aba55549898a68d5d06aaa8874ee72696d169a712a5d659c38fec302b227430aa9b65e7b542be1cd79d27894eb6d92e5c976110a9f3a08b54d712bd8e7f0e87dae771bdde72965612222586bd9c8140011e4454f32d781275ed864af22e66eca2fa49f626f36ee813c0500000000000000000000003ffc4002d10000202010302030705010000000000000203010400051112131421304010202224323335152331344450ffda0008010000010502f2e676c2b0b8ceec306c2cbd339bd31232391aec2ced0f0d0638b692f14c860fa239e31f560ac1306f29ce6782e38c21076770d17a990d5fa174f8a630b773056239b44e393b444ed3a92e334867a23faa3c175e365e16a290303068cff367c69e973b5af42cfac3c415e038ea55dd3fa4804c22c0e5dfdbada50ef67d0ba31459b78fb9a8bfaced295c15e86637885cefee343a80ba0c97c46d1e45cb135804a0866d7ce79576d76a3ee4ced0a68347db659d24d56f5d196150e4e9f63855d3fe052eddb6e51b73671376c3c5379cccad6db365f70facbb8d1758b4d8b3589c439ad7dbb56650cb6d945775b25d23b56e57364dd4b483384c5cb2f9a96faf236ecbe6e4ccd0d37fa5ecd46b97776d3f214ee206a6913c8b45fb34bf225f9949c54bf79836dd6e2ab9da6b584645003a8d95d91d57e19d42da4ea5e190d2bfc7a6fe3a804b34bd3ad2948ab3d7d45bdb1441f5f4ca303157d9311339db239880060000640009700e6c50361695ab18853716b05c60d640190c140d54011809c6d1b080088008432ba592222105550452032002203e430e62791814383769f001966fd50e42cdf18d808ea46754368684e0b04bcf644f29e4d2e13d0672e303f1f12e9f128c91298212e4624cc60cc9aa0b9ffdbfffc4002111000104010500030000000000000000000100020311100420213031134041ffda0008010211013f01db1c25fcaf8e21e9460079614457bd2d1653dff830d7169e14ec6c90891bd317a8fb9838d2bafa5a68a7d5f180b512b1b18899bad5ab57838b56af6d2a55839a55f77fffc40026110001040003080300000000000000000001000211120304211013202230313241053340ffda0008010111013f01e1c5cc0669ed6f71cf608665cd30f0810448e8e6b1b75864ac960f2dddb1cc6bc414de5757a3f25e0160fd6236bbcfa398c2deb0b564ae1957fadad0664f0c4845aaa550aa9509a24a8552a9a2a951051ee9ae82ade8a2f9957561dd4e909a40d50705645cac1177ecffc4003110000103030105060602030000000000000100021103123121101341516104223032407120234272819114c1505283ffda0008010000063f02f0f5599582bcdfbf4fa9588f7590b1fa5a1fc291e92332a577745e62b32a468ee4afc5ba5a83c60fa395030168365cd52136b37eaca753fc8f4457e14f3d96bee689b6e8d254b1c1c3a6c7f420af71e88ec8e5b25f484f35750ad5691e85778d3abd7ca5107ea2a790f452a14fc30df2b5179cbbd142e9f096cc4ab1de41c79a818f043ecb84c1d5070c15fc76b67999c786d36dd718cfc3255cc748f81f5226d09b50889d8ea6788551b5334555ed9572e5bc650069fbeaaa4b6034e88eea88b81c93a2752dcfce1fa46857606bba2dc767a77bc67a214bb4d30c2ec11843b3d16b4be265c8ef981ae1cb8eca5f72a0d0d0778613aa01309b5ed126345bda745bbb89d72b794a9c93a1138465a052126e44f66a20b07172731edb2ab7213dd429b0b1a78e4aa85c2d36ea152da3778afa14ea6c186e89a1cf0d2d1a85da1d8972a9f7aed49bf62ac2b682a6a1ca8d2a26e20c92382b1efddd568f36155a6e7ef1acc3d1738c00a8b691932bb3d5e0c76a9cd63c39cee0131a72217fcffa4efca7b064cadd54363d9cd54ed0d1f2c089e69f5fb3d7dd3c70e68bab3ad91a9854c35d70e7b41231b2fdd327d91b5a04e602ee3437d91706804e4c2bed1773850f6070eabb8c0df65f329b5cad6343474d97b69343bd94384857369341f650e6823aa88d15ad6803900a1ad0d1d14be9b49f650d000e8ae349b3ecac205bc906b4401e086b7cc500f820f10a25172136b81e5c144a33fed011e30613a4e811338ca3ae140f1daf6898e09bdd2d6833aa0235bbfb5dd13d134b2996734295a74395369d1f2aa1b4ea4145d6fd40a79b48d2179645a421e6b63eaff39fffc4002a10010002020103020602030100000000000100112131415161711040203081a1d1f091b150e1f1c1ffda0008010000013f21f9602d01de7fe293fe2ce807e882393dae6aad752e48bc133183d07936e75ca25c1d5a9a11d4f6795996a3a8464f7d5984c3f78ffb99b1a3bc113a728e655ed5d80e9354adfb2b2bd2617ae66691fc9d5882904809a4d91c9292211518f9444775feef64efcd38903d47a1a815db986ceb2da7f2ae0a44155e23fa942754f642a0e8f150e5eda7a2f71ec58fda7f2a0930c6767e5216f02453beb3b0d5f65a7e89537e75381f02d41b2bc677798a2f2e3c7b2265a98d74f86e754d591c8d657a5da11050283e4e777e02a323616330efeafe5e7f01c15f08325016ca1ebeacf814c0aca620e23a3cfa7e052789ae57d9da75915bedff00618dbb8367889d428fba0ab73b007e62e057aaba1d6e55b6d8c92a3392e237af0d944062c5c4b7b4a2d6777ac1462d5f1afcc118ab87cc03a1f633290476723ad4a7cb4bd1cb037791e6288aabb72f1616b062a70b39bb174cfb67fb7d461628f25feb2ad3aa7895aa326e63ec06ba6e7e97683f6ef3f53b332d92d6b7707b71251755685bfb4bd2ef34aa02b58d0736ab50a80baafa7e2519443c9045aa2903487eff0069c02b2053b1b31bccb6234ce8810d696d56f11cc2f9e56ea52cf1aad5e7d4402ab3b7a5dc96ee1c4fe781705419cb4a9ac0d9933e91f9bf99e0ba2e1697dba6e56a81a5333b0c81512ca753be043489c89b12c954174f09d8fb0b2706c2aa5a8fe809d8fa0a2775dce50c9d68144b6fbdbca324915862a0a3d60f925a0f5741d66624d0154c481bb5a6ae5185d405ce48d459cbbad62fccb82a36ef4e48022baca2c651c6a098b3984a8c8355e4ac758cd8dd5e44f9e7be6e3d43390a479c3ba65464d0bab921b9979b82a1854876d5ee292e5b437552ac54c7285458938675c4a840923b732c2684ebac4060232c31e3fce7ffda000c03000001110211000010f3cf3cf021b61bcf3cf3cf3cf05d44396f3cf3cf3cf3c5b7bd8d3cf3cf3cf3cf1437c657f3cf3c100c10c3d54134235814792842b7a0015c3498ff003cf295ff00eaeaddf3cf3cf3cf3cf3cf3cf3cf3cffc4002211000300010303050000000000000000000001113110202130c1f04051718191ffda0008010211013f10daa29c4610a7e40c6997467a1c9bc446573088e359f3e7a39c5e74634d89f61dbbf46732f5a1137c8e36acb7e7eedb18bdc410414688a41909196a1606a8d7350a345609cd11b1a6410a1262d8f465656562f43fffc40025110100020102050403000000000000000001001121314110203061714051a1b181c1f1ffda0008010111013f10e54e85c19387c4c61c35a0f4681d743cc6aadae4bdbfb2c2540b8d45d12ddb5fea215d147d42084ccd744b74dbcc0e0ab51c5cf960d86a4cf46df73327b442ef698ae2c2d84232f8ef06961aea312332e0308208971009f9216035af894b5adaa17619f8958336330016691b01dee5b746adc722196021da2db7c870254c707d0fffc4002a1001000201030303050100030100000000010011213141516171a18191c110203040b1d150e1f0f1ffda0008010000013f10fc6bc2b55511641a38df9993cf4ff634006d87f5a404411d1187ea1006ea1b0f565dd270687620052dbaaf1ac6adee33fe41da1ee7ff00502acdf3917f90412b44d9f997fa428f5d0396684b826f1aabee9ec4450365ab510db777c78ec59f9895c2a40f4ffdc7342c322c659fd79cc67ac0391dc7a8e3f4ab769f2c3186703b4b4a0b57b1cb0900ee2b59d30c25c242b2719c913a2ac60190566c7fd3f92f7430381c7957bfe8ed2c7d9305d45bc4314caabe3e80ea93ba01b2ccd54ac42aa63c4a0341481947652b6f0c719c25fdf8fd2a072dc03b9327f226fc1f7b3c27d1e47dad4f2a8b65bec0a03db0beacc61bb57884f63bc3305f5d02d68a6c6f19a9963d543e5fd2cc3a6af886f8057dd002c0a53d7ec0100502b9a6e3e3d250505e8e9eedf8fd2002d12d569353781457d82392a7a48c4d00f4d83a9f106a040d00fc269560165f4746f780e0736e2592c521a70c6dc56715eafe314b3b4e05de8c1b07ecbec32701accdd35242cd75fb28648b50c792e56b0a47c7d2a3c1817b8bd1060316999ceaa3dc4f68456981b356daef85742075aaca09ad972fa4c4ca05da3bbae225fc151b4d51567da288ea1546159c53455e6e1a68dd69c5f2de3377168830ae96dc9b9c477cf57c9b1abbe3596ae820255d015b4b84ca563819afa79bfe4bf0236d9b36400af4361b07cc5bea29694886b80de32d0128dfb4c55ad000342d5edef33e6366e95625e956dd4466ac1afa64f6ccde583753453d76ea4cb2653e964aff00daccf056968acb35fb15609091a542dfb1ee96bc801328c7d5a19bff004f44e0defa41118b9f25d405bbdbf8857566d8f2926e6fccd0a05f19aee450840ac31bf40b7d229298384d42d875bf995a8228d16957be97bf78271276806ac444eebc6d4037bdcb809d8ba157ce647f945d0e4db06f11e0dad9ac902b4c6151e5c9f5a7efd0a82c9336a26fbe6ab5c424ea5a8b50d3d17da2884d27b3879cfb748d3153b1450a39a3040ed5a9eb3672671e9f5bf4194caa4b3d17e8dc9369ebcd697d628ccb013e5ad7562b49a0caf2d4d33d44775d58b14a0a51538dd0a0364069db8860bd411ee7565500559838bd601156ea0be60300a291de000e6c20ae4e3d2009fa190ea30cae2c45ae9c4c812baf67667b4238ad2ab88e2e55812f5c189902175ecec41dc252dddde0157a103d0889396832e5346598d9793854329547a03f0a0f76b68d57897bedd25b222b879962168be917543d23042a00b45a85bd3333dfd6cb2af96c81812a96f6e052afd612241c0e82ff00831532242c61c1c37e216f2f706c0d3caded2f92851cb69625ca11366cec2cc9d49b7da168725859f9da051069a1757b944415466028d00efbc15904bdd59dfb4cc074bd0bb277a94319241a8e2872dd456688c315a8f2f106165e8b3459ef2cbc73ab0b6fae252a86a82422773e254384e0b9ad710412ec9a12d2db5d32847405cac50b57fe73ffd9, 1);
INSERT INTO `tbl_imagens` VALUES(14, 'perfil.png', 0xffd8ffe000104a46494600010101004800480000fffe00032affe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffc0000b0802b601f401011100ffc4001c0001000203010101000000000000000000000304010205060708ffc4003a1000010401030303030401050001020701010002031104122131054151132261067181143291a12307154252b1c133d1162434436272e1f0ffda0008010100003f00f95b9c4b893dca6a2a464ee65dee0f20a889056116c282b6dcaa1a6806d714abbdc351a5a584b59d46aad048e6f06becb05e4f256352c5a222222222222222222222222222222222222222222222222222222cd95844444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444443ca2ca5252c80945629611640dd0858444444444444444444444444444444444444444444444444445bc8dd32b9a3b12100db74a0b21a4f016749f085bed06ff00081a4f02d0b5d5b82b5d2b3a685d2006f85b1693b80b4216bc22c22cd6c8b3452966962934a52694a4a4a295e56682257c250fb2c114b002ce94d2b0422cd158a4a5902d2a92b6584a58444444444444445627686e4480701c546b66b49eca689b40d814b3b7a9b7851b86a7529e267f002dcb363b12b4d3bd6814b0f8ec2d34346c795b88ef702940f84871a0a3adf758a58a403cacf29416402e3416ce616f2b459584594445859591a6b7b5858ee894b70c755ac6935685a6af6fe5600be16fe93fc2d4349ec52b9e7640df37bf09a68d158a3cd6cb08941628ac22252c222222222b392d0cca91a7b38a8a9643a8fd96ed7953076a671f62a1268edcf753c6fec3f92a5077560b41155fc28e68fd82c0e54274dd11d90d02df0a40d277a14a17c24b8ecabba12371c70a3af9523620e1dc6ddc2d1cdd26aed490b0136ac88fd941241fe3ec4fd95611388b1c52cb71cdd92162684c66c70a159445859a41ca98375374b48fe1044ed81036efb2d1d19d5b6eb1e93b93c775bc7b1d3d94f23496d3547e8b86e3ff00163d375693b7e149e91bd857e16ee65c3b8a5863298052c3aa88d96b43627cade813db60b491cd691a873caaef2dd5ede16ab0760b16562d2d66d3958459a09a56291611158c83ab224377ee3ba8d61641a52091a5b456034d93c8f85807de00bab569d6d0d2a56bec83b9f9597bec7c76dd461bbefe16c1a02cd52775ad005d7c5ad1c23041adfb2d839ae354a39631a09685ac2097dd76eeae441ba09705a3c30d59f9513d85c299547e56d131cd1455bf483d83569fca8b2717543fe36b757c0551b83339b6457c2cbf06469a04151fe9651c81fcad4c1235b6428f70770b1dd5cc6692ddf8f952b62a73b7d8ad5b0e926f7bee92329a2b85ac6c6d7ed526915c14d02f71fda060abadfe4ad8915e56bac7041fe16a36fe5608bbdbecb4a70375b7dd61ef6870dceddfca8249351dff000a32ef0b17f2509b58444444595b5daca116b52161109b24a5a6a2b3a82cad812dbf90b0dbd5cab448e4387f0a400066c569213cda9636ea037537a7edbd54b00306c4dfcac86b1c4d1a50c8cd2ed8f75135a4bb73616af6bbd5d8ec072b36edb953b001448dd61cfa1f1f75190d70beca48e800076ec54dec1b8dfe160cb6771fdacb324349b59fd5b6b9dd68dcba79278f95a9ce8c92481b2d8c913b9028f85a49046ee29604301e795b07c119a6bc00390b66ca0bbf78d3d91f3006872b5a2f1cada36107704fc293bd1144f958947b6da54443cec7fb50c81d5574b4e3724ff2b0ddddfbf9530ae03bf95ac941bbf8549ce34b4444444444444b59b4b4b5844444590567525ad81a208565b9034eea233389e47f0a48e6681becb633d0b0411f28725b575bf8598f24fc2ddd2df22ff28246f2163534baec8d909206d47f0b05ee587539d6563581b78e56a67f7fb7f95b3666936e5833d9abeeb2ed2fa24dec8037573cac960ab1baaba4eaaeeb704b450056c2623802d6924a64f85a2c87106c2dc4c40afed5d8a50c075f8d96edcade86ff000b225748ff0003e16c5b259362bc151ba72dd8d15a492b5c2f821567ca38d2a015c90a46c800a3f847cb6da16142e3b2d511111111111111111111111164159d4293504b0b6d5b55a2cb5d5f95217b7ee6bc2d3d4238e16cd94b7fff0042cbe5711d828f538f7256438d513b20701db95aa5ec8d16eaba5b176e2b7af2b22437bff4b22635563658321241a1b2194961040dfc2d3b72b089613f2b6d6e22b52de17863eca9ff0054c1b81bfd968fcb91df0a2333eb73f951926f9b58d49654d1634920b685b3b12668ddbf80ab11456116da0e904f0785ad5222222222222222222222222222d825a6a2b1696b607ca02166f6a2562c26de52c7959f9458445958ec96b1b92a5fd349e9ebd3b28cb4b790b146d6d44f00a92385d21ae3e4ab5174c9243b9fe16e3a4c8e75026becac37a01736f5bbf8533be9ab6db2420fca62fd3ae6c9729d55c00ae4f8831c02072a9c8d7fa669bf65c399af0f3a9b56b5663cb29f631c7ec148ec59a116e6289c5c7f0b144b785a22222d835c7809a0ad48a444444444444444444444444444444b59056752cd84b096b1761295fc26c4df73c5edfc2dbd41b804d760a291ec02dc2d425ed16348e36a0b3ebd70dfed6c2768a241b5607522d6d3595f95730336599c5b4bb30c8f0da2ad3251a7770fe548256917e153c993d43a34eca1f4816d692a94d80d7bfddb57c2dda446d0c6377f2b59b1448cf7dea3c00a2674d606f03f2a57f46f523f6d57c2a3ff00e1ec87173838068f2b9f9185240fd25a7f85069ad8f2a5871cc9b9d9be559381ec05a4dfcac0c221d41d7f0b538ae0faa22f85b3704dfbb85acb82e0ef6ee144715f6057f2b4920730d151e9f94d28637b4d2d51111111111111111111111116c18e77ed693f60b26378e5a7f8596c4f77fc4a9063bffea54830dd7b9a1f6528c2f693c9f2abbdce89d4dd969a8ed4e3f2a32e2562ca594b2b20eeaf6164888815baeb479840bbd88597e7036d69a5a37a83ff006dd1f0b6f5e526cb94a3a83c0ab16a2765bdceb247e16dea171ba16acc4f2e6fb870a51017d106f7dd74208fdba4f8523a01a0804ae64bd3a4925b2052e4751c27b1db337ffd55a082463082393b0b570b0e9dcd2d59106bb736b674003b6fe54ae8e99760fd955948ad2090e1c291b017c767ff00156c8c7078e69548b0dce71b1c76560c05b1590011d95095eef50eaab59971248a57308bd26ad6a31de7b52c4903e3e46de54488888888888894888a7831df29d86d7b9539c13aa81fbd85233a7edb9fc2dbfdb5ae769b3f75659d1a3638389739bdc15763c5858eff001c6005acb1b18e712dedc2e73a62d716868a56601ad9b81ba9dd0b4b2ec281cc0d6d0ffc5c9c8ddea125465111642dc388dc1dd5864afd0d05dc95a3a47876fe76b5b473bcc8015d38c92c6ff614ad6171e77254a30e4d5605dab90f4f755bb9f856461e81775f85bc4c0d1f2ba11c3edd479214a225b184b5b756b879d0be696834f356abff00b7d6e79523b0985b64958660c44ee4ad26c6d3b35a5cb48a371769311a3b70af8e991385e80b2ee9ad2dd8d2e5e574f7364b07eea1110069f6d2156cc8df1c45d77b5ae312e71bf2bbd3b1a7326fbacb1ada0348fbaab9ae66edae070b9042d991971d82bd1609d5fb6c1f2abe662fa125036deca18e17ca698d2eaf08f82467ee611f70a3288b347c251f0b0a682074d206b42ebc7d322034916ef2ab4fd3034fb0edf2a88c7797e8037b5d2c4e924b4ba6691e02bd1e1b638ffc6b6188e71bf0b66e359df956a1c668debf95ae439ac343baabea3c0ab504b2389dcf6e557f483dfb827b956e08c36813b5ab5ae3234d2cba164c7db63cae764e086bdc7cae4cb186eca058a594590148c8dcfe3f255f871e3f48f93e5693c5fe2d82a4d716baf653c33c864003abecbbb8b0b8e9242ecc71b5adf956984550056b2badb41691309770aeb09d9aa76349523a80dd57918d70dc52acf8437dc3754e62e341ada37bab9042d2cddbba9bd38dbc80aacf34711aa0b782412ee06ca59056f4aa4e1af0b9ce8d8d7107fb54f3e26ba3d20af3727f8e4734762bd065e9fd5cdbf752c01ae61143e150cdc66bb51b542381b74edcae9430c6c0da680adb1ad76dc50d969361c4e6fbf707e14f85d3a3886a6ed7dd63371db2b08dc91e02f33363ba27e9703f7a5263e1ba6701c7feabede901945e49538c3668d342becb1fed6c782748b5149d16f76ba959c2c0f4491a85f95746310fbb0ab64c7beeabb18c6c96183ef4ba104a6f4736af458ad2edff00852cf18632980034a8191a1da5c46a56a16b4b2c6eabcf0891c45d6eb418e2aa8ba82a72c0ed54586968e608c7b1ab6600e1b9a37dd6ef6b59ff002042cc53fa646db2872a67c80d77e171b21841d4557ab4a5968b3414ccc673cf215e87a5dd176e3bd2b8dc28e26de81f0b022603b35453421c29733d0209b6b95ac1c50e92cb4ec765e86167b401b52bb144e0da6ab118703a5c14de8b7edf2b78e36b4ede54ed01bb90b6f57e6828def04512b000ae5559a60dbf70d9451e4b1cee42b61c1ccf0b47537725733247a938a3b2bd8d51c62bb72b79e5d71edb2e14f93234bbddc155259defefdd7372f2e46bb4dddf7bdd73892e364ee574b3b2c8cc9abca8dbd45c1940d15a3f31ee6fefdd622c8a1648b579938a68dbe55869ef6ac447624ff6ae44e15f85202289005fd9579b162c8dde2bf0a28f061c676bd45492cc1ae6800693dd1f46a80af210070750eff0acc51970f728dd1961276fc2d58f21db8fe9692bafdce68202e64b92d1253587953e1ba474a5da0817dc2ecc59677d4daaef4a19f20cbb0b1f2a998ceabdcd73b2e861b1c63366b6d8295c1919b2e1bf7b58f523bb690b0f2c7377d25727241d64378fb2af5f75bb6279347f8a527e9cb40242d9d8874ec7f0b9f958fa986fff0017364c7735d43ff1490e27aa7772ea63f4b6db4b45fcd2eac1d31805b80fc0565b8cc60d202c9c707b7f4a1762b41b007f0aacd8ed236fe154f40834d06fe42b58b8e58fd446fdd74610dd5d95b0437823e56ed959abf70b5b3e7d3b950fea883c29db3b9cddfc2d0bec6e568246dee556ccccd113835dbf6dd5085ee9767595b3ee11a86c42333a52086fe375b7ad3486897291bff6d5b8f292e698fda08a5abb25d233da762a9643473beea93b9e0ff2a8e430093700fc150fa6d76fb0f84ce7039b3571acaab69681ca664c5841f0af45984340347f2ad0cb608c12e167b295b9a4801af52479121b05d4acc53127dce0a2972813a6f650faf1bb6d8fe54f1105c001b0571a2f61b2d6699d1d35a6c93d929e4026c5abd140d2c04345572a4fd3b0b082d0b18fd321129796826fb857ff004b1ffd07f0ab4b8f183fb76555f1c6d755055725da3f6b46de15093a8c8c6edb2e7e475370d9d66fe56b1f5424168bdbe54d1f5420e971dcf9ecafc333248f53c8528f49e6c0054ffe30db00dac3bdc370b52cf6aaf344e7f038551d885ee16db2a46e296014c215ec764df81f0ba6c1ecdd64001c28a90d570a076926ac6eb53103c00b1e837bb544f61029a7648dba1a6ca872a7f49bb3f7fbae33331eec8d9c79e576992dc6d2e7dab71375b6f6a562801b2ae5c775cb9f2e46c8556748f96b51b5771630da2b69fdc763c15ac189acea2480af3626b46c154c86b47ed3455095ade750256dea16c40823eca1966d437fc2a733cdd01baab207bddef24fd96cd6696d6fb2a32bf5caf779712a3445b02b21fa7829aef927f952c73ba33b156199ee0da772af46e12421e09a5572def0ef6150e2c92fabede7b8a5e8f08fb2dcd05c5590ddb6db6549d049ead826af95da898d74403a8ecacc40e8d3d948dd0393bacebf7581b297d5f6a89e6f6eeab98038ea2b47c2c68e2efcae56762b4dea6d7d970a7e9a4bc90680e16adc26c564bacd2aef61649aa8eeb66e63983493c7c2bd8f9c3483ac037c2b6ccb2e76ef571b359af852eb1b5a99822736fc247a2b7ae7cab03d3af7291862ba6d5a4af0c163955464b755b8ada5ce8836b50b2a9b3303a5a2762ae07815456c64d4da2785113614528d4d356b972c5239dc1238e551744f8673640f04ab4d981006abaf0bb58391fe100ff6aefaad2d3477516f7baad342c7bf572a1f49bd8056218816ee42dbf485eebbd94a4b621a7651be76b41a3bd2e6e44c5c4f854df65d7fd27617fc2d4b4dd90b21a3c27a4d3c859f482f368888888b6055a8324c43492694ed9992922c7e55b8db0b45b4b6fcab0d9cb3669014eccef7d121596e4b37f70a524596d6bab52b5fac6ec4396cdca0e3ca9c4a286eb66c874d020dad0ced69a3b2d8c8d732f56cabcce040a76eaaccf01a6c834b9530ff0025dfb4f651801c790b0f8d9546a8fc2e6e4e27a7a9e1c3eca9f07653c392e8883cab63a938771f647f5590f078e1490754206eedcab11e599087871d96d91d4dcd8f4deff75ae1f5277a96e71e785d27f520f1dd519b2355806afb055a47bb4db49f85b40e2f6d9347baebc121a049254c5e036c1dc95a7aa0368b873c95b31ec2092e1ba10ded4b979d1faaead87d9538a3f49c77bf95d18f2e9ad1c81cd2e833258d8aed47fac6dfef0b072987f6b8280bcbc9f7efd961d94f6edabf85770f28bcfb8ed5e547953d3a9bbaaa3237f756ea39b5761df950dedbee55593298d755ee3b159f5cc95a37f2adb0eaa53123436800547acf8fe979744444444590696e0efb291931673b8f16b77649236047e56d8d200eb71ded741b28ab37ba91b2e9758e16dfa9717583c2b0c9dee701602b67234b39d873bac373833f6b96a6612becbff95319c0601a944721a473dfb28a59438d83b0ecaab9c4eea2d603b61f95aba469f6daaf925ae8e81fb85cd3b1a21110349fc7295e1588dc636d73f95afbcbb904ade32f64b743eeae372497510b6365d77bf65bee4137c2d98e0d1e4a9865bda2871e56bfa87b8fb8a7aa3b9eeb2c9a8d6a202bb14ed23723f955e791ae268edf75cf99ded206e4aab148f6824decae459c74e87775207822ff00b5bd9af6a919cefd87955f2260c758079f2a26f510c7ec0eca58f2c4afe79597bb43b5117e294126757b750db9f2b68f2d927242a594e6194d3c1fb0588321b1b86df921745b9909e1cb71931bf8770b3fa868db585466e98e7cf3fa7c31c76a5ce731cc716b8511cdac682e700d0493c00ba18bd1b32699ad3139ad3c92ac66fd3f9300d4d1a9bdd72a48df0ecf6969f95122222cd9590e59d546c299b90f1dd48331f555cacb731dc1fe54cdce01bfbb859fd7b6f7279dd6e33212ed8952372e1bd3a949ebc478784f5e302f505b7a82f6e13d41f2abc9281637ab549ef7071a07e1425ef2fbb2b7735a6f6add46e8c8e1634bbc1596d0bb0785b374f7b5296b6a8052323037208b1b5295b137fe3607c8e16ed60d56a459a207744a3e0a169585958dc289e5f7609aaecb1fb9848249fb2ac41a3636598e3a76a3d82b61ed6b3551f85b37236e0eeb2d98107954f22705fdcf6a5096ea3bff004ac400b1edf6fe56f9736a60d27b1ba2b9a8b5252ca6a590f20ec56c6624ddaf4fd4b2063674822df51dd72b37184dfe58c1d6791e57a7fa7fa1451c0d9e5682f23b85e8442cd4035a132b198f89db6e1786fa9708c6c1316d51a5e65175f17e9ccec98db20606b5c36b5607d33346eff33f6f002a597d172b1edcd61918392d1c2e6d11c8524504931a8da5c7e1493e1e463806689cc078b0abda5acd94d453514d4564396ed346d5b85d13bf71dfe56cfc80c934b48a596e5817647c28a5c80f77fe287d4707585a17b9dc958b3e56dabe4a981db7f0b5d02eff00a5b363dec0fc853363df7fe14ed651b26cf65bd6dbd2c869b5b006f71b2dc8b14b5d02eb7e16d6400b3f85a168bbdd346e56a584572b1a6cd81d96a636937c7d968f8c573dd0343011c903c2d89223bd367c52ab2b887eddd1af22fe5579082fdbb295923795bcb900369a7654ec9ee4ac15aa2c2222eee440f93aac9ae4f703c02afc6e8e07d3a8b8ed56bd4e2648fd2801b44765047d5a37657a547503baec31e1fbf2085c4fa9f01d9989a58d17c8fbaf9fe5e149872689455f0b3811c67362f5376870242fa8631d6c616b5ba2bb2b2fc48de3516a33062a36d041e7654b2be98e9d90d91cfc76ea3b8202d7a67d3f8d8e49f49a3e296bd7fe9d6751c5d3110d73782bc1657d3b9d86fa91add3ff006b5cb963314ae61374b44445945b8e111165a09750eeae45d327968b6b7ecbb117d3ae7416e0357d952cae83918e3586ea68ec150e0d11b8f85b35ba85deca68c34b0006cf8b5235806fcda958d00d93b785b6c5db0ecb61f8f85b73d96cd66d5b6fc2d8c66ac7fea7a5f65911dee07f6862ae6bf94f4b6ede395a3d85bb7ff2a3d2b42dde81587329b5d96291d5544d6cab48cdb7ff00fe0abbdda7e76510f71b3b15ae924d52c22c15aa2c2222e94bd441cf9266b45176ca5c16c9d4baa46eba0d20fd97b83139b45aedab75a478513657495ee3c90ba905318351abe14d2699633b5d70bcf67f4d8f2dc0cb18345403a262c5a5da037e577308358d0d63b61c0579d3fa4375a45961f2e920856e490363d9ca3832038969d9ca4989d3ede57233f1e4cc87d32d16579bea1f4817481ccd4d71e76e5539be9493d101961c3b91caf3d97853e1ca639584577ec557459590816c88ac61e3499190c6b41e795edb0fa78800d5b95d46b98c628e5a78dc6de173737a641911db58d0ef202f3cfe99911cba4460b6fbf7587623f1b7311693dd65a051b5b017fb7c72b6635c5dbf85b96515bb633a76afca95910a3c14f40f93fcac989e06c7fa591110783fca08fe3f94111b51c91d6df0a1f4cdf1fc2d1cc3c05820d512b5d1f2b47337fb775a96ea6efca81f158dc7d942f8fb3828a88041fe42d1c37b0b545a9e561611116cfad6e2de2f65d4e801e33c39a1da40de97a67cb93ea53090df957a373a0a73cd8537fbb62b9c017807eead6165367710d3ed0553eb0f7c0c7bda781d978b77d4196f34e77b6d5de81d5e47f52a9a43eee02f7531f522690aacb2320687b8d2c479cd99da5ae07f2acc4fd326ab5d263c3db61561049fa9d64fb7c2b0e91adfdc52a295bbeea297a6e24f1b99244d7070a2085e4fabfd0d1bc17f4ff63b9d24ec5796cafa6faae2073a4c57168e5cd36b95441a2b205ad9ac2780b6730b4d148e3748f0d68dcaef61fd38f93dd26ed2365dac7e96cc50d6b070ba51c2e2ddd48400dadf65ab69e68a9062dbf94931038d9e42e5f5567ff97a2dba5e74309778b5336324d0abf0a6113b6dabe4ac889dc952470906ff00f853e93ff5f85b68dbb268daa961cc70ab580cbded288bb0b573491b8558c6e0ee2ececb1a1dff005085a472dfca89cdb758e0a89c0f6fcad4835fb4289cd276154a095ae238dc284b37dda3eea39000d3d9428b53cac2c222ea61fd3bd4b3f19b910639746ee0df2ba59bf4dbb1726491ce023bb016bd2e764197e9b434349ab0bd3b8697b1c06cb4ceb9223a476d82f2dfa091d2b8ea75daf49d143e08b4906fb95d69e2664e310e00edbdaf9ff56e9f0e2bde6376f7c056fe9ce8d2cd90dc991a4301f6df75efa62d8e20db1602f3bd5321be839b23abf2b95879ad85f6c783f95d58bab3b500e156ba707566870687016a77f547b5dd8850bfa935ee1abbab18d9cdb34765719945c78dbcab9ea36b9fc28e5609d9a76a3caf0fd7be8e95d33b27080a3cb17977f48cf84d3f1251f3a55cc4e9592e84b846f1f242cc9d2325ceb2cd9767a4f468d8ef51ec1abe57a48e30c686809347a5ba872a1f5486d10a2deeed01683f0ae4720b0a6d60efcaad9313668c8d979fcae984496c3b5f2b530085b40dba965ac7152b223dd4823f2b6118abd2b3a05708583c2c68246e38581186d801340be161ccbe02aef877def85831d05a692361fda8646904d0d8f2a17c67c285c095ab9a7fa51bdb63c1559e29b646fdf655a5fdaa145a9e56a88bd27d3df4b4bd547af91aa38071b5172fa061c78981891e3447d8c14375e47eb2cb9a3984711a613bd05c3c68098db235d4ee7f2bd574f7c9918a03cdb9a2ad58683a8eadf655c6345ebb9c06e7e55ec67c10c6ed6e01cb8dd5bea08f1f19d1e35bdced811c0557a5f44973a36e465388bf751eebd6c4d8f1b1dad6eda579feaff503209bd306cf7a5e7f23a93738d3dda42a7218d92b5cc3c734ba672a3313481bf957b198d9e2d45bb8eeacc73863c35e4eeac3807511fd2dd8e11b4eeac47d4991021ce0b63d5185c08777599fac7a4cb693f85374ceb1fa9b05d75e575993452fb5ed1bfc2cbb1227c6e6b1a07e172a7c230ba9db85ab58c8cec7756e32296990f0052e73a50e3c2d5f335a289a5139e5acd77ed5ac79cc2e0370575619daf65051492383a9a7654e636151f4adc4853359a68765201badb4b81e3f2a403db549a7f84d17e50348da9340beeb5d06eab65a3da46d5b2d68ad1cc247e542e8c8076dbe1425a41ba2a37005a6ec155dcd00fe140f37c70b475d0504a2c5aa8f0349bfbaaf4856035cf3ed6977d82f4bd23e8dc9cf83d7c92e8633fb456e559cff00a165871fd4c694bde3fe2eeeb99d07a04b97d534e5c4e64311b9350abf85ec3a9fd4983d2e2f4202d3a4506b579393ea9c8924739b1d027616bd7752c1873cb9af0363b52e541d10b1e5a4fb2f656991fe85aeb3b1e160ce1d1388759ec56b871b9a3d490ddac6460cb9d94da76988720775d18ba7e243188c44d20791dd6b24fe9bb481400d805c5eafd6648232c06af8a5e3a691d2c85ef24925680a9a38dcf22b8b5de8ba5cb346d03f6aee74fe9b2471d38f2b6c8c120d83c05c5c8cc7c4748b1a4eeabbbaa3f497124aa2eea724b2551dfc95d5c674b21a06b656b7645a5fee2b4c691d04fed3a413bd2f5188e7491b4872eab242c602e5bbe11903754e6e9ce02d9b9f0a3f4a48c00e14a37303ef52a6e3146eae0ae575098f61f2a3c7ca0f668734a89d61e69a3e282e8e26550d2e15f6565cfd62d87f955e47176ca3d1c6ea50c3c52958c5269f8fe96cd1dab959d1f0b26227c2c68a0818b52d58d36a3d03c2d4b3e3f2a37051b980ed4ab3d94762762abcad377574157737627f950bc51e7eca095a1d649215196c36aceca386274f3b2260f738d05eba3fa19f2184898d1ad6085ea63c6e9fd271845e8c7ed1becaabbea6c26b4c4d91a2b602d407ea7c6c789d24b20737b0f2bc9753faab272a49062ff86376c48e4af3e4971249249e49585f4b8b2586591a5ddfcab2c9d86cd85cdea4c9b276885d2a70e14ed00bddb0ecac47269969cff68ec174a2998776f0b12c8580b815c4ceea74c936dc0d9793c8c87cf2173dc4f805404eeb2005d4c18b4b351a37becbd2f459497e970b17b5af4674b77f2173f2a41740af2f9d0bdbae42573628f50759efc2458c5cf24338e2d5f88ba37b4f02f756dd92d71360fc2a2f91c1f6d2bd3742c991d106c80fc2f4b0b9b2328f656d94d6d858738bf7e294127bdd47f2a3708f490405c99704bf2da40b6da83ace0b238db20f1bae2c7118e9e1d60f6527ee24d2d7fca0db06c15a86525801f1bacd92ea1c7953b596a56b29ca4d0b70cdd6ed66cb6f4f659d149e9ac7a456a62f95a166f4b063a5196edc28cb07851b995b855e46fc2acf68baa555f1b834d1d95691bc1b0a1771405aa592289ecba3f4b4264eb5138c65cc17bd6d6beaced0c8811b1017cf7eaeea0f6cde9b24dddcd15e34b893cac59aab2b088bb93671833666ea237d959c6ea1269d5ab62bad85d4d8184bddba8a7ea626d4232aa80ed57befdd5a6647a4dd9db00a43d44480b4f15c85e6faae431f2d467eeb967758af2b215ec199ac7e9793a4aedb3a9c78c5be9fedecbaaceaa725add20edcad9d1b9edd7777e551cbc67491105a570df8c5a685820ef6ad63eaf51a06e0f2affe903cff00cad63f45a7dce3ed0aa4de931f41bfcae874bcd11bf4ff000bd4e164079b26975a320b7cda91d15d528cb2b62b99916c94eeade3303dbacf850f50647342e6bc76d97959222c9f4ffc070b60055d52de83450d877d918c6dd852b2368245299ad0052958c254cc8fba95b19be14ad8fb2dc447901346fc27a4163d2f16b063dd68e8f6e14459bee146e67650b9bd9465a5432328aa923349ed4aacdfb4edb2a32edb280badc5ad16ee4057b0be98cdea643dcdd0d3e57b0e97d31bd1f09ac7066a6f7f2b99d6bea26e292d2ef71e005e033329f9990e95e77255744445e833b01aecf98bec6e91e388d85a2fe14d1e297301aeeb06031bf9af85bba5739b476a5119496b9b5cf2a94f94223e9b7f71e4aaf2623c8f51bb82aae83755b8f2b0422d9ae2d36159c525f251e17a3c185c1d67823caea3751a68538c7d4df783c2e465e1b3d6d94d838218fd4e6857cc2dbb0a8e73fd161156b8af67a86ff85631b18891a6cf0bd360b7dad17c2f4501b6b42b01d45692d81a952a6e4971aa23cab38e035ba5c1625c51272172f27a7174941bb2af3f497319a9a7eeb9d2c459f6eeb0c6dfe14cd657653318558647b2b11c3654ed8885236252066cb2223f29e959e163d2a5aba25a3a2f2544e86c281f11d2abba3adca8dcc356abbdb615690737d951980d0793f60a84ce07ec38a52f49c56e57548d8e0681b5f48919fa2c36860edc85e6ba8f5491b1babb8eebc1f54cb7654f6e374b9e88888be87958d13f21ee750dfbad0451692056dc2ab3698c1debe5576ca1c4870040e0aa3919822d4081f0b98fcd91d75b5ad208ccf38049f36bbcd63628834d1dbbae7e544d0f2e1b2e6bc10f22bbac889e4580b2d85ce70b1dd767070807821a4fcaf538d8edd236e55d8b19a0ddd5765248decd545f841cfd4edf756190865052ba205974b979503647eedba5ce970b53ff00696fdbbade1736276971e3927b2ed6253802d363caed6397014aed800158737577d9434c69dab956a2682ddc2938e2be51d1b5e41a5ac9035ec2da5c6cbe99ea5866df85cf93024c7841773dd44cdf6ae15964767657638ad5a8e2f0a66e3922d4cdc53c2906311d96e3149e1a53f4aee343bf85a9c5236a37f65a7e949bff00eca27e31f0a07435d942e8a8f0aac916ff000abc8ca354abbd8059558c06575762ba23a3c060d3601237b549df4e86b486d1beeba7d2ba24387fe57346a3dd75333223662381de82f9a75fea2df51cc8cf3b505e61c6cd95aa22222fa0f507eb2f6c760daab1b260df75a8729ae6b458dbbaa5aeac834171f2a52f9082765069340f37f0ae74f6132ec0efdd77e4c5739808f0a338bac6ecaa0a8cbd3dee24b1a478d9662c3959fbdb614f0e139f28f68a5e930b09ad8ab481f85d06c6d6f0375a5904eea563751b5be9016a6b56ca46d56f4a29216deaae546ec61a6c85c5cac591f3b9a0503dc2eef4dc66b2268d5bd2eb69a1616f44b3ecb42f21ab785b60388538751fb2cfab7d96e24ecb3acd21ad375bd2a9331b2b482d5ce930ff00c9ed15b2922c7a35dd5f8b15d574ba18d8324aed2c6177d82ebc3f4fce40d40342e8c5d0e060b91c5c7c056e3e9588c37e903e2d6ffa7819b885a48f858f6f681b7df65a910482cc0cfe1467071267e9741a6c6c02a72f44c424b4494ef0b9397d12789c699a9a3823c2e54f885a0ec6fbeca8be1a3b85525849ba546468eea56e38003dbf950cf33cee09007852f4e9df2cda1c4d7caee4834c2005e63aee61830e471770385f349e674d2b9ee3b950a222222f738b3139b91ebf677b55e9184b353765cc9bdcda27ef6b953b7f706f145729f1398fff0027df75730c35eef4ebb785dac0c18d8e26becbb0d84d81d949fa769ec56e31e30ddda0280c1139da48e14f0e2e3c6af8d0c889040d9556ccd2ff00dca6d1dd4ed3519f80abfac46eb2d3af7214cd6d034a4058d6fbcff2a176642e7680e0b4763079f52d6628dd1bf62574627b8b3dca7d7b6ca27380da96beb11402df5b8d5ad81f952309ae5485c1adbbe1192fa86ae8a89ce0d76ff85bc71891c0f2af6274d7cd306c6c739df017a4c3fa7dad6039077ffa85d9861860669898d6ff00eadc9dff00f94140d91f9471f6da8f502400b4712d36782a36b18e7715badb5b623c591c15b00d7721b677513c3e10e7c7eea1fb41555ffa7c8884b2e27b4ec4d510b9d9dd05b2ff00970bdecafdb7baf3997812c0e3a98e6f9b0b919108683b2e7cd2c918d2d51634ae749fe56f2bad1451b240e65595672f20478a5d7c05f31fa8faac99192e85aef60e7e579f2b0888888bda0d433e46f92bb71341686bbf854f37174b8968b05721d0c65e5babdca9e5f4fba71175dd6d89136395834f3dd7a7831dba2da1590d21a7641206ece2a1932581bbeff6586fedd7dd40fcbd2eaa2a5138919c917e1425fe8b0bc9fe559c6ca74ac1d96d9798e863a1b9f0abe366ea700fd892afb72610fd21feeee165f9cc69fdc1713aaf522d351486cae0c1d526c6cad46fe42f69d2ba8feb2107c85d1d5a785b990b9a37a2b30bdc5f44ecad2d5ee6b402e555f9f187e95a7eb8b9d4c04fd94f1cd36d4dfe54a04929f7900052ec0502a48238deea73acaf45d2ba31cba27db18e4f95eab1f1e2c660642c00573e5484d37e42d43bbdf3dd46e9830d070dc28c6434ed74a3fd5b5ce2d1749fa869000b693cad5d2386dcb7ca8ccaf20827dbd9577ebdec9f1b15bc4646cad6b89a23624abf43c7b82d1ecd4dad6aa1f571dd4df71ef48fcb64baa1c9883a32367d6e179ceadd0dec6ba5846b8b90e1d97947e1cb2cba18dbf24abd074f8b1e226500b86e151cccb89bf14bcbf55eb8f18ce6b5c47616bc5caf748f2f71b713ba8d11111117bc1346dcc7eb003ad741f288dad7337b55ff0053ea92095c4c905b92e239bd95d86f2b14b6bdc3e140d606c82da6d7771e56e868b51e56488281245aaec73a6fdc4fdd479b21c60d2cb23e5423a938b74915f0b49b24b035c45d959ff768850037ef4ac19e39a316682d71b21ad969a7dadf951e7f516b4db4873bc2e2b7aacbfac0686e55a7e61336b63e8fdd692f53787d1b75ae5e466c923fda4859832185dfe5abf2bd3f40c9618f6701bec17a68de392b663d9aa89526ed3b295af710012b6940742e0e3c05c36629c9c8ab2180f2ba6e9f1706226c6dcae79eb6d964d2c780dfba91dd48b5bb127f2b30f512ed88af9b5e8ba2638c891b2ce4b62078f2be878b2c4210d885347f6ad97edb8eca17c878b503dcf2686c2b90ab16bda2e8eea66e38700f90d7c70b66c31075307e561d03db36c016528c0bb0fb1e14ac6c6c8c8736c93c95a86071d75edfb28e43ea1b6b9add3b6ea6f51c1fab4ed4b00b81aab37656ee1a99a80a783dd43a048cb2d00deff2a1735f8b23abdd03c6ed2bcff55860c5264800d2e175dc2f1f9bd4031ae7171e5795ea9d5359a8cfe5798c9cb7ce29de554256a8888888bd77557567495e5450e74ac6e92763e5596e644d8755d3ab85c6c9ce63e52ebbfcae8f44cf6eb74648dfcae84e636c9db75731f492da53e5411e416ec282ab2c8c805714b9f3cecc9d9cff00b2a1d4088834b0d3af754323a89943587f6b5578e5225d4defb5aedc51be484b811c70a36c13b5a48bfc2e64d8f901ee73c9a1c95b442291ba7870eeaa39e6373835c79e569ea12ed44d9f95824936b5b56f0b2e4c69985a4d5ee17bbe9b9bfaa8cd8aad95f6b002483f65658ef6ee568e9f7a68514992f91da786f05579b24c2c2c60aaeebcb677509df33a276ad24adf12078787bc111f957a2c88dd3fa65fdfb95ebbe9ee88dcd789e4ff00e9b7fb5e9dfe8b2510402cb47e02b18dd55d8cef4e4a3f62bbcc9df95007c6ea69d94acc52c3aa42e3b298b4558da82a5365ba01fe366ab3b93c2643ff005516990102b9056229d80363d0f6b5a3956db3b246db0922e965fa1e37fc108d60751ec16cfdb8d82a52bc036595ded6e3235380750691ca82595d1c80b1f6db56c3d926968700e7736a47374f03f6ad68ba221c01be178aebce97d77c419417cefad3dd0b1e1eee780bc7e54c46d66caa2785aac22222222f41d67387eb9c18e04deff0b53978de9b4970ba5cdc8ca0fd9a4d2aa4eeb68e47b0db5c41f85d2833dc5952bcb8f65dee9b925e413605775d5f55b45c1dc05c7cc9cb7dcee0aa62de6da095166c6f8e2d646cb88f76a75a9a2f63493f714a5c6ea1241776e1f757475ca6fec37e155c9cf7cd11d2c201e495a74c89f91942368243b9563aa7469b0c7aa482db5c9d26f659702390a6830e6c83fe317f95d18ba1e535ed716834bd17496ba08fd37021c395d88de382a4f503b8de968e6969bbe42ad2cfa196e3b2e364f50d44e9ba50c2c127bddcaa393d4a4824319fd9e14588e399990c6d93402ff75f34beb5859d8d81890e3b1e3715cf2a1ceeb3074fc773dae26479dc0dc95c4e8fd465ea9d4247b9ef003e8071aa5f52e8d910c4d64723da5c4795d2973da5c5b1b755775527cf7184c6185af27716aab64320d2f24780a4693a683b4b42db5973ecbacdf27ba9981cd7eb6bb8e4762ad3241449b0e3c00a48cfb351144f654ddd422865f4f439e01e6d1f931e43749690def6aacaea0d11ed1f6255b8a0fd4c0da02c771dd4d8f134b69ccb7b4ec54e4b583d47386de573727aab58f3e981baf39d466972a495ce6014362be3ff0057e49fd708849fb6ec34af365e5d56785a93b2d11111111158cc04664b67fe6540495845b856191b801c05e8f01cf763d7a74af319236273aac52e1cd39927746edb756627b2066ae4f85acb79ac2d079ec170f2f19d8b26937f16ab0791dd485e1c37e7e1685c174301991339b188cb987bd70bd6f47e92cc305c5a351eea7eb387fa9c573689fb2f3383d0325f3b9c5b4d6f16aebfa26a1aa61c7c2b18b8d8b83106b7f71e6d7471a56b45bdc0df0afc31c2eb780375218c3bf6a8c46e612b6601a8ea506646d731db00179b9b1cc4fb73bd84dade70183d46383765e7328bdd27a8e21d6682cb5eec48c3b46990f07c2d9bd5f32da4cce25bc1b560f51ca644d9a494be571d83bb05d6fa7f3331e247b596e2ebd4bdff0048ce7890999fa5cd142d7a5c4ce7690dbb24f2ae192df6f3648e42035543ddf2a66389deb9f2b76531d468f853b1fa6da3959707b2a52e05a3b056229cfa4fb6ed5cae3979638b281b75dacbde46db5a020c20783c2d22ca971dda58f3a49e17571f35b3476d71046dbf9547ab19646b743b6037a5c363a46cad8dc2f51e4f652f5379c4e992ca46adb95f03eb4e2fea5248ee5e7552e7034b2b088888888ad6702336607fee5554595231a5ee0df2bbf87d2dee00b882d015f7ccd82a368fe144eea4f631c2f65c3cac861935b09d4546ecf91d1e81b7ca93073bd0946b2695feab2c3978c0b47b9a2f65e788a452c3e9fa8d325e9ef4bd7f4ccd85f13590c6001c93d977a270a1dd4c5ed2da23646968e055a8e465b4f75e53a912c99cf3b01c28b10e4e448d21ce2d5ebb11a5b8ad6fc293d52c7eca47bb534126b65cf9b2991bc3756e3bad4cfea1a0eb1df75e7faee588e98d3bae0bf3277b74ba43a7c2d71676c1931cae6eb0d37456d9b9afcd98bcb4345ec07659c0c2933b25b1336f27c2eccbd0e685d2e8b75001b6bd7f46c28a1e9b13638dbea016e27cab792639435b5a1e0ee42f45d1b2dc62d0c68d23b95deab8ef935b9596d5005dcadf71b2c3859dac7ca9e089f56f7deae15d635829a3dcabcad92dd5c38f0a95b4bb4bb6734f85a8a0e279b5b34fb1a6ead44d01cd70fe0ad712dd388657e904fb6bbab3958af0ca1290f27baaf245031b0ea70f53c2db231ce561491b407368ddaf81fd618a713af3d84000b4114bcfa2222222222b99ed2ecf9cd1fde78555c28ad56e1a49eff852c60b64000dd7ade9d2c8f85b1915f2a79ba66b25c1f563baa39bd1a67e37f8a405c3901799c9824c690c72b69c1471b4b9c1a39254b1e2cd2cba18c24fdb65d887a6c98adb94136de171b2f4fac6857c2ae8bbfd0650d6b81ae57ac8678c00352b01c1fbddeeb705a37b41234820955a7c28325a7501bad20c48b1c531aac093434f80b99d43a93620446e05d4b807ea3ca692d7b6e8f952c19acc8f7bdc2cf6b5064f56742e7470917c58ecb892caf95e5cf71738f7256a8b0ade0674985387b3f2bd674eebf0481e6670142803dd759931caf6c61ed0083b7756ff004134d951bc35dc6e17a4e9b088c868f69f0577e20e746e6922872b72d0d2d06abca9034faba63377c290c27d66b49d3e6d5c11804341e028658ded6e989c49beca78e278c70d91fee077f95c79dc064bacd59d965834c66cd78b5201fe068adc7ca8da037777b5bded603db13c4ee6dd6ed3e14797d671b29e18c7ff0099a3caadfa8d3336492883b6fd94efc98f131dc7d6001e45f2be41fea10c79b320c882fbb5d6bc4a2222222222eacb04a3a84a4b6da5e552cb68f59da542d6171a57a080036e3f85d287a4891e1ed7513cd95dec4c33036cefb6cacb5e640e6f0a2321841206a5cfea388339b663d27cae2b7a746d9e8388702bb9852438e05b013e545d432e6935b9ad01806c6979695c24b2e3efbdd5745d0e9ae7366d81236b5e8f1db4f0f24eeba62473196380a864f58303a8ff006ab3fad6b1a5bb7cdab107527191ad738347c95624eb58cc05bea02e1e0ac8cd33e2ba48c50ae4af2f9b96c2e73792b9a5da9d7e56a5d5c15aea585908795845670d81d91197b8b581dbba97d3ba54114b8c268de4edb15ea7a2e382e2e99db01b6cbac2066af51805b4f8e5596fff004eda3dc790b67b1ce60d86a1d967dcd2c734d388ec9239da75125ce52373668d9ee6824f72af633f544d7bb6be16d912b48e3dd5b85cc94369ce7b698456e375a7a6c7c4dad5b7054ccc1964844916430efb82154ce10630687db9e5dbb6d72736791cf788016435c136bcde44819317b1da5f75b7755fabf5b66162b7d6c8dc9f2bc16675accc8ce6867519446de1dab654f3fab6467c4c8a520861bd5dc95cf44444444445ed2786313bec7fc8aa927488a6dffb501e991e30dbdde4ad442d6bac0a5771321b0b88771e575d99b1c800691e294e4374fb54a62f6580095c0cdc87fea7d379d207f6ac1e9ac744d9223a891beeab4ad7e2c8d0e658f0b99d6a69a9beed0c3c342e1924acb58e79a68b2ba583d224c9969ce0d6f7dd75474f8b01a4924fdbbabf891b3200734d5762a691de83482edfeebcf67bc3ddc83bef4b972c8f0e2dd468289d2bc9bd47f948c191ed17b92bd53da60e98d8daf22dbb95e51f7a8d95a22222229f131ff5592c8aeb51aba5f4ff00a6fe94ae992b5fe9b9a77a78dcaede361c386dfd3fa7a457b400bbf811dc2d6e8d3476f95d4c7c7d3287385b6b70b611064e77043b80b0d275dbbf7dec1349734f80765b068d4d041abdd663c7124ce74a4b5a3f6df7571a5a3dba6a86c5529721ee93d829c3bf950ba57075bcea1aac85672a6866c76fa7716fc572b68d91b6174801b63783b595e03a9f537bba8ba49e4a0cbdad799cdfae1b8f9ee6517475d972bacfd4b04d0b66c396a627f6d70bc9e4e54d972992690bddf27850a222222222222f6f92dd72483e5682410334feef34a264a252e1a371dd73b3667b1cdaa1bf85cd7e5c87536fbadb1f3668a569d44fc2eeff00bc39ba7595dcc4ce1363193c0dd790eb59465cc2f69216b89d772319a184ea68533bea1739da8c57f04ae66666499b36b7ede00eca06b1cffda2feca46eb85f7bb4fc85d0c4cd38a7538900ff6a593a89c996f57b4795622ead140d2d0eedd95697ac195ce1d8f04ae7bb24bac10a07124a971b0e5c9243071cdaeee174610bc3e4366b60ad6633d81bbe90b859f1b18dd9bbdf2b9a888ba1d2fa6bba83a60d35a196a8bd858f735c2883442d57aafa5ba44b2648c87b7db5ed057d1f0617c2f05ce3b0d85aece1c6ccb90970b2382bac1a6263412001c6ca78f5114d7fb8a9d98ef612e9402e2362871897075ecb76c3a1a76bb431b4068037bdcaad303c9797169d82a92e64c266b07076dbb2b26192469732b8559f8f33c1007bbb296085fa18d96ce93cf853f529a138ee8c6a6d8e785f2ff00a9f107e9e4943dd63722f95f2c9c9f51dbda85111111111111117b3c8c8266948aabe17227cc6b0b834fbbc293a44e5e64328e4f2ac663039db34552e1cd8e5ae7107f14a2845c80795d7663388616b756fbfd97a3c5696e096815b765e73ad44c862ab1ac95c14457308344ad20eff657b27a7cb912eb638690deeb97235cc76971e1681e470b526ca034564f2b2385dee98e8e38f5552ecc6f6c8db50cecb1a46eb93978bea6c76df95c69a2f4e42df0a2445f42ff004f7a38cbc5ca9cb797068bee02aff537d34464de3c5a5ee7fb88f0b9bd27e99c8393ea4f1dc75b01ff00cafa4f46e971b216b5add25a3c2ece3e2334b9da2dc0d2bb82d8e290b7837caeb4acf5a0d2c01d20dcfd9411b9b6c65fa6eeee5d211b5ed01cf3f07cacc21dab4b4ea60f2b69da5a2dbb8f2a0bab0e22cf62a9655b63db6a3cad31444f9810d276dc95d100452687914e1c2cc4d6cae769140795bc18e3538b9d6a9f578a018ee7bcd10365f25fa827a664b9d35103d8d3c2f984ced72b9d776546a5807f9357a7ac01b856861810b5d2b5cc738fb7e55496231bcb6f70a3402ca222222222ec753cc7b32a68d8748d4782b95a8975aeff004f7b4c4c25a37e4d2bf3b03c023c2e5cd885c1c49209dc28a2c2630dea5dac584b581d67ecbacc706460691c2f25f5138bb298e1fb48d9711114b148633a82b3fee53359a5a763caa6e797124f7e56a888b6076573172e48dc1b76d2baf8b93ac9a254ef99da8824ff002a191e4b170b243bd4712ab22d805f69ff004cdac1f4d9739bee04f03e5767370848e935368937647650e174c688642d1dd7431a26c6c01db0068ecad0d11bcb9966bfb5b31ae9492006baf65d98233e931f54faa34aa6446d6ce5ce1c7c72ac4792450ddcd1f1c2b0672d00b4817d82ad2e5bdef02b85cf6cb21cb7eb8cea6eed37b2ce7b1f3319a4bb557b82887a90c21d18dc7255993a97a41a1ed05c46c29623ce924937f6df854f37af6462bcc716971eeb95d43af7ea31dc25753885f27fa9ba9b6594c31c96e07dcbcfe3623f2b569dabe395266e23319ac6836fee56fd29b7926322f50dc15ea7a562c19d31c4c98cfb46d63856b3be8987d36be3d401b25e0af1bd53a70c5cef4213ada46c5546e2cc6531865bc0b2142410483cac222222229b266f5f26493fece2546d3455e873dcc2011ed5d8c6c8f599608d37c29b200118b0ab31a09057671ddeca0385a646598e3712380bca750ce6e58680da2d3cae7a2ca5ed4b0888888b769a1b15770f25ec786346a27b2ebc114d202f959a7eea09b26284105e0f6a5c9c9c8f57b552aa8ad62c5ea3acf0de57dcbfd268637f499a33468fff002bde65f4f81f112196781b2e08c338f21616b835c7923852c9146d934b0876db95a39ad0da0773c2920f4dbeda25d776785d18f2981ed8cb835c7b2d2597d4c8733634547266b637fa5a4593c85b7ea23686bac6fc8523a26c8f1e991756412aac8d31925ae02f9b5a17176e7c73e55a8628fd31a9c2cf65533700cf2b6463ab4f6a59ca68c6c42e6f66f2bc864e6b2190bdd4647f16579deadd498c88ebd88e57cf335ed9f21ef1cb8d85dee9403ba7b5b0c41cf6fee0392559c7e90fcd96364d0d006caed43f496332771c769120164955de32f07a831acc701a7f715eb31a57750e99a238dc49d88513be9cc376390e800df7246ebceb7e99c68f2f2a46136410d042f23d73e9e97a647eb83a984ee7c2e0222222221e7f28b768738edbaee74f71642d1a77577241756e2ab75135ba5bb765731a573596547964cad7345ee37a5e5a485ed91c343851f0a14444444444a2baf81d03273611287358d3c5aece3f41830aa67c9a9edf954facf50736311c6e02fc2f3ae7171b2b54456b08b8e43403cf2bedbfe984ccc496582ec48db0be9ad95b238d1dc1e153ea4d688dbabb9e5704b087573f2a566e1aee48f2a091afd24ff0aa65643b5432b5a7d46f70aa3fa9e4195c413acf856a3c999d135ef66d7b92b992e449fac12b5ee0c077692bb51753748d648d2411b1af0ba4d79c92dbabed6ac31d09d2256f7ad95df462b0e65585b00d2eb700490b8bd6e27be0731876adcaf0f95d3e37d7aaed5a4ed6b859bd24f5591d146e2c8da772ab62fd2711c96c72925adef5caf41d33e9ec7e9d23bd365eaee576d9d25c5ad9037bec02edb3a5362c53ea3417b85ae064f463eb995a0fdbc2eaf48e9c1dd3647b1da65d440aecae4b8f23b104607f919fb891cade2e8f1fe81ee9236faa78246ebe7bfea3620c5fa7c35ada25e39fbaf9210b5444444593cac2dd8e2d3b15d9c6c988c43702b9055c8de1c09b0a68a8b48d82c97060b2503c720fe56f0e973ceb6b4df80b85d671638a6d7134804eeb96059a4229611111148d1b8fbae942c639ec05ad77dc2f478927a50ee406f85c6eabd5edc6388ee0ee570a491d2b8b9c6d6888b205ab1864b72e323fecbeb1f47e41c6ead8ce341a4d05f56ccac663a604d3b9a514e5d98d8d8caa1b90795cf999e94c58ea0eff008a8e26b9faa88143751cbb42ea04b81d82ae347a14453c9e0ae7bf19ce97da74b8154f3a5c973db8ad7966976ab0a81c79a13ebcf3b9d648008577a6492465e5aff6bb80e5ea306464d2460bc6a1c956f2ed8f686329bab72a5c5c87c92125b6d03757cb448cae09dc52e5f52696c6f25f7b510178dc889d1c8750b6f6526063173fdacd8fc2ebc7d3370f7346df0aec1d3c39d7a76039215ec5c3d52025bed69f2ba791009da1a286cb8eec112cee8d9a816f248d8a9e0c48f1b2c63c41c5a46a71ed6ba220d36792ee765a8638be9df600af9bff00aae6373638056cdb202f8c64c2d63ce935b70aa90b14b2004d96a7958443ca22d812ba18539bd25c682b0ec92d90d1dbb2d4e780ea75d5291b9b110413a7eea68a7049d0eecb8d9334cf95c1ee277e1423dbbdeeb04dad5645775844452b48b1ab80bb3d3a36398e713b9e3657cc8463163cd1ec579bcc0d13bb4fe5564441cab50440b9a5c3da7bae9c10c2c9db2556fc2f6983216c6c7b0d693617d87a3e4b7aa74589da81701a4ae475839985d6f09f8e1ce89eed1269edf2bb19b881c0388d4e0362b885ef89c7db74775b993d60e7b7870ee785cb94cc72011d8ecac3d86421c4510373f2b999b3fe9db13dcdf75ece3dd47368cf1083bb9cedc2986238b4c513376770a2c56e6e2e757fc79b5e9c7558e7c1ba0d734d51eea1c5ea23d42e32b1aebe17420cd7c929d4f0e046d5d96b952c6c8dfab7becbcfcf8a3227b6bbdbdc2e9418ce81cc6b1bbaec3315cfb246e55818e18cf93cade26e9f680772a7712d61afdd4a3d074db873e1691c7a1ce7572ad0008b14a09e46c01f3c95a636daf897d5dd4bfdc33e795ced89205f85e2b2216cb6686aaecb9d2e296550fba88c743b9519e78a45a9e56a8888b239520790281a5b190900926d68492eb5b6a0e70d7dbc2bd8f3b1975c151e5cd13c690d6eaf202a24ac5ecb088888b22d777a6cae6e2f2352c6664bc8a3fd2e23c92e37cad51640b5671f17d6e0d2ecc1d39e20f35c05938cf1b51b0ba38d9d2633435dd97d07fd3efa898dca7624d290d97f682782be859ce8a31c8693b82aa7fb892c0c2e6927606d53ccc596277abffedbbf7051c98ecff1ba178f4c8f705337a63683c124f2010b7ea587af19b2c7196b9bc8bab5e4f371df2c5aded21baa9b6760ac60623e370f59ba4386c4af5387143163bc1686bb4d027bae1e43647bfda41049069736761c50eb79f6f03cae4663f540ec81a985a2ebcabf89d7db16030460871144bb95663ead2b89d43503caef6062be6689001a7baee63e30f535b86f5b2b8d14e040fbad1d4e1f9d96c06802cee567579ede56bfba89e06d4b06c1a1dd48e708997560785e23eb4eb2e8717d26c9a1cfda815f1ecd9659e72d91c481dc7755bd3a3a4595abe13a7dca864c6e670a81bbdd16aee56a8888896b20d26add675059d7b52d6cac22222222c825742191b042dbfde54a676cd19701ee0b98f075bbeeb52805adf857b1e66b5a0347b8f3baec439ee880d4351f0b32e539ceb02828a492c593d9538fad6461e532581d4e8dc083e57d9ba07d4d17d4dd1592b9d534434bdb7b82bad8f06a733402e01db9f0bd3490492c7e9beb4d7f4aabb05ad313a3ff0089dc29dac7ba471fe005a4ee898cf4e7969ae1b85e59b1c6d9a58984cb0ead4c27b15d98b05b2e33659bfc8e03603b210d763866ad36680f0a3963c4741ec25b2339b5e77a87e9a5739ae90b6468d87954e0c7764b1d13e23abfe2eec54c7a592f635ed686f1c2eae3f46680035c34922d7adc38190e3b6360fca9d8c2d045dfca3ec9a6ff002b0c6ef5f1cad880482e3b7cad6da5c2936b71ba016bac50f710d1b95cfcdea6e8617cb75134775f25ebbd4ffddb3a4711ec07da4ae2be1635a472546236876c39eeb1342d736971f3236b5c4785c67feeb5aad792b21a49a02ed5b6604a5a0d2a28888888888b6205585aa222220e549cab18e408cfbb758921dcb803baace1456d1b753aa95818cedc34df952418cfd6093c1f0ba4d8dc0d9047dc29b4d8d81beeaa65121aeabe171f4b89fda7f85e87e95eaf2f42ead1caebfd3c843656781e57e90e8ffa3c8c08f271802d9003f65d2adab9513d846c08a3d96a2c1b3b1fe972ba863c8e90b9cd6d386dbf2a87a1e880cd209e54f8af9621246d6ea6b8deeb1911faf138c6e31bda6c3085040d932dfe9cda43eb62072a19ba5b7d4b1159e08238561b8022f4cb9aed8f0d5d68fa6c0434e8d86fbab2fc26399a63686efc85bc4c74674deaadad4c45834b0050bb5a0d476a000f081848bbfed6469d74076dca8a7a9360d3cee55691ae77b43ac0e4f85e0beadeba1cefd040fa68fdc5783cac8646cd45db9ec1531980fed3cf368731ac17aad3f5cc9059bfbae666b5d31242e74d8e5ad0e03ee157a2b154bb7d2704102770b3e085d82c8c9bd03f85e2511111111116c385aa22222c82b3ab7596b8876dcaecb238e5c36f77691607954ff4123dc6aa9598705cc34d3a8fd95b8b0e405da46d7bdabd1e1ec0b87b94d2e33ada48b1d94a318359b0f71557230da092e1c8e571677450ba8b81f14b9eec87194b9a48fbafa2fd05f5ccdd3248b0f2e52e81e74824f07c2fb341980c4d9623adafdc1b57849ea3351d8acb5ad23ddb83d9453e331ecf4ef7ff008fc2a33e1b8d06976b6f363f72458a03da75106f70153ead94dc60d118a2dfde7ca43941e632c8349770472bb818c731a640351f85b885a08a02bbaddac009016c3e16819a5ce7793c2c9afbac1fb9a587169d35fd21dcff00ead9ad001ffeeb47efa6369a046ebc67d57f51b7a4c6ec2c62359fdceb5f15eafd69efca7e9712ebded70e4cb9a436e7f7ecb47e4bdc00d4687cad44afff00b1fe54f1e73d8daabf92a5667927496800ab2e3eac6db34d3c95247142cf0e503f0d8642eb1f65d7c695ac834b070164c8fbecbc82272a7fd24fa6fd3757c284823909ff0005845b06922c2b18f86e9cdb8e96792147911c71ca5b1b8b80ee54288888b34b09454f0634936ed6ec3bae9f4bff00148e63da4827b85d699d1b183d36824aa7a86bbaadd5e872e38db6e3c2d9bd4e032137cab9fee78ce1648a6f75cfccfa8a061a8fddb765c7c9eb92ce1c00ab1576b92e7171b26d02ddb216105a771c2f7df44ffa83374b99985d4a42fc671a1213fb7eebed78794ccac412c12092376e28abcc749e8d37f7f6054b146f67b9eed44ee42c49ea69d407baf60142d7fac4b34683dc9eeb9b9f845c5c256873470541884b325ad883bf8d82f411bb5b013b9adb652b476fe5645ea2100a29ced5dd00a5a1692eb2ea59d34361f941439ec86f550e392bce7d41f5241d3627c3090fc823907f6af8d7d4bd4cc81c5ee2e95db82bc348f2f71738db89dcad6f658a4459068ab0dc93a34916395bc79458f143656233ade2fc2bd13bd3007c2c3a717caf3a8b669a36bb58b9a04203459efb2a799013fe568d9c7701512d23914b005ab78d852646ec69779d974a3e9b3b1f422f69eca6ff00e91f4e46691f65c4cc606cee22802785591111164ada3617bc34724aebe3611f4f4c9183bf2bb4dc784e306c7a411cecaa81044e70d42fe103d8410d7035f2aaba469934820959311b2e713a6bbf0b8f90e1eb38b0903c5a87d57d56b77f2b4b459445b86dec17bcfa37eb1cfe82f8e27bbd4c71ff00026c80beebd23ad60f5dc56cf87334baacb41dc2e811b00e3fda803dad9bd3707073bbf6523b635a2ebbad4323901d4dbf36b2d89918b8da2cf60b7dc103cee56c491a7f85b774e13b25f65a91a8ee38437c570b49258b1e274933c46cadc92bc4f5efad9ad6bf1f0760762f3c9fb2f9e751ea4e797173b51ee495e4ba848661ee37bae315a9e502158585959068a9a399cc360a91994755b9c79d8298cd1c8755f3f0b9ce05ae208a20eeb08ba581af4586582ed8d2f4106046585f2103c02b8f9d805d339fac054c0c6841b7eb3cd00ba58bd6e1823d0d8f48fb2ed607558721e3dc17466c5832633b0bf2bc4759c47c198ea63b491b1a5af4ee8f3e7bae8b231cb885db8fe9bc2ad323df7e41587fd20c7465d0e4bafb6a0b952fd399d1bcb435ae03b82ab6474ac9c68b5c8cdbe152a2b78e096534c6177d82e96374c730b6491e001b90af19dad6e969d87caa79197346d3e99d8f34b96e95e49b71df9dd192bd84e97117cae8624743d479a3f256d3f513458dddb5b2e6ba8927cf951a22cacd14028ab5032d8ed8efdd4d0fa8c7ec1d63baed74bebb99d1725b263cae659f3b2fa9fd37fea74797a60ea6c0d70ff985efb133f0fa84624c69e39076df753e925e4e9ab1e54475b7ddc03e566378ab160fc85b105c370a406c0a5923fbeeb357c9d90f8ec9c047101ba9ce0d1ded707a9fd57d37a6b5cd127ab2f6685f38eb9f5564f5094ba597445d9b7b05e4f23aa032921c48ecb9734ee91d65c4ae5e4ca75104f7d954e56a5611161651641591ba5ae9e674ac8775299ad68a2fbbfbae847d2f1a2635b306935baab918bd3629db4fa00eedb5d28fac74dc783446c6fb46c005c5ceeb3364b8867b1bda9739d2c8fddcf71bf25688a682674320734d15eafa7f567cb1b01afe57620963c916e635df70a5ff001c674b0003e147e8b5efb56000d6d289ce00fb472b49f1db938ee8cd02e0b84dfa6e38e4d4f36dbe14d97262e0639d0c68701c05e627cf9a626cd0be02844afe038a9a264c6f9af951cd13595b924a840a560b9c62049229426c9bae56b5f29a566936f0b20122c04a3e1174b124643135cf2296efce803edbdbbd23fa840ed20b6fbda961ea11c2eb0e6eebaf83f50cf88e0609dccdfb397b9e8dfea3e5c5188e602603b95ec30bebce9592c1ebea89df22c2e937ea6e8b21ff00f56cfcab91755e9f902e3cb84dff00fc82b1ebc1a6c4d1fdf5851bb3f0d9b3b2a2fb6b0abcbd7ba64269f96cfc2e7e4fd67d2f1f506bdcf23c05c1ceff0051e36467f4f0d1f2e2bc8f55fadf332dbfe5c82187b30af2791d6df2976906ef624ae76466caf6fb9d600dfe551766f6afc84fd500dbb556490bdd7dbb288958444584459445e93a9f5111e44a587df7c2e24b9934a4eb90efe1572493656a8888a6c789b2c81a5d5e57621c46c5ef6bce9edbaeb6366b608eb92ad4196dc876c28ab609041b5bba568eff00951892227778fb5a9bd56345d8a1dc95472fa945e9901d7f62bc8752c833641df6546b65968dee8d2b6dc915a688f26d47336fdfabf0a0bdf65b39ee70a2b5dfca239d66d62fc2ca96395ac6d16da8dd2024d0a07b2d41b582e3c2d6d66d0152325730d834a78f3f22276a6ca47c2b8ceb53d1d4e771d8ab10f5591e4106ebcaece1654c46af51c1c7901db2e9333b20edebc95fff0062a7198f1bb9c4fc9253f545fb9dd6b932ba48086587572bca66674c2731176c39beeabc6c9a6f77fc6b6d9567ba463c823f05579643f7279a55ca2c2c52c222c222222ca9f2a7f5f26493feced940b088888a4638b08705d28b38bdba380a60e940d883f657b16531104d6a5d28f2cc8362aae7644b1424eabfb2e2b32a691fa9cf23e0abd2e538c007a840af2a8094cafd0d70d37baaf93086bfdd767b854ee8a97d4d51e93b91b8519249f0b6333f486df0a3d452d6429a2c774ad246c0775139a5ae2d3c8585825637458b4444594590acc39022611a6cae9e0f512d02c9fc2ee43941c1bbf2ac094915d96dfa8110dc28cf516550e4f95c5cc63659b5d7b8f2ba5878e1b10047dd52eaf84d60d60515e6cb8892cf95a1dd116a4ac22c22222cd25522c1e51111116405b81b2590a66e4c8defb2b1067693ef255c1d4238f70ff77851c9d43d669d4ed8ae74b2dbfd84d0f95b0ca701477d9471cee8e4d4dabeeac4d96d9a3e0eaaf0a911bad9b7c2b0dc7b80bcdea550f2b08b60ae439458c0d040007855e47fa8fd4b44216856561111165165ab653639b900ba5d986737a41dc6d6afb323db5a8dad9cfd6dbd4a998dbea02e752b6df49c780eaeeaf412b2b48d8d283a84624c775f60bcb64c2c64760ee0aa57b222d4859a094b5211111166d6160f251129588b19f2025add8772a22da34562829191175782a7740c636c9efbaacfad5b70b4252d67526a59b016a4ac2d81f284efb203bab12e497461ad142b75551101a59b29656c4ecb04ac22c222ca2cda5859e06cb280906c6c55886770efbab70e53cbb4ec00579b3fb560cba9dbefb734a4f5831dc5da3b31dea06b01008e694c725e61f71b34b87d405d3879dd576c6d316a2772a13cedc22c5d25858b584458b4b444b593ca52c80ade362897771a1cecb7967f4ad8c2057851860929d62c8dd0422c12e1411f386fec37f8555cf2e3b95ada222222222cac59444444459458444445958b5959d496b36b66b8b4d8575998348b02c72b2fccd3da89eea27e53dc6f52923ca342dc3f2acb67b1bb87f2a29e58831cdbb34b9e5e48aede16a8b52b0888b088888ade46386643da0b6b511cad1b0d9ad43f0a66e30a04956adac6e96f85cd958e8cef5bad5af2360694c6668c7d14095549b4444444444444444444444444444444444b5b02b607642ef95ada6a59d5b26abe566d62d2d60a7016116111111159cb935e5cc7b179d9421d5c6ca5f59eed235501e15a6491160f70d5f2aae417970078ec916339edd4ef68ed6b496174469ddf85122222222222222222222222222222222222ca2222222ca2585844445844445b48754ae37c92b14b66b5ce34d164f653bb0e560b750bed6ba3861be9d39a2c7956c88dcda2d1f0b9dd4a3fdaebe070b947944444444444444444444444444444444a44594444444444444458444445bca0095c07009016a0ab586ed3303f0ad649f524f6bb6a5986980d9fca9bf50de3500aa750797e9a36072b9f46d6128a2222775bbb4e9000a3dd6888888888888888888888b2b08b2888888888888888b0888888b671d4f24f728385346e0d523266379dcfd96feb35dec1c15168b79f71d94d13847b3e9cd2792a777a2622d156519044622348dc6c4aa13c443c86b4d2828a1042c2225da22222222222222222222ca22222c2ca22222222222c2222222296503d57d71a8d2d06dcaceaedbacee8d34eb520780e27fa473c385158649a6ca9d99618ca02c9f3d9627c86bd943f71e4aabbdadcb81601e147416a88888888888888888888888b28888888888888888b088888888a493695df72b444b5b03e5656a4a5a6e856164158bdd6111111111111111111111111651111111111111116111111111165c497127cac222ca222d852cad4d2d5112d11111111111111111111656165674ace958a0b3416764d963bac52515844585958444444444444444444b594b58444444444444444444444459445915dd67658b4bf84b4b4b4b296b3612d608dd6116116561111111111111111111111111116513b2c22222222222225a5aca22222222222222c22222222222222222222222222222222cac22222222222222222222222222cac2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222fffd9, 2);

CREATE TABLE `tbl_email_usuario` (
  `idemail_usuario` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(40) NOT NULL,
  `usuario_idusuario` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`idemail_usuario`),
  KEY `usuario_idusuario` (`usuario_idusuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `tbl_email_usuario`
--

INSERT INTO `tbl_email_usuario` VALUES(1, 'brunobetabio@hotmail.com', 1);
INSERT INTO `tbl_email_usuario` VALUES(2, 'felipe.fernandes35@hotmail.com', 2);
INSERT INTO `tbl_email_usuario` VALUES(3, 'carolribeiro@ig.com.br', 5);
INSERT INTO `tbl_email_usuario` VALUES(4, 'crissilva@gmail.com', 7);
INSERT INTO `tbl_email_usuario` VALUES(5, 'charllesporto@bol.com.br', 9);
INSERT INTO `tbl_email_usuario` VALUES(6, 'tatacosta@gmail.com', 13);
INSERT INTO `tbl_email_usuario` VALUES(7, 'henriqueferreirao@hotmail.com', 14);
INSERT INTO `tbl_email_usuario` VALUES(8, 'toninhopedechineo@oi.com.br', 15);
INSERT INTO `tbl_email_usuario` VALUES(9, 'ricardao@hotmail.com', 17);
INSERT INTO `tbl_email_usuario` VALUES(10, 'lanaavilacoelho@gmail.com', 18);

CREATE TABLE `tbl_comentario_carona` (
  `cod` int(10) unsigned NOT NULL auto_increment,
  `cod_carona` int(10) unsigned NOT NULL,
  `cod_post` int(10) unsigned NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY  (`cod`),
  KEY `cod_carona` (`cod_carona`),
  KEY `cod_post` (`cod_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Extraindo dados da tabela `tbl_comentario_carona`
--

INSERT INTO `tbl_comentario_carona` VALUES(1, 2, 20, '2013-11-18 15:00:00');
INSERT INTO `tbl_comentario_carona` VALUES(11, 20, 115, '2013-11-19 13:32:55');
INSERT INTO `tbl_comentario_carona` VALUES(3, 20, 102, '2013-11-18 14:00:00');
INSERT INTO `tbl_comentario_carona` VALUES(4, 20, 103, '2013-11-05 00:00:00');
INSERT INTO `tbl_comentario_carona` VALUES(5, 20, 104, '2013-11-03 00:00:00');
INSERT INTO `tbl_comentario_carona` VALUES(6, 20, 105, '2013-11-19 00:00:00');
INSERT INTO `tbl_comentario_carona` VALUES(7, 18, 107, '2013-11-19 00:00:00');
INSERT INTO `tbl_comentario_carona` VALUES(8, 20, 111, '2013-11-17 00:00:00');
INSERT INTO `tbl_comentario_carona` VALUES(9, 20, 113, '2013-11-19 13:23:10');
INSERT INTO `tbl_comentario_carona` VALUES(10, 20, 114, '2013-11-19 13:27:01');
INSERT INTO `tbl_comentario_carona` VALUES(12, 26, 117, '2013-11-19 17:09:49');
INSERT INTO `tbl_comentario_carona` VALUES(13, 20, 119, '2013-11-20 12:48:40');
INSERT INTO `tbl_comentario_carona` VALUES(14, 20, 134, '2013-11-21 15:59:33');
INSERT INTO `tbl_comentario_carona` VALUES(15, 20, 134, '2013-11-21 15:59:47');
INSERT INTO `tbl_comentario_carona` VALUES(16, 20, 134, '2013-11-21 16:00:44');
INSERT INTO `tbl_comentario_carona` VALUES(17, 20, 134, '2013-11-21 16:02:30');
INSERT INTO `tbl_comentario_carona` VALUES(18, 20, 134, '2013-11-21 16:03:46');
INSERT INTO `tbl_comentario_carona` VALUES(19, 20, 134, '2013-11-21 16:06:22');
INSERT INTO `tbl_comentario_carona` VALUES(20, 20, 134, '2013-11-21 16:07:51');
INSERT INTO `tbl_comentario_carona` VALUES(21, 20, 134, '2013-11-21 16:09:00');
INSERT INTO `tbl_comentario_carona` VALUES(22, 20, 134, '2013-11-21 16:09:39');
INSERT INTO `tbl_comentario_carona` VALUES(23, 20, 134, '2013-11-21 16:21:07');
INSERT INTO `tbl_comentario_carona` VALUES(24, 20, 134, '2013-11-21 16:21:27');
INSERT INTO `tbl_comentario_carona` VALUES(25, 20, 134, '2013-11-21 16:25:23');
INSERT INTO `tbl_comentario_carona` VALUES(26, 20, 147, '2013-11-21 16:27:48');
INSERT INTO `tbl_comentario_carona` VALUES(27, 20, 148, '2013-11-21 16:33:13');
INSERT INTO `tbl_comentario_carona` VALUES(28, 20, 149, '2013-11-21 16:33:37');
INSERT INTO `tbl_comentario_carona` VALUES(29, 20, 150, '2013-11-21 16:33:58');
INSERT INTO `tbl_comentario_carona` VALUES(30, 20, 154, '2013-11-22 03:37:39');
INSERT INTO `tbl_comentario_carona` VALUES(31, 20, 155, '2013-11-22 03:46:18');
INSERT INTO `tbl_comentario_carona` VALUES(32, 20, 156, '2013-11-22 03:48:58');
INSERT INTO `tbl_comentario_carona` VALUES(33, 20, 157, '2013-11-22 04:06:58');
INSERT INTO `tbl_comentario_carona` VALUES(34, 20, 158, '2013-11-22 04:08:38');

CREATE TABLE `tbl_categoria_veiculo` (
  `idcategoria` int(10) unsigned NOT NULL auto_increment,
  `descricao` varchar(80) NOT NULL,
  PRIMARY KEY  (`idcategoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `tbl_categoria_veiculo`
--

INSERT INTO `tbl_categoria_veiculo` VALUES(1, 'Carro');
INSERT INTO `tbl_categoria_veiculo` VALUES(2, 'Moto');
INSERT INTO `tbl_categoria_veiculo` VALUES(3, 'Van');
INSERT INTO `tbl_categoria_veiculo` VALUES(4, 'Ônibus');

CREATE TABLE `tbl_carona_quem_vai` (
  `id_relacao` int(10) unsigned NOT NULL auto_increment,
  `cod_carona` int(10) unsigned NOT NULL,
  `id_criador` int(10) unsigned NOT NULL,
  `id_participante` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `avaliacao` double default NULL,
  PRIMARY KEY  (`id_relacao`),
  KEY `cod_carona` (`cod_carona`),
  KEY `id_criador` (`id_criador`),
  KEY `id_participante` (`id_participante`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `tbl_carona_quem_vai`
--

INSERT INTO `tbl_carona_quem_vai` VALUES(1, 20, 2, 58, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(2, 20, 2, 53, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(3, 19, 2, 53, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(4, 20, 2, 53, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(5, 26, 73, 53, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(6, 26, 73, 53, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(7, 18, 2, 53, 3, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(8, 17, 2, 53, 3, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(9, 20, 2, 53, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(10, 18, 2, 53, 3, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(11, 21, 2, 53, 3, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(18, 20, 2, 5, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(16, 20, 2, 5, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(15, 20, 2, 5, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(19, 22, 63, 5, 3, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(20, 26, 73, 5, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(21, 25, 68, 2, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(22, 20, 2, 68, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(23, 23, 64, 2, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(24, 23, 64, 5, 0, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(25, 20, 2, 79, 1, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(26, 18, 2, 58, 0, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(27, 7, 1, 79, 0, NULL);
INSERT INTO `tbl_carona_quem_vai` VALUES(28, 10, 1, 2, 0, NULL);

CREATE TABLE `tbl_carona` (
  `cod` int(10) unsigned NOT NULL auto_increment,
  `id_de` int(10) unsigned NOT NULL,
  `onde_vai` varchar(255) NOT NULL,
  `onde_sai` varchar(255) NOT NULL,
  `carro` varchar(255) NOT NULL,
  `quando` time NOT NULL,
  `qtd_pessoas` int(10) unsigned NOT NULL,
  `descricao` text NOT NULL,
  `preco` varchar(10) default NULL,
  PRIMARY KEY  (`cod`),
  KEY `id_de` (`id_de`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Extraindo dados da tabela `tbl_carona`
--

INSERT INTO `tbl_carona` VALUES(29, 83, 'ColÃ©gio COTEMIG', 'Pampulha', 'Gol 1.6', '12:00:00', 3, 'Carona para a escola!', 'R$ 5,00');

CREATE TABLE `tbl_amizade` (
  `cod_amizade` int(10) unsigned NOT NULL auto_increment,
  `id_de` int(10) unsigned NOT NULL,
  `id_para` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY  (`cod_amizade`),
  KEY `id_de` (`id_de`),
  KEY `id_para` (`id_para`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Extraindo dados da tabela `tbl_amizade`
--

INSERT INTO `tbl_amizade` VALUES(1, 2, 5, 1, '2013-11-18 10:17:11');
INSERT INTO `tbl_amizade` VALUES(2, 2, 58, 3, '2013-11-18 10:22:29');
INSERT INTO `tbl_amizade` VALUES(3, 2, 63, 1, '2013-11-18 05:34:41');
INSERT INTO `tbl_amizade` VALUES(4, 2, 63, 0, '2013-11-18 05:35:49');
INSERT INTO `tbl_amizade` VALUES(5, 2, 63, 0, '2013-11-18 05:36:24');
INSERT INTO `tbl_amizade` VALUES(6, 2, 63, 0, '2013-11-18 05:38:56');
INSERT INTO `tbl_amizade` VALUES(7, 2, 63, 0, '2013-11-18 05:48:00');
INSERT INTO `tbl_amizade` VALUES(8, 2, 63, 0, '2013-11-18 05:49:26');
INSERT INTO `tbl_amizade` VALUES(9, 2, 63, 0, '2013-11-18 06:07:42');
INSERT INTO `tbl_amizade` VALUES(10, 73, 64, 3, '2013-11-18 07:59:20');
INSERT INTO `tbl_amizade` VALUES(11, 2, 64, 3, '2013-11-18 10:06:46');
INSERT INTO `tbl_amizade` VALUES(12, 58, 2, 3, '2013-11-18 13:13:13');
INSERT INTO `tbl_amizade` VALUES(13, 58, 2, 3, '2013-11-18 13:13:24');
INSERT INTO `tbl_amizade` VALUES(14, 58, 65, 0, '2013-11-18 13:26:12');
INSERT INTO `tbl_amizade` VALUES(15, 58, 64, 3, '2013-11-18 13:27:45');
INSERT INTO `tbl_amizade` VALUES(16, 58, 59, 0, '2013-11-18 13:28:16');
INSERT INTO `tbl_amizade` VALUES(17, 58, 61, 0, '2013-11-18 13:28:25');
INSERT INTO `tbl_amizade` VALUES(18, 2, 69, 1, '2013-11-18 15:03:28');
INSERT INTO `tbl_amizade` VALUES(19, 78, 2, 3, '2013-11-18 16:52:50');
INSERT INTO `tbl_amizade` VALUES(20, 2, 77, 0, '2013-11-18 17:06:04');
INSERT INTO `tbl_amizade` VALUES(21, 2, 77, 0, '2013-11-18 17:06:12');
INSERT INTO `tbl_amizade` VALUES(22, 2, 62, 1, '2013-11-18 17:06:54');
INSERT INTO `tbl_amizade` VALUES(23, 2, 62, 1, '2013-11-18 17:07:52');
INSERT INTO `tbl_amizade` VALUES(24, 2, 13, 0, '2013-11-18 17:09:29');
INSERT INTO `tbl_amizade` VALUES(25, 2, 44, 0, '2013-11-18 17:10:06');
INSERT INTO `tbl_amizade` VALUES(26, 2, 68, 0, '2013-11-18 17:17:14');
INSERT INTO `tbl_amizade` VALUES(27, 2, 52, 0, '2013-11-18 17:17:48');
INSERT INTO `tbl_amizade` VALUES(28, 2, 70, 0, '2013-11-18 17:21:05');
INSERT INTO `tbl_amizade` VALUES(29, 2, 70, 0, '2013-11-18 17:24:36');
INSERT INTO `tbl_amizade` VALUES(30, 2, 47, 0, '2013-11-18 17:26:15');
INSERT INTO `tbl_amizade` VALUES(31, 2, 50, 0, '2013-11-18 17:26:43');
INSERT INTO `tbl_amizade` VALUES(32, 2, 72, 0, '2013-11-18 17:28:17');
INSERT INTO `tbl_amizade` VALUES(33, 64, 61, 0, '2013-11-18 17:32:37');
INSERT INTO `tbl_amizade` VALUES(34, 2, 71, 0, '2013-11-19 10:32:32');
INSERT INTO `tbl_amizade` VALUES(35, 2, 76, 3, '2013-11-19 10:32:55');
INSERT INTO `tbl_amizade` VALUES(36, 79, 73, 1, '2013-11-19 16:49:41');
INSERT INTO `tbl_amizade` VALUES(37, 79, 2, 1, '2013-11-19 16:49:54');
INSERT INTO `tbl_amizade` VALUES(38, 58, 60, 0, '2013-11-20 05:36:03');
INSERT INTO `tbl_amizade` VALUES(39, 58, 5, 0, '2013-11-20 05:38:02');
INSERT INTO `tbl_amizade` VALUES(40, 2, 65, 1, '2013-11-20 10:16:08');
INSERT INTO `tbl_amizade` VALUES(41, 2, 7, 1, '2013-11-20 10:33:16');
INSERT INTO `tbl_amizade` VALUES(42, 2, 42, 0, '2013-11-21 13:44:42');
INSERT INTO `tbl_amizade` VALUES(43, 58, 79, 1, '2013-11-21 17:50:26');
INSERT INTO `tbl_amizade` VALUES(44, 79, 82, 0, '2013-11-22 03:39:17');

