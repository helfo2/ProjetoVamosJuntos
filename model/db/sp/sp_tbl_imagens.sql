-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_IMAGENS

-- STORAGE PROCEDURE 1: SPInserirImagem
DROP PROCEDURE IF EXISTS SPInserirImagem;
DELIMITER //
CREATE PROCEDURE SPInserirImagem(IN xid INTEGER UNSIGNED, IN xnome VARCHAR(70), IN ximagem LONGBLOB, xusuario_idusuario INT UNSIGNED) BEGIN 
	INSERT INTO tbl_imagens VALUES (xid, xnome, ximagem, xusuario_idusuario);
END //
DELIMITER ;

-- Teste
/* CALL SPInserirImagem(); */

-- STORAGE PROCEDURE 2: SPAlterarImagem
DROP PROCEDURE IF EXISTS SPAlterarImagem;
DELIMITER //
CREATE PROCEDURE SPAlterarImagem(IN xid INTEGER UNSIGNED, IN xnome VARCHAR(70), IN ximagem LONGBLOB) BEGIN 
	UPDATE tbl_imagens SET nome = xnome, imagem = ximagem WHERE id = xid;
END //
DELIMITER ;

-- Teste
/* CALL SPAlterarImagem(); */

-- STORAGE PROCEDURE 3: SPDeletarImagem
DROP PROCEDURE IF EXISTS SPDeletarImagem;
DELIMITER //
CREATE PROCEDURE SPDeletarImagem(IN xid INTEGER UNSIGNED) BEGIN 
	DELETE FROM tbl_imagens WHERE id = xid;
END //
DELIMITER ;

-- Teste
/* CALL SPDeletarImagem(); */