-- Views
-- View1  mostra os jogadores de cada equipa na edição 1
create view vJogadoresDaEquipaEdicao1 as
SELECT e.nome as'Nome Equipa',j.numero as 'Nº da Camisola' ,j.nome as 'Nome do Jogador', j.id_jogador as 'Id Jogador'
    FROM Equipa_Edicao ee  LEFT JOIN Jogador_Equipa_Edicao jee ON ee.id_equipa_edicao = jee.id_equipa_edicao
    LEFT JOIN Equipa e ON e.id_equipa = ee.id_equipa
	LEFT JOIN Jogador j  ON j.id_jogador = jee.id_jogador
    WHERE ee.id_edicao = 1;

-- View2  mostra os jogadores de cada equipa na edição 2    
create view vJogadoresDaEquipaEdicao2 as
SELECT e.nome as'Nome Equipa',j.numero as 'Nº da Camisola' ,j.nome as 'Nome do Jogador', j.id_jogador as 'Id Jogador'
    FROM Equipa_Edicao ee  LEFT JOIN Jogador_Equipa_Edicao jee ON ee.id_equipa_edicao = jee.id_equipa_edicao
    LEFT JOIN Equipa e ON e.id_equipa = ee.id_equipa
	LEFT JOIN Jogador j  ON j.id_jogador = jee.id_jogador
    WHERE ee.id_edicao = 2;
    


-- View3  mostra as perguntas e respetivas respostas
create view vQuestaoResposta as
Select q.Texto_da_pergunta as'Pergunta',r.Texto_da_resposta as 'Resposta'
from Questao q left join sessao_questao sq  on q.id_questao = sq.id_questao
left join sessao_resposta sr on sq.id_sessao_questao = sr.id_sessao_questao
left join Resposta r on sr.id_resposta = r.id_resposta;

-- View4 Total de respostas por categoria

CREATE VIEW Respostas_Por_Categoria_View AS
SELECT c.Nome AS Categoria, COUNT(*) AS 'Total Respostas'
FROM Resposta r
left join sessao_resposta sr on sr.id_resposta = r.id_resposta
left join sessao_questao sq  on sq.id_sessao_questao = sr.id_sessao_questao
left JOIN Questao q ON sq.id_questao = q.id_questao
left JOIN Categoria c ON q.id_categoria = c.id_categoria
GROUP BY c.Nome;

-- View5 Total de respostas por estado
CREATE VIEW Respostas_Por_Estado_View AS
SELECT re.Estado, COUNT(r.id_resposta) AS Total_Respostas
FROM Resposta_Estado re
LEFT JOIN Resposta r ON re.id_estado = r.id_estado
GROUP BY re.Estado;



-- Procedures

-- SP1
-- criar uma nova sessao

DELIMITER //
CREATE PROCEDURE sp_criar_sessao(p_id_utilizador INT,p_ip VARCHAR(100),p_data_hora_inicio DATETIME,p_data_hora_fim DATETIME,p_tipo_dispositivo VARCHAR(100),
  OUT p_token VARCHAR(100)
)
BEGIN
  SET p_token = UUID();
  INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
  VALUES (p_token, p_ip, p_data_hora_inicio, p_data_hora_fim, p_tipo_dispositivo, p_id_utilizador);
  SELECT p_token AS 'Token Gerado';
END //
DELIMITER ;

-- SP2 
-- adicionar_ questao

