-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_USUARIO

-- STORAGE PROCEDURE 1: SPInserirUsuario
DROP PROCEDURE IF EXISTS SPInserirUsuario;
DELIMITER //
CREATE PROCEDURE SPInserirUsuario (
IN xidusuario INT UNSIGNED, 
IN xnome VARCHAR(80),
IN xCPF CHAR(14),
IN xsexo CHAR(1),
IN xtipo VARCHAR(10),
IN xidade TINYINT,
IN xdt_nascimento DATE,
IN xdt_cadastro DATE,
IN xultimo_acesso DATETIME,
IN xlogradouro VARCHAR(60),
IN xcomplemento VARCHAR(30),
IN xcidade VARCHAR(50),
IN xbairro VARCHAR(50),
IN xCEP VARCHAR(10),
IN xUF CHAR(2),
IN xrestricao CHAR(3),
IN xlogin VARCHAR(20),
IN xsenha VARCHAR(20)
) BEGIN
	INSERT INTO tbl_usuario VALUES (xidusuario, xnome, xCPF, xsexo, xtipo, xidade, xdt_nascimento, xdt_cadastro, xultimo_acesso, xlogradouro, xcomplemento, xcidade, xbairro, xCEP, xUF, xrestricao, xlogin, xsenha);
END //
DELIMITER ;

-- Teste
CALL SPInserirUsuario (NULL, 'Felipe Fernandes', '12498685642', 'M', 'Passageiro', '17', '1996-08-05', NOW(), NOW(),'casa', 'Rua Conceição 25', 'Belo Horizonte', 'Milionarios', '30620300', 'MG','usu', 'FelipeF', '12345');


-- STORAGE PROCEDURE 2: SPAlterarUsuarioGeral
DROP PROCEDURE IF EXISTS SPAlterarUsuarioGeral;
DELIMITER //
CREATE PROCEDURE SPAlterarUsuarioGeral (
IN xidusuario INT UNSIGNED, 
IN xnome VARCHAR(80),
IN xtipo VARCHAR(10),
IN xlogradouro VARCHAR(60),
IN xcomplemento VARCHAR(30),
IN xcidade VARCHAR(50),
IN xbairro VARCHAR(50),
IN xCEP VARCHAR(10),
IN xUF CHAR(2)
) BEGIN
	UPDATE tbl_usuario SET nome = xnome, tipo = xtipo, logradouro = xlogradouro, complemento = xcomplemento, cidade = xcidade, bairro = xbairro, CEP = xCEP, UF = xUF WHERE idusuario = xidusuario;
END //
DELIMITER ;

-- Teste
CALL SPAlterarUsuarioGeral (1, 'Felipe Fernandes', 'Passageiro', 'Rua Conceição 25', '', 'Belo Horizonte', 'Milionarios', '30620300', 'MG');


-- STORAGE PROCEDURE 3: SPAlterarUsuarioSenha
DROP PROCEDURE IF EXISTS SPAlterarUsuarioSenha;
DELIMITER //
CREATE PROCEDURE SPAlterarUsuarioSenha (
IN xidusuario INT UNSIGNED, 
IN xsenha VARCHAR(20)
) BEGIN
	UPDATE tbl_usuario SET senha = xsenha WHERE idusuario = xidusuario;
END //
DELIMITER ;

-- Teste
CALL SPAlterarUsuarioSenha (1, 'kole');


-- STORAGE PROCEDURE 4: SPAlterarUsuarioUltimoAcesso
DROP PROCEDURE IF EXISTS SPAlterarUsuarioUltimoAcesso;
DELIMITER //
CREATE PROCEDURE SPAlterarUsuarioUltimoAcesso (IN xidusuario INT UNSIGNED) BEGIN
	UPDATE tbl_usuario SET ultimo_acesso = NOW() WHERE idusuario = xidusuario;
END //
DELIMITER ;

-- Teste
CALL SPAlterarUsuarioUltimoAcesso (1);


-- STORAGE PROCEDURE 4: SPDeletarUsuario
DROP PROCEDURE IF EXISTS SPDeletarUsuario;
DELIMITER //
CREATE PROCEDURE SPDeletarUsuario (IN xidusuario INT UNSIGNED) BEGIN
	DELETE FROM tbl_usuario WHERE idusuario = xidusuario;
END //
DELIMITER ;

-- Teste
CALL SPDeletarUsuario(1);