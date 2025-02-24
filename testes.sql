-- View1  mostra os jogadores de cada equipa na edição 1
SELECT * FROM vJogadoresDaEquipaEdicao1;
-- View2  mostra os jogadores de cada equipa na edição 2
SELECT * FROM vJogadoresDaEquipaEdicao2;
-- View3  mostra as perguntas e respetivas respostas    
SELECT * FROM vQuestaoResposta;
-- View4 Total de respostas por categoria
SELECT * FROM Respostas_Por_Categoria_View;
-- View5 Total de respostas por estado
SELECT * FROM Respostas_Por_Estado_View;

-- sp1
CALL sp_criar_sessao(2, '29382-23882-123923', '2023-06-06 10:30', '2023-06-06 12:33', 'Tablet', @token);
SELECT @token AS 'Token Gerado';

-- sp2
CALL sp_adicionar_questao(10,'Portugues','2022-03-03', '2023-03-1', 'Questao de teste do procedure',3);
select * from questao where Texto_da_pergunta ='Questao de teste do procedure';

-- sp3
CALL sp_registar_resposta(4,3,13);
select * from sessao_resposta where rating = 4 and id_sessao_questao=3 and id_resposta=13;

-- sp4

CALL sp_remover_sessao(13, TRUE);
CALL sp_remover_sessao(13, FALSE);
select * from sessao;

-- sp5
CALL sp_clonar_sessao(5);
select * from sessao where id_sessao=5;

-- sp6 cria um jogador
CALL sp_criar_jogador(7,'Mbappe');
CALL sp_criar_jogador(10,'Lionel Messi');
CALL sp_criar_jogador(11,'Neymar');
CALL sp_criar_jogador(14,'Pele');
CALL sp_criar_jogador(24,'Rice');
CALL sp_criar_jogador(19,'Maradona');
select*from jogador where id_jogador between 95 and 100;

-- sp7 cria uma equipa
CALL sp_criar_equipa('Vitoria de Setubal');
select * from equipa where id_equipa=24;
select * from equipa_edicao where id_equipa_edicao between 47 and 48;

-- sp8 adiciona um jogador a uma equipa e remove-o da anterior se tiver

-- executá los individualmente ou não funcionara !
CALL sp_transferencia(30,24); -- so funcionara para edicao 2
CALL sp_transferencia(95,47);
CALL sp_transferencia(95,48);
CALL sp_transferencia(96,47);
CALL sp_transferencia(96,48);
CALL sp_transferencia(97,47);
CALL sp_transferencia(97,48);
CALL sp_transferencia(98,47);
CALL sp_transferencia(98,48);
CALL sp_transferencia(99,47);
CALL sp_transferencia(99,48);
CALL sp_transferencia(100,47);
CALL sp_transferencia(100,48);

select * from vJogadoresDaEquipaEdicao1 ;
select * from vJogadoresDaEquipaEdicao2 ;

-- sp9 retira um jogador da database

CALL sp_reformar_jogador(95);
select * from jogador where id_jogador=95;

-- sp10 cria um jogo

CALL sp_criar_jogo(100,'2023-04-20','10-3', 47,17,'Bonfim',1);
select * from jogo;

-- f1 conta quantos jogadores uma equipa tem
select ContarJogadoresEquipa(1); -- real madrid edicao 1
select ContarJogadoresEquipa(5); -- manchester united edicao 1
select ContarJogadoresEquipa(16); -- chelsea edicao 2

-- f2 conta que equipa foi campea nessa edicao
select VerificarEquipeCampea(1); -- primeira edicao
select VerificarEquipeCampea(2); -- segunda edicao






