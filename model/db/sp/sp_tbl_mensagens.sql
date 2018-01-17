-- COLÉGIO COTEMIG - PROJETO DE CONCLUSÃO DE CURSO
-- EQUIPE:  ON SOLUTIONS
-- BANCO DE DADOS: DB_VAMOSJUNTOS V1.0

-- STORAGE PROCEDURES
-- TABELA: TBL_MENSAGENS

-- STORAGE PROCEDURE 1: SPInserirMensagem
DROP PROCEDURE IF EXISTS SPInserirMensagem;
DELIMITER //
CREATE PROCEDURE SPInserirMensagem(
IN xcod INT UNSIGNED,
IN xid_de INT UNSIGNED,
IN xid_para INT UNSIGNED,
IN xmensagem VARCHAR(255),
IN xdata_hora DATETIME) BEGIN 
	INSERT INTO tbl_mensagens VALUES (xcod, xid_de, xid_para, xmensagem, xdata_hora);
END //
DELIMITER ;

-- Teste
CALL SPInserirMensagem(NULL, 2, 1, 'bom demais', NOW());


-- STORAGE PROCEDURE 2: SPAlterarMensagem
/* Não acho que deva haver a PROCEDURE SPAlterarMensagem() mas, se precisar, está funcionando e é só tirar dos comentários
DROP PROCEDURE IF EXISTS SPAlterarMensagem;
DELIMITER //
CREATE PROCEDURE SPAlterarMensagem(IN xcod INT UNSIGNED, IN xmensagem VARCHAR(255)) BEGIN 
	UPDATE tbl_mensagens SET mensagem = xmensagem WHERE cod = xcod;
END //
DELIMITER ;
*/
-- Teste
/*
CALL SPAlterarMensagem(2, 'testetesteteste');
*/

-- STORAGE PROCEDURE 3: SPDeletarMensagem
DROP PROCEDURE IF EXISTS SPDeletarMensagem;
DELIMITER //
CREATE PROCEDURE SPDeletarMensagem(IN xcod INT UNSIGNED) BEGIN 
	DELETE FROM tbl_mensagens WHERE cod = xcod;
END //
DELIMITER ;

-- Teste
CALL SPDeletarMensagem(1);