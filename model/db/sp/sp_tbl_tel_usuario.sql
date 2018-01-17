-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_TEL_USUARIO

-- STORAGE PROCEDURE 1: SPInserirTelUsuario
DROP PROCEDURE IF EXISTS SPInserirTelUsuario;
DELIMITER //
CREATE PROCEDURE SPInserirTelUsuario(IN xidtel_usuario INT UNSIGNED, IN xtelefone VARCHAR(15), IN xusuario_idusuario INT UNSIGNED) BEGIN 
	INSERT INTO tbl_tel_usuario VALUES (xidtel_usuario, xtelefone, xusuario_idusuario);
END //
DELIMITER ;

-- Teste
CALL SPInserirTelUsuario(NULL, '12345678', 5);


-- STORAGE PROCEDURE 2: SPAlterarTelUsuario
DROP PROCEDURE IF EXISTS SPAlterarTelUsuario;
DELIMITER //
CREATE PROCEDURE SPAlterarTelUsuario(IN xidtel_usuario INT UNSIGNED, IN xtelefone VARCHAR(15)) BEGIN 
	UPDATE tbl_tel_usuario SET telefone = xtelefone WHERE idtel_usuario = xidtel_usuario;
END //
DELIMITER ;

-- Teste
CALL SPAlterarTelUsuario(1, '87654321');


-- STORAGE PROCEDURE 3: SPDeletarTelUsuario
DROP PROCEDURE IF EXISTS SPDeletarTelUsuario;
DELIMITER //
CREATE PROCEDURE SPDeletarTelUsuario(IN xidtel_usuario INT UNSIGNED) BEGIN 
	DELETE FROM tbl_tel_usuario WHERE idtel_usuario = xidtel_usuario;
END //
DELIMITER ;

-- Teste
CALL SPDeletarTelUsuario(1);