DELIMITER //
CREATE PROCEDURE sp_adicionar_questao(p_id_sessao INT,p_Idioma VARCHAR(100),p_Data_de_entrada DATE, p_Data_da_ultima_atualizacao DATE, p_Texto_da_pergunta VARCHAR(10000), p_id_categoria INT
)
BEGIN
  INSERT INTO Questao (Idioma, Data_de_entrada,Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
  VALUES (p_Idioma, p_Data_de_entrada, p_Data_da_ultima_atualizacao, p_Texto_da_pergunta, p_id_categoria);
  
  SET @last_insert_id := LAST_INSERT_ID();
  
  INSERT INTO sessao_questao(id_sessao,id_questao)
  VALUES (p_id_sessao,@last_insert_id);
END //
DELIMITER ;

-- SP3
-- registar resposta

DELIMITER //
CREATE PROCEDURE sp_registar_resposta(p_rating INT, p_id_sessao_questao INT,p_id_resposta  INT)
BEGIN
  INSERT INTO Sessao_Resposta (Rating, id_sessao_questao,id_resposta)
  VALUES (p_rating, p_id_sessao_questao, p_id_resposta);
END //
DELIMITER ;

-- SP4
-- remover sessao

DELIMITER //
CREATE PROCEDURE sp_remover_sessao(p_id_sessao INT,p_force BOOLEAN
)
BEGIN
    DECLARE questoes_associadas INT;
    SELECT COUNT(*) INTO questoes_associadas
    FROM sessao_questao
    WHERE id_sessao = p_id_sessao;

    CASE
        WHEN questoes_associadas = 0 THEN
            DELETE FROM Sessao WHERE id_sessao = p_id_sessao;
        WHEN p_force = TRUE THEN
            DELETE FROM Sessao_Resposta WHERE id_sessao_questao IN (
                SELECT id_sessao_questao FROM Sessao_Questao WHERE id_sessao = p_id_sessao
            );
            DELETE FROM Sessao_Questao WHERE id_sessao = p_id_sessao;
            DELETE FROM Sessao WHERE id_sessao = p_id_sessao;
        ELSE
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Erro.';
    END CASE;
END //
DELIMITER ;

-- SP5
-- clonar sessao

DELIMITER //
CREATE PROCEDURE sp_clonar_sessao(p_id_sessao INT)
BEGIN
  INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
  SELECT concat('TEMP ',Token), Ip, CURRENT_TIMESTAMP(), NULL, Tipo_de_Dispositivo, id_utilizador
  FROM Sessao
  WHERE id_sessao = p_id_sessao;
END //
DELIMITER ;


-- SP6
-- Criar Jogador
DELIMITER //
CREATE PROCEDURE sp_criar_jogador(p_numero INT,p_nome VARCHAR(100))
BEGIN

  INSERT INTO jogador (Numero, Nome)
  Values (p_numero, p_nome);
  
END //
DELIMITER ;

-- SP7
-- Criar Equipa
DELIMITER //
CREATE PROCEDURE sp_criar_equipa(p_Nome VARCHAR(100))
BEGIN
	INSERT INTO equipa (Nome)
	VALUES (p_nome);
    
    SET @last_insert_id := LAST_INSERT_ID();
	
	insert into equipa_edicao(id_edicao,id_equipa)
    values (1,@last_insert_id);
    insert into equipa_edicao(id_edicao,id_equipa)
    values (2,@last_insert_id);
    
  
END //
DELIMITER ;

-- SP8
-- Transferencia
DELIMITER //
CREATE PROCEDURE sp_transferencia(p_id_jogador INT,p_id_equipa_edicao INT)
BEGIN

  DELETE FROM jogador_equipa_edicao
  WHERE id_jogador = p_id_jogador;
  
  INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao)
  Values (p_id_jogador, p_id_equipa_edicao);

  
END //
DELIMITER ;


-- SP9
-- Reformar jogador (Apagar jogador)

DELIMITER //
CREATE PROCEDURE sp_reformar_jogador(p_id_jogador INT)
BEGIN

  DELETE FROM jogador_equipa_edicao
  WHERE id_jogador = p_id_jogador;
  Delete from jogador
  WHERE id_jogador = p_id_jogador;
  
END //
DELIMITER ;


-- SP10
-- Criar Jogo

