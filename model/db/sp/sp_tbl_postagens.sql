-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_POSTAGENS

-- STORAGE PROCEDURE 1: SPInserirPostagem
DROP PROCEDURE IF EXISTS SPInserirPostagem;
DELIMITER //
CREATE PROCEDURE SPInserirPostagem(IN xcod INT UNSIGNED, IN xdata_hora DATETIME, IN xpost TEXT, IN xusuario_idusuario INT UNSIGNED, IN xtipo CHAR) BEGIN 
	INSERT INTO tbl_postagens VALUES (xcod, xdata_hora, xpost, xusuario_idusuario, xtipo);
END //
DELIMITER ;

-- Teste
CALL SPInserirPostagem(NULL, NOW(), 'kole2', 1);


-- STORAGE PROCEDURE 2: SPAlterarPostagem
DROP PROCEDURE IF EXISTS SPAlterarPostagem;
DELIMITER //
CREATE PROCEDURE SPAlterarPostagem(IN xcod INT UNSIGNED, IN xpost TEXT) BEGIN 
	UPDATE tbl_postagens SET post = xpost WHERE cod = xcod;
END //
DELIMITER ;

-- Teste
CALL SPAlterarPostagem(2, 'testetesteteste');


-- STORAGE PROCEDURE 3: SPDeletarPostagem
DROP PROCEDURE IF EXISTS SPDeletarPostagem;
DELIMITER //
CREATE PROCEDURE SPDeletarPostagem(IN xcod INT UNSIGNED) BEGIN 
	DELETE FROM tbl_postagens WHERE cod = xcod;
END //
DELIMITER ;

-- Teste
CALL SPDeletarPostagem(1);