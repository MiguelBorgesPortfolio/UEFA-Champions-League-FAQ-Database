-- Q1.1 
-- Listagem de utilizadores do genero masculino
select id_utilizador as 'Id',Nome,Password,Email,Data_de_nascimento as 'Data de Nascimento',Genero,Nacionalidade
from utilizador
where genero = 'Male'
order by Nome, id;

-- Q1.2
-- Listagem de utilizadores da nacionalidade chinesa
select id_utilizador as 'Id',Nome,Password,Email,Data_de_nascimento as 'Data de Nascimento',Genero,Nacionalidade
from utilizador
where Nacionalidade = 'China'
order by Nome, id;

-- Q1.3
-- Listagem de utilizadores da nascidos depois de 1992
select id_utilizador as 'Id',Nome,Password,Email,Data_de_nascimento as 'Data de Nascimento',Genero,Nacionalidade
from utilizador
where year(data_de_nascimento) > 1992;

-- Q2.1
-- Listagem de questões em inglês
select id_questao, Idioma, Data_de_entrada as 'Data de entrada', Data_da_ultima_atualizacao as 'Data da ultima atualizacao',
 Texto_da_Pergunta as 'Questao', id_categoria as 'Categoria' 
from Questao
where Idioma='Ingles';

-- Q2.2
-- Listagem de questões da Categoria Jogadores 
select id_questao, Idioma, Data_de_entrada as 'Data de entrada', Data_da_ultima_atualizacao as 'Data da ultima atualizacao', 
Texto_da_Pergunta as 'Questao', id_categoria as 'Categoria' 
from Questao
where id_categoria='4';

-- 3 Respostas
-- Q3.1
-- Listagem de Respostas com o Id de estado 2
select id_resposta as 'Id Resposta',Tempo_de_Resposta as 'Tempo de Resposta',Data_de_aprovacao as 'Data de aprovação',Texto_da_resposta as 'Texto da resposta'
,id_admin as 'Id Admin',id_estado as 'Id Estado'
from resposta
where id_estado = 2;


-- Q3.2
-- Listagem de Respostas com data de aprovação 2023
select id_resposta as 'Id Resposta',Tempo_de_Resposta as 'Tempo de Resposta',Data_de_aprovacao as 'Data de aprovação',Texto_da_resposta as 'Texto da resposta'
,id_admin as 'Id Admin',id_estado as 'Id Estado'
from resposta
where year(Data_de_aprovacao) = 2023;

-- Q4.1
-- Listagem de sessões com duração maior a 30 minutos
select id_sessao as 'Id Sessão',Token, ip as 'Ip',Data_e_Hora_de_inicio as' Data e hora de inicio',Data_e_Hora_de_fim as' Data e hora de Fim',TIMEDIFF(Data_e_Hora_de_fim, Data_e_Hora_de_inicio) AS Duração, Tipo_de_Dispositivo as 'Tipo de Dispositivo',id_utilizador as 'Id Utilizador'from sessao
where TIMEDIFF(Data_e_Hora_de_fim, Data_e_Hora_de_inicio)> '00:30:00' order by TIMEDIFF(Data_e_Hora_de_fim, Data_e_Hora_de_inicio);

-- Q4.2
-- Listagem de sessões com tipo de dispositivo PC
SELECT id_sessao AS 'Id Sessão', Token, ip AS 'Ip', Data_e_Hora_de_inicio AS 'Data e hora de inicio', Data_e_Hora_de_fim AS 'Data e hora de Fim',
Tipo_de_Dispositivo AS 'Tipo de Dispositivo', id_utilizador AS 'Id Utilizador'
FROM sessao where Tipo_de_Dispositivo = 'PC';
 
 -- Q4.3
-- Listagem, do numero de sessoes de cada utilizador
SELECT  id_utilizador AS 'Id Utilizador' , count(id_sessao) as 'Numero de Sessoes'
From sessao 
group by id_utilizador
Having count(id_sessao) > 1
 ;

-- Q5
-- Listagem de sessões de cada utilizador ordenadas pela duração
select id_sessao as 'Id Sessão',Token, ip as 'Ip',Data_e_Hora_de_inicio as' Data e hora de inicio',Data_e_Hora_de_fim as' Data e hora de Fim',TIMEDIFF(Data_e_Hora_de_fim, Data_e_Hora_de_inicio) AS Duração,
Tipo_de_Dispositivo as 'Tipo de Dispositivo',id_utilizador as 'Id Utilizador'
from sessao
order by Duração
;

-- Q6 
-- Listagem de questões que não foram pesquisadas no ano atual
select id_questao as'Id Questão',idioma,Data_de_entrada as 'Data de Entrada',Data_da_ultima_atualizacao as 'Data da ultima atualização'
, Texto_da_Pergunta as 'Texto da Pergunta',id_categoria as 'Id Categoria'
 from questao where YEAR(Data_de_entrada) <> 2023;

-- Q7
-- Lista organizada por categoria/subcategoria das questoes
select q.id_questao as 'Questão',q.Idioma as 'Idioma', q.Data_de_entrada as 'Data de Entrada',q.Data_da_ultima_atualizacao as 'Data da ultima atualização',
q.Texto_da_pergunta as ' Texto da pergunta',q.id_categoria as 'Id categoria',c.nome as 'Nome da Categoria',ifnull(c.Sub_Categoria_Id, "Não tem") as 'Id Subcategoria'
from questao q left join categoria c on q.id_categoria = c.id_categoria
order by c.nome, c.Sub_Categoria_Id;

