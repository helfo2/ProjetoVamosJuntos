-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

DROP DATABASE IF EXISTS vamosjuntos;
CREATE DATABASE IF NOT EXISTS vamosjuntos;

USE vamosjuntos;

-- TABELA: tbl_usuario
DROP TABLE IF EXISTS tbl_usuario;
CREATE TABLE IF NOT EXISTS tbl_usuario (
idusuario INT UNSIGNED AUTO_INCREMENT NOT NULL,
nome VARCHAR(80) NOT NULL,
CPF CHAR(14) NOT NULL,
sexo CHAR(1) NOT NULL,
tipo VARCHAR(10) NOT NULL,
idade TINYINT NULL,
dt_nascimento DATE NOT NULL,
dt_cadastro DATE NULL,
ultimo_acesso DATETIME NULL,
logradouro VARCHAR(60) NOT NULL,
complemento VARCHAR(30) NOT NULL,
cidade VARCHAR(50) NOT NULL,
bairro VARCHAR(50) NOT NULL,
CEP VARCHAR(10) NOT NULL,
UF CHAR(2) NOT NULL,
restricao CHAR(3) NOT NULL,
login VARCHAR(20) NOT NULL,
senha VARCHAR(20) NOT NULL,
UNIQUE KEY(idusuario),
UNIQUE KEY(CPF),
UNIQUE KEY(login),
PRIMARY KEY(idusuario)
);

-- TABELA: tbl_admin
DROP TABLE IF EXISTS tbl_admin;
CREATE TABLE IF NOT EXISTS tbl_admin(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
login VARCHAR(255) NOT NULL,
senha VARCHAR(255) NOT NULL,
termos TEXT NOT NULL,
home TEXT NOT NULL,
PRIMARY KEY(id)
);

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
);

