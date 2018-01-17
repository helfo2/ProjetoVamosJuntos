-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_CATEGORIA_VEICULO


-- STORAGE PROCEDURE 1: SPInserirCategoriaVeiculo
DROP PROCEDURE IF EXISTS SPInserirCategoriaVeiculo;
DELIMITER //
CREATE PROCEDURE SPInserirCategoriaVeiculo(IN xidcategoria INT UNSIGNED, IN xdescricao VARCHAR(80)) BEGIN 
	INSERT INTO tbl_categoria_veiculo VALUES (xidcategoria, xdescricao);
END //
DELIMITER ;

-- Teste
CALL SPInserirCategoriaVeiculo(NULL, 'Categoria A');


-- STORAGE PROCEDURE 2: SPAlterarCategoriaVeiculo
DROP PROCEDURE IF EXISTS SPAlterarCategoriaVeiculo;
DELIMITER //
CREATE PROCEDURE SPAlterarCategoriaVeiculo(IN xidcategoria INT UNSIGNED, IN xdescricao VARCHAR(80)) BEGIN 
	UPDATE tbl_categoria_veiculo SET descricao = xdescricao WHERE idcategoria = xidcategoria;
END //
DELIMITER ;

-- Teste
CALL SPAlterarCategoriaVeiculo(2, 'teste');


-- STORAGE PROCEDURE 3: SPDeletarCategoriaVeiculo
DROP PROCEDURE IF EXISTS SPDeletarCategoriaVeiculo;
DELIMITER //
CREATE PROCEDURE SPDeletarCategoriaVeiculo(IN xidcategoria INT UNSIGNED) BEGIN 
	DELETE FROM tbl_categoria_veiculo WHERE idcategoria = xidcategoria;
END //
DELIMITER ;

-- Teste
CALL SPDeletarCategoriaVeiculo(2);