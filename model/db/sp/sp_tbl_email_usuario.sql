-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_EMAIL_USUARIO

-- STORAGE PROCEDURE 1: SPInserirEmailUsuario
DROP PROCEDURE IF EXISTS SPInserirEmailUsuario;
DELIMITER //
CREATE PROCEDURE SPInserirEmailUsuario(IN xidemail_usuario INT UNSIGNED, IN xemail VARCHAR(40), xusuario_idusuario INT UNSIGNED) BEGIN 
	INSERT INTO tbl_email_usuario VALUES (xidemail_usuario, xemail, xusuario_idusuario);
END //
DELIMITER ;

-- Teste
CALL SPInserirEmailUsuario(NULL, 'henrique@', 4);


-- STORAGE PROCEDURE 2: SPAlterarEmailUsuario
DROP PROCEDURE IF EXISTS SPAlterarEmailUsuario;
DELIMITER //
CREATE PROCEDURE SPAlterarEmailUsuario(IN xidemail_usuario INT UNSIGNED, IN xemail VARCHAR(40)) BEGIN 
	UPDATE tbl_email_usuario SET email = xemail WHERE idemail_usuario = xidemail_usuario;
END //
DELIMITER ;

-- Teste
CALL SPAlterarEmailUsuario(2, 'henrique2@');


-- STORAGE PROCEDURE 3: SPDeletarEmailUsuario
DROP PROCEDURE IF EXISTS SPDeletarEmailUsuario;
DELIMITER //
CREATE PROCEDURE SPDeletarEmailUsuario(IN xidemail_usuario INT UNSIGNED) BEGIN 
	DELETE FROM tbl_email_usuario WHERE idemail_usuario = xidemail_usuario;
END //
DELIMITER ;

-- Teste
CALL SPDeletarEmailUsuario(1);