DELIMITER //
CREATE PROCEDURE sp_criar_jogo(p_id_Homem_do_jogo INT, p_Data DATE, p_resultado VARCHAR(100),p_id_equipa_casa INT,p_id_equipa_fora INT,p_estadio VARCHAR(100),p_id_edicao INT)
BEGIN
  DECLARE equipa_casa_edicao INT;
  DECLARE equipa_fora_edicao INT;

  SELECT id_edicao INTO equipa_casa_edicao
  FROM equipa_edicao
  WHERE id_equipa_edicao = p_id_equipa_casa;
  
  SELECT id_edicao INTO equipa_fora_edicao
  FROM equipa_edicao
  WHERE id_equipa_edicao = p_id_equipa_fora;
  
  IF p_id_edicao = equipa_casa_edicao AND p_id_edicao = equipa_fora_edicao THEN
  
    INSERT INTO jogo (id_Homem_do_jogo, Data, resultado, id_equipa_casa, id_equipa_fora, estadio, id_edicao)
    VALUES (p_id_Homem_do_jogo, p_Data, p_resultado, p_id_equipa_casa, p_id_equipa_fora, p_estadio, p_id_edicao);
  ELSE
    SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Equipas de diferentes edições.';
  END IF;
  
END //
DELIMITER ;



-- Functions
-- Recebe uma equipa_edicao e devolve o numero de jogadores nela

DELIMITER //
CREATE FUNCTION ContarJogadoresEquipa(f_id_edicao_equipa INT)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE count_jogadores INT;
  SELECT COUNT(jee.id_jogador) INTO count_jogadores
  FROM Equipa_Edicao ee
  LEFT JOIN Jogador_Equipa_Edicao jee ON ee.id_equipa_edicao = jee.id_equipa_edicao
  WHERE ee.id_equipa_edicao = f_id_edicao_equipa;
  RETURN count_jogadores;
END //
DELIMITER ;


-- Function2
-- Recebe uma edição e mostra a equipa que foi campea nessa edicao

DELIMITER //
CREATE FUNCTION VerificarEquipeCampea(f_id_edicao INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
  DECLARE equipe_campea VARCHAR(100);

  SELECT e.Nome INTO equipe_campea
  FROM Edicao ed
  LEFT JOIN Equipa_Edicao ee ON ed.id_edicao = ee.id_edicao
  LEFT JOIN Equipa e ON ee.id_equipa = e.id_equipa
  WHERE ed.id_edicao = f_id_edicao AND ed.id_equipa_vencedora=e.id_equipa;
  


  RETURN equipe_campea;
END //
DELIMITER ;


-- Triggers 
	
-- Trigger1
-- Remove o utilizador indicado

DELIMITER //

CREATE PROCEDURE sp_remover_utilizador(p_utilizador INT)
BEGIN
    -- Atualiza a tabela utilizador
    INSERT INTO utilizador_rem (id_utilizador, nome, password, data_de_nascimento, genero, data_de_remocao)
    SELECT id_utilizador, nome, password, data_de_nascimento, genero, NOW() FROM Utilizador WHERE id_utilizador = p_utilizador;
    
    UPDATE Utilizador
    SET Nome = 'NOME', Email = 'email123@gmail.com', Data_de_nascimento = '1900-01-01', genero = '', Nacionalidade = ''
    WHERE id_utilizador = p_utilizador;
END //

DELIMITER ;

-- Trigger2
-- Simula o envio de um email 

DELIMITER //
CREATE TRIGGER envio_email
AFTER INSERT ON Sessao
FOR EACH ROW
BEGIN
    DECLARE recetor_id INT;
    DECLARE email_assunto VARCHAR(255);
    DECLARE email_corpo VARCHAR(1000);

    SET recetor_id = NEW.id_utilizador;
    SET email_assunto = 'Simulação de envio de email';
    SET email_corpo = CONCAT('Token gerado: ', NEW.Token);

    INSERT INTO email_simulacao (recetor, assunto, corpo)
    VALUES (recetor_id, email_assunto, email_corpo);
END //
DELIMITER ;