-- TABELA: tbl_tel_usuario
DROP TABLE IF EXISTS tbl_tel_usuario; 
CREATE TABLE IF NOT EXISTS tbl_tel_usuario (
idtel_usuario INT UNSIGNED AUTO_INCREMENT NOT NULL,
telefone VARCHAR(15) NOT NULL,
usuario_idusuario INT UNSIGNED NOT NULL,
primary key (idtel_usuario),
FOREIGN KEY(usuario_idusuario) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_email_usuario
DROP TABLE IF EXISTS tbl_email_usuario; 
CREATE TABLE IF NOT EXISTS tbl_email_usuario(
idemail_usuario INT UNSIGNED AUTO_INCREMENT NOT NULL,
email VARCHAR(40) NOT NULL,
usuario_idusuario INT UNSIGNED NOT NULL,
PRIMARY KEY (idemail_usuario),
FOREIGN KEY(usuario_idusuario) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_imagens
DROP TABLE IF EXISTS tbl_imagens;
CREATE TABLE IF NOT EXISTS tbl_imagens (
id INTEGER UNSIGNED AUTO_INCREMENT NOT NULL,
nome VARCHAR(70) NOT NULL,
imagem LONGBLOB NOT NULL,
usuario_id_usuario INTEGER UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(usuario_id_usuario) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_categoria_veiculo
DROP TABLE IF EXISTS tbl_categoria_veiculo;
CREATE TABLE IF NOT EXISTS tbl_categoria_veiculo(
idcategoria INT UNSIGNED AUTO_INCREMENT NOT NULL,
descricao VARCHAR(80) NOT NULL,
PRIMARY KEY(idcategoria)
);

-- TABELA: tbl_veiculo
DROP TABLE IF EXISTS tbl_veiculo;
CREATE TABLE IF NOT EXISTS tbl_veiculo(
placa CHAR(8) NOT NULL,
cor VARCHAR(15) NOT NULL,
modelo VARCHAR(50) NOT NULL,
marca VARCHAR(50) NOT NULL,
ano SMALLINT UNSIGNED NOT NULL,
lugares SMALLINT UNSIGNED NOT NULL,
categoria_idcategoria INT UNSIGNED NOT NULL,
usuario_idusuario INT UNSIGNED NOT NULL,
PRIMARY KEY(placa),
FOREIGN KEY(categoria_idcategoria) REFERENCES tbl_categoria_veiculo(idcategoria),
FOREIGN KEY(usuario_idusuario) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_postagens
DROP TABLE IF EXISTS tbl_postagens;
CREATE TABLE IF NOT EXISTS tbl_postagens (
cod INT UNSIGNED AUTO_INCREMENT NOT NULL,
data_hora DATETIME NOT NULL,
post TEXT NULL,
usuario_idusuario INT UNSIGNED NOT NULL,
PRIMARY KEY (cod),
FOREIGN KEY(usuario_idusuario) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_mensagens
DROP TABLE IF EXISTS tbl_mensagens;
CREATE TABLE IF NOT EXISTS tbl_mensagens (
cod INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_de INT UNSIGNED NOT NULL,
id_para INT UNSIGNED NOT NULL,
mensagem VARCHAR(255) NOT NULL,
data_hora DATETIME NOT NULL,
PRIMARY KEY(cod),
FOREIGN KEY(id_de) REFERENCES tbl_usuario(idusuario),
FOREIGN KEY(id_para) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_amizade
DROP TABLE IF EXISTS tbl_amizade;
CREATE TABLE IF NOT EXISTS tbl_amizade (
cod_amizade INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_de INT UNSIGNED NOT NULL,
id_para INT UNSIGNED NOT NULL,
status INT UNSIGNED NOT NULL,
data_hora DATETIME NOT NULL,
PRIMARY KEY(cod_amizade),
FOREIGN KEY(id_de) REFERENCES tbl_usuario(idusuario),
FOREIGN KEY(id_para) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_carona
DROP TABLE IF EXISTS tbl_carona;
CREATE TABLE IF NOT EXISTS tbl_carona (
cod INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_de INT UNSIGNED NOT NULL,
onde_vai VARCHAR(255) NOT NULL,
onde_sai VARCHAR(255) NOT NULL,
carro VARCHAR(255) NOT NULL,
quando TIME NULL,
dias VARCHAR(100) NULL,
qtd_pessoas TINYINT UNSIGNED NOT NULL,
descricao TEXT NOT NULL,
preco VARCHAR(10) NULL,
PRIMARY KEY(cod),
FOREIGN KEY(id_de) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_carona_quem_vai
DROP TABLE IF EXISTS tbl_carona_quem_vai;
CREATE TABLE IF NOT EXISTS tbl_carona_quem_vai (
id_relacao INT UNSIGNED NOT NULL AUTO_INCREMENT,
cod_carona INT UNSIGNED NOT NULL,
id_criador INT UNSIGNED NOT NULL,
id_participante INT UNSIGNED NOT NULL,
status TINYINT UNSIGNED NOT NULL,
avaliacao DOUBLE NULL,
PRIMARY KEY(id_relacao),
FOREIGN KEY(cod_carona) REFERENCES tbl_carona(cod),
FOREIGN KEY(id_criador) REFERENCES tbl_usuario(idusuario),
FOREIGN KEY(id_participante) REFERENCES tbl_usuario(idusuario)
);

-- TABELA: tbl_comentario_carona
DROP TABLE IF EXISTS tbl_comentario_carona;
CREATE TABLE IF NOT EXISTS tbl_comentario_carona (
cod INT UNSIGNED NOT NULL AUTO_INCREMENT,
cod_carona INT UNSIGNED NOT NULL,
cod_post INT UNSIGNED NOT NULL,
data_hora DATETIME NOT NULL,
PRIMARY KEY(cod),
FOREIGN KEY(cod_carona) REFERENCES tbl_carona(cod),
FOREIGN KEY(cod_post) REFERENCES tbl_usuario(idusuario)
);