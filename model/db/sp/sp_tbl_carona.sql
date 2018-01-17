-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_CARONA


-- STORAGE PROCEDURE 1: SPInserirCarona
DROP PROCEDURE IF EXISTS SPInserirCarona;
DELIMITER //
CREATE PROCEDURE SPInserirCarona(
IN xcod INT(10) UNSIGNED,
IN xid_de INT(10) UNSIGNED,
IN xcarro CHAR(8),
IN xonde_sai VARCHAR(255),
IN xonde_vai VARCHAR(255),
IN xquando DATE,
IN xqtd_pessoas INT(10) UNSIGNED,
IN xdescricao TEXT
) BEGIN 
	INSERT INTO tbl_carona VALUES (xcod, xid_de, xcarro, xonde_sai, xonde_vai, xquando, xqtd_pessoas, xdescricao);
END //
DELIMITER ;

-- Teste
CALL SPInserirCarona(NULL, 2, 'hbm1122', 'Daqui', 'Pra la', NOW(), 2, 'Preciso ir');


-- STORAGE PROCEDURE 2: SPAlterarCarona
DROP PROCEDURE IF EXISTS SPAlterarCarona;
DELIMITER //
CREATE PROCEDURE SPAlterarCarona(
IN xcod INT(10) UNSIGNED,
IN xonde_sai VARCHAR(255),
IN xonde_vai VARCHAR(255),
IN xcarro CHAR(8),
IN xquando DATE,
IN xqtd_pessoas INT(10) UNSIGNED,
IN xdescricao TEXT
) BEGIN 
	UPDATE tbl_carona SET onde_sai = xonde_sai, onde_vai = xonde_vai, carro = xcarro, quando = xquando, qtd_pessoas = xqtd_pessoas, descricao = xdescricao WHERE cod = xcod;
END //
DELIMITER ;

-- Teste
CALL SPAlterarCarona(1, 'Dali', 'Pra la', 'hbm1122', NOW(), 3, 'Teste altera');


-- STORAGE PROCEDURE 3: SPDeletarCarona
DROP PROCEDURE IF EXISTS SPDeletarCarona;
DELIMITER //
CREATE PROCEDURE SPDeletarCarona(IN xcod INT(10) UNSIGNED) BEGIN 
	DELETE FROM tbl_carona WHERE cod = xcod;
END //
DELIMITER ;

-- Teste
CALL SPDeletarCarona(1);