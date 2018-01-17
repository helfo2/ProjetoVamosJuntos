-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_VEICULO


-- STORAGE PROCEDURE 1: SPInserirVeiculo
DROP PROCEDURE IF EXISTS SPInserirVeiculo;
DELIMITER //
CREATE PROCEDURE SPInserirVeiculo(
IN xplaca CHAR(8),
IN xcor VARCHAR(15),
IN xmodelo VARCHAR(50),
IN xmarca VARCHAR(50),
IN xano SMALLINT UNSIGNED,
IN xlugares SMALLINT UNSIGNED,
IN xcategoria_idcategoria INT UNSIGNED,
IN xusuario_idusuario INT UNSIGNED) BEGIN 
	INSERT INTO tbl_veiculo VALUES (xplaca, xcor, xmodelo, xmarca, xano, xlugares, xcategoria_idcategoria, xusuario_idusuario);
END //
DELIMITER ;

-- Teste
CALL SPInserirVeiculo('JVV2101', 'Verde', 'Vectra', 'Chevrolet', '2001', '5', 5, 1);


-- STORAGE PROCEDURE 2: SPAlterarVeiculo
DROP PROCEDURE IF EXISTS SPAlterarVeiculo;
DELIMITER //
CREATE PROCEDURE SPAlterarVeiculo(
IN xplaca CHAR(8),
IN xcor VARCHAR(15),
IN xmodelo VARCHAR(50),
IN xmarca VARCHAR(50),
IN xano SMALLINT UNSIGNED,
IN xlugares SMALLINT UNSIGNED) BEGIN 
	UPDATE tbl_veiculo SET cor = xcor, modelo = xmodelo, marca = xmarca, ano = xano, lugares = xlugares WHERE placa = xplaca;
END //
DELIMITER ;

-- Teste
CALL SPAlterarVeiculo('JVV2101', 'Azul', 'Vectra', 'Chevrolet', '2001', '5');


-- STORAGE PROCEDURE 3: SPDeletarVeiculo
DROP PROCEDURE IF EXISTS SPDeletarVeiculo;
DELIMITER //
CREATE PROCEDURE SPDeletarVeiculo(IN xplaca CHAR(8)) BEGIN 
	DELETE FROM tbl_veiculo WHERE placa = xplaca;
END //
DELIMITER ;

-- Teste
CALL SPDeletarVeiculo('JVV2101');