-- Q8.1 
-- Listagem do numero de jogadores numa equipa Max min avg e desvio padrao

SELECT MAX(jogadores.TotalJogadores) AS 'Maximo',
       AVG(jogadores.TotalJogadores) AS 'Media',
       MIN(jogadores.TotalJogadores) AS 'Minimo',
       STDDEV(jogadores.TotalJogadores) AS 'Desvio Padrao'
FROM (
    SELECT COUNT(jee.id_jogador) AS TotalJogadores
    FROM Equipa_Edicao ee
    LEFT JOIN Jogador_Equipa_Edicao jee ON ee.id_equipa_edicao = jee.id_equipa_edicao
    LEFT JOIN Equipa e ON e.id_equipa = ee.id_equipa
    WHERE ee.id_edicao = 1
    GROUP BY e.Nome
) jogadores;


-- Q8.2
-- Listagem do numero de jogadores numa equipa Max min avg e desvio padrao entre equipas com 13 e com 10 jogadores

SELECT MAX(jogadores.TotalJogadores) AS 'Maximo', AVG(jogadores.TotalJogadores) AS 'Media',MIN(jogadores.TotalJogadores) AS 'Minimo',
STDDEV(jogadores.TotalJogadores) AS 'Desvio Padrao'
FROM (SELECT COUNT(jee.id_jogador) AS TotalJogadores
    FROM Equipa_Edicao ee  LEFT JOIN Jogador_Equipa_Edicao jee ON ee.id_equipa_edicao = jee.id_equipa_edicao
    LEFT JOIN Equipa e ON e.id_equipa = ee.id_equipa
    WHERE ee.id_edicao = 1
    GROUP BY e.Nome
    Having TotalJogadores between 10 and 13
) jogadores;


-- Q9  
-- Lista organizada pelo número médio, mínimo, máximo e desvio padrão da classificação das respostas por categoria de questão
SELECT c.Nome AS 'Nome da categoria', AVG(sr.rating) AS 'Media de Rating', MIN(sr.rating) AS 'Rating minimo',MAX(sr.rating) AS 'Maior rating',
STDDEV(sr.rating) AS 'Desvio Padrao'
FROM Questao q LEFT JOIN Categoria c ON q.id_categoria = c.id_categoria
LEFT JOIN sessao_questao sq ON sq.id_questao = q.id_questao
LEFT JOIN sessao_resposta sr ON sr.id_sessao_questao = sq.id_sessao_questao
GROUP BY c.Nome;

-- Q10
-- Listagem de questoes cujo o numero total de respostas associadas é superior a 4
SELECT q.id_questao as 'Id Questao',q.Texto_da_pergunta as 'Texto da Pergunta', COUNT(r.id_resposta) AS "Total de respostas"
FROM Questao q
LEFT JOIN Sessao_Questao sq ON q.id_questao = sq.id_questao
LEFT JOIN Sessao_Resposta sr ON sq.id_sessao_questao = sr.id_sessao_questao
LEFT JOIN Resposta r ON sr.id_resposta = r.id_resposta
GROUP BY q.id_questao, q.Texto_da_pergunta
HAVING COUNT(r.id_resposta) > 4
ORDER BY COUNT(r.id_resposta) DESC;
-- Q11
-- Listagem dos 5 utilizadores com mais pesquisas;
SELECT  id_utilizador AS 'Id Utilizador' , count(id_sessao) as 'Numero de Sessoes'
From sessao 
group by id_utilizador
order by count(id_sessao) desc
limit 5;

-- Q12
-- Consulta adicional recorrendo a, pelo menos, 3 tabelas que mostra osjogadores de cada equipa 
SELECT e.nome as'Nome Equipa',j.numero as 'Nº da Camisola' ,j.nome as 'Nome do Jogador'
    FROM Equipa_Edicao ee  LEFT JOIN Jogador_Equipa_Edicao jee ON ee.id_equipa_edicao = jee.id_equipa_edicao
    LEFT JOIN Equipa e ON e.id_equipa = ee.id_equipa
	LEFT JOIN Jogador j  ON j.id_jogador = jee.id_jogador
    WHERE ee.id_edicao = 1;

-- Q13
-- Listagem da pergunta e respetiva resposta
SELECT s.id_sessao as 'Id Questao',q.Texto_da_pergunta as 'Texto da Pergunta', r.Texto_da_resposta as "Texto da Resposta"
FROM Sessao s
JOIN Sessao_Questao sq ON s.id_sessao = sq.id_sessao
JOIN Questao q ON sq.id_questao = q.id_questao
LEFT JOIN Sessao_Resposta sr ON sq.id_sessao_questao = sr.id_sessao_questao
LEFT JOIN Resposta r ON sr.id_resposta = r.id_resposta;

-- Q14
-- 
SELECT c1.Nome AS Categoria, ifnull(c2.Nome,'Não tem categoria') AS Subcategoria
FROM Categoria c1
LEFT JOIN Categoria c2 ON c1.id_categoria = c2.Sub_Categoria_Id;
