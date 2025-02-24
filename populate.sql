-- utilizador

insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Cate Torrese', '867TCuJE', 'ctorrese0@hatena.ne.jp', '1991-07-03', 'Female', 'Kazakhstan');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Nealson Yeates', 'aNT0k8gTvkd', 'nyeates1@upenn.edu', '1991-08-29', 'Male', 'Burkina Faso');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Rozina Philippard', 'lbPtgtxR', 'rphilippard2@narod.ru', '1986-12-24', 'Female', 'Bulgaria');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Everett Bubbear', 'j6OGWWFZ', 'ebubbear3@linkedin.com', '1984-01-12', 'Genderqueer', 'Peru');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Leanora Philps', 'cvSQgjr', 'lphilps4@loc.gov', '1993-04-21', 'Female', 'Sweden');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Frazier Champain', 'fgc0gHVyq', 'fchampain5@cam.ac.uk', '1988-09-03', 'Male', 'China');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Derwin McMeeking', 'a3p6lV6O', 'dmcmeeking6@istockphoto.com', '1981-12-27', 'Male', 'France');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Morgen Craigg', 'VNko2zU', 'mcraigg7@prweb.com', '1990-04-01', 'Male', 'Madagascar');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Kendricks Macy', 'Pd16BKDU9g', 'kmacy8@comcast.net', '1987-10-01', 'Male', 'Russia');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Waylen MacLaverty', 'NXSW5AloY5fw', 'wmaclaverty9@archive.org', '2001-05-26', 'Male', 'China');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Pippa Van de Velde', '3QwGl0reL', 'pvana@sun.com', '1989-12-13', 'Genderqueer', 'Indonesia');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Cesya Shewry', 'KpVVu471dM7', 'cshewryb@toplist.cz', '1985-07-26', 'Female', 'Poland');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Cornell Christoffels', 'B7yUfd5LJV', 'cchristoffelsc@163.com', '1989-03-13', 'Male', 'Poland');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Tim Widmoor', 'k6pActgWC', 'twidmoord@illinois.edu', '2002-02-08', 'Male', 'United States');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Ailee Jenne', 'du8K19D', 'ajennee@bloglines.com', '1983-12-15', 'Female', 'Peru');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Chloette Fenelon', 'pqRHdcD', 'cfenelonf@friendfeed.com', '1988-07-18', 'Female', 'Liberia');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Taite Lammerding', 'ifIEeAag', 'tlammerdingg@phpbb.com', '1999-09-12', 'Male', 'Sweden');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Hill Baversor', 'XgPjTr', 'hbaversorh@cbc.ca', '1986-06-16', 'Male', 'Greece');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Cosme Faulks', 'jpkyMRz', 'cfaulksi@4shared.com', '1984-06-08', 'Male', 'China');
insert into Utilizador (Nome, Password, Email, Data_de_Nascimento, Genero, Nacionalidade) values ('Augustin Falconar', 'BvySvchv4', 'afalconarj@businessweek.com', '1991-03-29', 'Male', 'Czech Republic');
insert into Admin (id_admin) values (1);

-- Categoria

INSERT INTO Categoria (Nome)
VALUES ('Edição');
INSERT INTO Categoria (Nome, Sub_Categoria_Id)
VALUES ('Jogos', 1);
INSERT INTO Categoria (Nome)
VALUES ('Equipas');
INSERT INTO Categoria (Nome, Sub_Categoria_Id)
VALUES ('Jogadores', 1);

-- Questao 

INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Qual time venceu a UEFA Champions League na edicao de 2020-2021?', 1);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2020-11-15', '2022-12-1', 'Quem foi o artilheiro da UEFA Champions League na edicao de 2020-2021?', 4);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-13', '2022-12-17', 'Em qual estadio foi disputada a final da UEFA Champions League em 2020-2021?', 2);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Quais foram os times semifinalistas da edicao de 2020-2021 da UEFA Champions League?', 3);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Quem foi o melhor jogador (MVP) da final da UEFA Champions League em 2020-2021?', 4);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Qual time venceu a UEFA Champions League na edicao de 2019?', 3);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Em qual estadio foi disputada a final da UEFA Champions League em 2019?', 2);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Quantos times participam da fase de grupos da UEFA Champions League?', 3);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Em qual estadio foi disputada a final da UEFA Champions League em 2020?', 2);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Qual e o recorde de titulos da UEFA Champions League?', 3);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Quais sao alguns dos maiores artilheiros da UEFA Champions League?', 4);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Qual e o maior numero de vitorias consecutivas de um time na UEFA Champions League?', 2);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2023-5-31', '2023-5-31', 'Qual foi o jogador mais jovem a marcar um gol na historia da UEFA Champions League?', 4);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2023-5-31', '2023-5-31', 'Qual e o maior numero de gols marcados por um jogador em uma unica edicao da UEFA Champions League?', 4);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Qual jogador marcou o gol mais rápido na história da UEFA Champions League?', 4);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Ingles', '2022-12-1', '2022-12-1', 'Who won the UEFA Champions League in the 2020-2021 season?', 3);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Ingles', '2022-12-1', '2022-12-1', 'Which player holds the record for the most goals scored in a single UEFA Champions League season?', 4);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Ingles', '2022-12-1', '2022-12-1', 'Who is the all-time leading goal scorer in the history of the UEFA Champions League?', 4);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Qual time possui o recorde de mais títulos da UEFA Champions League?', 3);
INSERT INTO Questao (Idioma, Data_de_entrada, Data_da_ultima_atualizacao, Texto_da_pergunta, id_categoria)
VALUES ('Portugues', '2022-12-1', '2022-12-1', 'Qual país sediou a primeira final da UEFA Champions League?', 2);

-- Resposta-Estado 

Insert into Resposta_Estado(Estado)
Values('Aprovada');
Insert into Resposta_Estado(Estado)
Values('Em aprovação');
Insert into Resposta_Estado(Estado)
Values('Descontinuada');

-- Resposta
-- Resposta 1
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (7, '2022-12-1', 'O Chelsea FC venceu a UEFA Champions League na edição de 2020-2021.', 1, 1);

-- Resposta 2 
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (13, '2023-12-1', 'Erling Haaland foi o artilheiro da UEFA Champions League na edição de 2020-2021.', 1, 2);


-- Resposta 3
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (2, '2022-12-17', 'A final da UEFA Champions League em 2020-2021 foi disputada no Estádio do Dragão, no Porto, Portugal.', 1, 1);


-- Resposta 4
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (6, '2021-12-1', 'Os times semifinalistas da edição de 2020-2021 da UEFA Champions League foram Manchester City, Paris Saint-Germain, Real Madrid e Chelsea.', 1, 1);

-- resposta 5
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (40, '2022-11-3', 'NGolo Kanté foi eleito o melhor jogador (MVP) da final da UEFA Champions League em 2020-2021.', 1, 1);

-- resposta 6
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (13, '2024-7-1', 'O Liverpool FC foi o time vencedor da UEFA Champions League na edição de 2019.', 1, 2);


INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (16, '2023-1-03', 'A final da UEFA Champions League em 2019 foi disputada no Estádio Wanda Metropolitano, em Madrid, Espanha.', 1, 2);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (25, '2022-12-5', 'A fase de grupos da UEFA Champions League conta com 32 times participantes.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (26, '2023-02-21', 'A final da UEFA Champions League em 2020 foi disputada no Estádio da Luz, em Lisboa, Portugal.', 1, 2);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (10, '2023-05-13', 'O Real Madrid possui o recorde de mais títulos da UEFA Champions League.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (10, '2022-12-1', 'Alguns dos maiores artilheiros da UEFA Champions League são Cristiano Ronaldo, Lionel Messi e Robert Lewandowski.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (16, '2025-12-1', 'O maior número de vitórias consecutivas de um time na UEFA Champions League é 18.', 1, 2);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (53, '2021-5-31', 'Ansu Fati foi o jogador mais jovem a marcar um gol na história da UEFA Champions League.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (10, '2021-6-30', 'O maior número de gols marcados por um jogador em uma única edição da UEFA Champions League é 17.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (15, '2022-12-1', 'Roy Makaay marcou o gol mais rápido na história da UEFA Champions League.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (18, '2023-12-1', 'O time vencedor da UEFA Champions League na temporada 2020-2021 foi o Chelsea FC.', 1, 2);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (25, '2022-12-1', 'Cristiano Ronaldo é o jogador que possui o recorde de mais gols marcados em uma única temporada da UEFA Champions League.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (19, '2027-4-1', 'O maior artilheiro de todos os tempos da UEFA Champions League é Cristiano Ronaldo.', 1, 2);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (20, '2022-12-1', 'O Real Madrid é o time com o recorde de mais títulos da UEFA Champions League, com 13 conquistas até o momento.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (13, '2026-12-1', 'A primeira final da UEFA Champions League foi sediada na cidade de Paris, França.', 1, 2);
-- resposta 1
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (7, '2022-12-1', 'O Chelsea FC venceu a UCL no ano de 20/21.', 1, 1); 
-- resposta 2
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (13, '2023-12-1', 'Erling Haaland foi o melhor marcador da UCL na edição de 20/21.', 1, 2);
-- resposta 3
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (2, '2022-12-17', 'A final da UCL em 20/21 foi disputada em Portugal na cidade do Porto', 1, 1);
-- resposta 4
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (6, '2022-12-1', 'Os times semifinalistas da edição de 20/21 da UCL foram Paris Saint-Germain, Manchester City, Real Madrid e Chelsea.', 1, 1); 
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (6, '2022-12-1', 'Os times semifinalistas da edição de 20/21 da UCL foram Paris Saint-Germain, Chelsea, Real Madrid, Manchester City.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (6, '2022-12-1', 'Os times semifinalistas da edição de 20/21 da UCL foram Real Madrid, Chelsea,Paris Saint-Germain, Manchester City.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (6, '2022-12-1', 'Os times semifinalistas da edição de 20/21 da UCL foram Chelsea, Manchester City,Real Madrid, Paris Saint-Germain.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (6, '2022-12-1', 'Os times semifinalistas da edição de 20/21 da UCL foram Manchester City, Real Madrid ,Paris Saint-Germain, Chelsea.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (6, '2022-12-1', 'Os times semifinalistas da edição de 20/21 da UCL foram Man City, Real Madrid ,PSG, CFC.', 1, 1);
-- resposta 5
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (40, '2022-12-1', 'Jorginho foi eleito o melhor jogador (MVP) da final da UEFA Champions League em 20/21 pelo Record.', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (40, '2022-12-1', 'Esgaio foi eleito o melhor jogador (MVP) da final da UEFA Champions League em 20/21 pela CMTV.', 1, 1); 
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (40, '2022-12-1', 'Timo Werner foi eleito o melhor jogador (MVP) da final da UEFA Champions League em 20/21 pela Bola TV .', 1, 1);
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (40, '2022-12-1', 'Kai Havertz foi eleito o melhor jogador (MVP) da final da UEFA Champions League em 20/21 pela FoiEleQueFezOGolo.com .', 1, 1);
-- resposta 6
INSERT INTO Resposta (Tempo_de_Resposta, Data_de_aprovacao, Texto_da_Resposta, id_admin, id_estado)
VALUES (13, '2023-10-1', 'O LFC foi o time vencedor da UEFA Champions League na edição de 2019.', 1, 2); 








-- Sessao

INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('aaaYUAISYD', '192.168.0.1', '2023-05-01 08:00', '2023-05-01 08:30', 'Smartphone', 2);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('aa888JAKSDBa', '10.0.0.1', '2023-05-02 14:15', '2023-05-02 16:45', 'Tablet', 5);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('sadasda', '192.168.1.10', '2023-05-03 09:30', '2023-05-03 09:45', 'PC', 18);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('sadasda', '172.16.0.5', '2023-05-04 17:00', '2023-05-04 18:30', 'Smart TV', 6);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('NUCASADasdasd', '192.168.0.50', '2023-05-05 10:30', '2023-05-05 11:00', 'Smartphone', 17);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('KLHAJKSD', '192.168.0.50', '2023-05-06 15:45', '2023-05-06 16:00', 'Smartphone', 19);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('aklsh3ajkshd', '192.168.0.50', '2023-05-07 11:30', '2023-05-07 12:15', 'PC', 11);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('ghjgfd<fgsd', '192.168.0.50', '2023-05-08 09:00', '2023-05-08 09:15', 'Smartphone', 13);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('BASDjhgsdf432', '192.168.0.50', '2023-05-09 14:30', '2023-05-09 15:00', 'PC', 11);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('ityfvn464', '192.168.0.50', '2023-05-10 16:00', '2023-05-10 16:45', 'Smartphone', 20);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('sajkldas', '192.168.0.50', '2023-05-11 13:15', '2023-05-11 14:00', 'Smartphone', 3);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('ILYUHAKSJHGD', '192.168.0.50', '2023-05-12 10:30', '2023-05-12 11:15', 'PC', 1);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('091273mzsn', '192.168.0.50', '2023-05-13 15:30', '2023-05-13 15:45', 'Tablet', 4);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('lkhasdlkahs', '192.168.0.50', '2023-05-14 12:45', '2023-05-14 13:00', 'Tablet', 6);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('KLASHYDJKagsd', '192.168.0.50', '2023-05-15 09:30', '2023-05-15 10:00', 'Smart Fridge', 17);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('91b723jkasgdjkg', '192.168.0.50', '2023-05-16 14:00', '2023-05-16 14:45', 'Smartphone', 11);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('ajgsda89', '192.168.0.50', '2023-05-17 11:15', '2023-05-17 11:30', 'Smartphone', 14);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('OAISDY89as', '192.168.0.50', '2023-05-18 10:45', '2023-05-18 11:15', 'Smartphone', 14);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('KASHD3IASD', '192.168.0.50', '2023-05-19 15:30', '2023-05-19 16:00', 'PC', 16);
INSERT INTO Sessao (Token, Ip, Data_e_Hora_de_inicio, Data_e_Hora_de_fim, Tipo_de_Dispositivo, id_utilizador)
VALUES ('KLUAHSDOKY', '192.168.0.50', '2023-05-20 12:00', '2023-05-20 12:30', 'PC', 16);


-- Sessao-Questao

INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (1, 1);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (1, 2);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (1, 3);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (15, 4);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (2, 5);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (14, 6);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (6, 7);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (13, 8);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (10, 9);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (3, 10);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (4, 11);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (15, 12);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (18, 13);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (13, 14);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (19, 15);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (9, 16);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (5, 17);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (5, 18);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (15, 19);
INSERT INTO Sessao_Questao (id_sessao, id_questao)
VALUES (19, 20);


-- Sessao-Resposta

INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (1, 1, 2);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (2, 2, 5);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (3, 3, 3);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (4, 4, 1);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (5, 5, 2);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (6, 6, 4);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (7, 7, 1);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (8, 8, 3);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (9, 9, 4);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (10, 10, 4);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (11, 11, 1);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (12, 12, 2);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (13, 13, 5);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (14, 14, 1);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (15, 15, 3);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (16, 16, 2);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (17, 17, 3);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (18, 18, 1);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (19, 19, 4);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (20, 20, 3);
-- hhhhh
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (1, 21, 5);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (2, 22, 1);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (3, 23, 4);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (4, 24, 1);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (4, 25, 2);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (4, 26, 3);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (4, 27, 3);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (4, 28, 4);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (4, 29, 3);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (5, 30, 1);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (5, 31, 2);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (5, 32, 3);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (5, 33, 4);
INSERT INTO Sessao_Resposta (id_sessao_questao, id_resposta, Rating)
VALUES (6, 34, 5);


-- Tag
INSERT INTO Tag(Nome)
Values ('2019-2020');
INSERT INTO Tag(Nome)
Values ('2020-2021');
INSERT INTO Tag(Nome)
Values ('Real Madrid');
INSERT INTO Tag(Nome)
Values ('Manchester United');
INSERT INTO Tag(Nome)
Values ('Manchester City');
INSERT INTO Tag(Nome)
Values ('Bayern Munich');
INSERT INTO Tag(Nome)
Values ('Benfica');
INSERT INTO Tag(Nome)
Values ('Sporting');
INSERT INTO Tag(Nome)
Values ('Karim Benzema');
INSERT INTO Tag(Nome)
Values ('Toni Kroos');
INSERT INTO Tag(Nome)
Values ('Gareth Bale');
INSERT INTO Tag(Nome)
Values ('Cristiano Ronaldo');
INSERT INTO Tag(Nome)
Values ('Harry Maguire');
INSERT INTO Tag(Nome)
Values ('Jadon Sancho');
INSERT INTO Tag(Nome)
Values ('Bernardo Silva');
INSERT INTO Tag(Nome)
Values ('Kevin De Bruyne');
INSERT INTO Tag(Nome)
Values ('Ruben Dias');
INSERT INTO Tag(Nome)
Values ('Robert Lewandowski');
INSERT INTO Tag(Nome)
Values ('Joshua Kimmich');
INSERT INTO Tag(Nome)
Values ('Manuel Neuer');
INSERT INTO Tag(Nome)
Values ('Alex Grimaldo');
INSERT INTO Tag(Nome)
Values ('Darwin Núñez');
INSERT INTO Tag(Nome)
Values ('João Mário');
INSERT INTO Tag(Nome)
Values ('Paulinho');
INSERT INTO Tag(Nome)
Values ('Pedro Porro');
INSERT INTO Tag(Nome)
Values ('Pedro Gonçalves');
INSERT INTO Tag(Nome)
Values ('Chelsea');
INSERT INTO Tag(Nome)
Values ('Jorginho');
INSERT INTO Tag(Nome)
Values ('NGolo Kante');
INSERT INTO Tag(Nome)
Values ('Reece James');
INSERT INTO Tag(Nome)
Values ('Vencedor');
INSERT INTO Tag(Nome)
Values ('Estadio');
INSERT INTO Tag(Nome)
Values ('Melhores marcadores');
INSERT INTO Tag(Nome)
Values ('Golos');

-- Resposta Tag
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (1,31);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (1,2);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (2,33);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (2,2);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (3,32);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (3,2);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (4,2);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (4,3);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (4,5);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (4,27);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (5,2);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (6,1);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (6,31);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (6,6);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (7,32);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (7,1);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (9,32);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (9,2);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (10,31);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (11,33);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (13,34);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (14,34);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (14,12);
INSERT INTO Resposta_Tag(id_resposta,id_tag)
values (15,34);

-- Questao Tag
INSERT INTO Questao_Tag(id_questao,id_tag)
values (1,31);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (1,2);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (2,33);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (2,2);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (3,32);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (3,2);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (4,2);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (4,3);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (4,5);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (4,27);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (5,2);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (6,1);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (6,31);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (6,6);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (7,32);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (7,1);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (9,32);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (9,2);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (10,31);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (11,33);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (13,34);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (14,34);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (14,12);
INSERT INTO Questao_Tag(id_questao,id_tag)
values (15,34);



-- Equipa

INSERT INTO equipa (Nome, id_tag)
VALUES ('Real Madrid', 3);
INSERT INTO equipa (Nome)
VALUES ('FC Barcelona');
INSERT INTO equipa (Nome, id_tag)
VALUES ('Manchester United', 4);
INSERT INTO equipa (Nome, id_tag)
VALUES ('Bayern Munich', 6);
INSERT INTO equipa (Nome)
VALUES ('Juventus');
INSERT INTO equipa (Nome)
VALUES ('Paris Saint-Germain');
INSERT INTO equipa (Nome)
VALUES ('Liverpool');
INSERT INTO equipa (Nome,id_tag)
VALUES ('Chelsea',27);
INSERT INTO equipa (Nome, id_tag)
VALUES ('Manchester City', 5);
INSERT INTO equipa (Nome)
VALUES ('Inter Milan');
INSERT INTO equipa (Nome)
VALUES ('Arsenal');
INSERT INTO equipa (Nome)
VALUES ('Tottenham Hotspur');
INSERT INTO equipa (Nome)
VALUES ('AC Milan');
INSERT INTO equipa (Nome)
VALUES ('Atletico Madrid');
INSERT INTO equipa (Nome)
VALUES ('Borussia Dortmund');
INSERT INTO equipa (Nome)
VALUES ('Ajax');
INSERT INTO equipa (Nome)
VALUES ('Roma');
INSERT INTO equipa (Nome)
VALUES ('Sevilla');
INSERT INTO equipa (Nome)
VALUES ('FC Porto');
INSERT INTO equipa (Nome, id_tag)
VALUES ('Benfica', 6);
INSERT INTO equipa (Nome)
VALUES ('Fiorentina');
INSERT INTO equipa (Nome)
VALUES ('AS Monaco');
INSERT INTO equipa (Nome, id_tag)
VALUES ('Sporting', 7);


-- Jogadores

INSERT INTO jogador (Numero, nome)
VALUES (7, 'Eden Hazard');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (9, 'Karim Benzema', 8);
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (11, 'Gareth Bale', 10);
INSERT INTO jogador (Numero, nome)
VALUES (14, 'Casemiro');
INSERT INTO jogador (Numero, nome)
VALUES (22, 'Isco');
INSERT INTO jogador (Numero, nome)
VALUES (17, 'Lucas Vazquez');
INSERT INTO jogador (Numero, nome)
VALUES (5, 'Raphael Varane');
INSERT INTO jogador (Numero, nome)
VALUES (3, 'Eder Militao');
INSERT INTO jogador (Numero, nome)
VALUES (2, 'Dani Carvajal');
INSERT INTO jogador (Numero, nome)
VALUES (8, 'Toni Kroos');
INSERT INTO jogador (Numero, nome)
VALUES (16, 'Federico Valverde');
INSERT INTO jogador (Numero, nome)
VALUES (23, 'Ferland Mendy');
INSERT INTO jogador (Numero, nome)
VALUES (25, 'Thibaut Courtois');

INSERT INTO jogador (Numero, nome, id_tag)
VALUES (7, 'Cristiano Ronaldo', 11);
INSERT INTO jogador (Numero, nome)
VALUES (9, 'Anthony Martial');
INSERT INTO jogador (Numero, nome)
VALUES (10, 'Marcus Rashford');
INSERT INTO jogador (Numero, nome)
VALUES (6, 'Paul Pogba');
INSERT INTO jogador (Numero, nome)
VALUES (18, 'Bruno Fernandes');
INSERT INTO jogador (Numero, nome)
VALUES (11, 'Mason Greenwood');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (5, 'Harry Maguire', 12);
INSERT INTO jogador (Numero, nome)
VALUES (3, 'Eric Bailly');
INSERT INTO jogador (Numero, nome)
VALUES (2, 'Aaron Wan-Bissaka');
INSERT INTO jogador (Numero, nome)
VALUES (8, 'Scott McTominay');
INSERT INTO jogador (Numero, nome)
VALUES (16, 'Nemanja Matic');
INSERT INTO jogador (Numero, nome)
VALUES (1, 'David De Gea');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (22, 'Jadon Sancho', 13);

INSERT INTO jogador (Numero, nome)
VALUES (10, 'Sergio Agüero');
INSERT INTO jogador (Numero, nome)
VALUES (7, 'Raheem Sterling');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (20, 'Bernardo Silva', 14);
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (17, 'Kevin De Bruyne', 15);
INSERT INTO jogador (Numero, nome)
VALUES (21, 'Ferran Torres');
INSERT INTO jogador (Numero, nome)
VALUES (8, 'Ilkay Gundogan');
INSERT INTO jogador (Numero, nome)
VALUES (16, 'Rodri');
INSERT INTO jogador (Numero, nome)
VALUES (2, 'Kyle Walker');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (3, 'Ruben Dias', 16);
INSERT INTO jogador (Numero, nome)
VALUES (5, 'John Stones');
INSERT INTO jogador (Numero, nome)
VALUES (11, 'Oleksandr Zinchenko');
INSERT INTO jogador (Numero, nome)
VALUES (26, 'Riyad Mahrez');
INSERT INTO jogador (Numero, nome)
VALUES (31, 'Ederson');

INSERT INTO jogador (Numero, nome, id_tag)
VALUES (9, 'Robert Lewandowski', 17);
INSERT INTO jogador (Numero, nome)
VALUES (7, 'Leroy Sané');
INSERT INTO jogador (Numero, nome)
VALUES (10, 'Serge Gnabry');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (6, 'Joshua Kimmich', 18);
INSERT INTO jogador (Numero, nome)
VALUES (18, 'Leon Goretzka');
INSERT INTO jogador (Numero, nome)
VALUES (11, 'Kingsley Coman');
INSERT INTO jogador (Numero, nome)
VALUES (5, 'Nicolas Süle');
INSERT INTO jogador (Numero, nome)
VALUES (3, 'Lucas Hernández');
INSERT INTO jogador (Numero, nome)
VALUES (2, 'Benjamin Pavard');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (1, 'Manuel Neuer', 19);

INSERT INTO jogador (Numero, nome, id_tag)
VALUES (3, 'Alex Grimaldo', 20);
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (9, 'Darwin Núñez', 21);
INSERT INTO jogador (Numero, nome)
VALUES (7, 'Rafa Silva');
INSERT INTO jogador (Numero, nome)
VALUES (21, 'Pizzi');
INSERT INTO jogador (Numero, nome)
VALUES (6, 'Nicolás Otamendi');
INSERT INTO jogador (Numero, nome)
VALUES (4, 'Lucas Veríssimo');
INSERT INTO jogador (Numero, nome)
VALUES (29, 'Adel Taarabt');
INSERT INTO jogador (Numero, nome)
VALUES (8, 'Julian Weigl');
INSERT INTO jogador (Numero, nome)
VALUES (17, 'Gonçalo Ramos');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (16, 'João Mário', 22);
INSERT INTO jogador (Numero, nome)
VALUES (1, 'Odysseas Vlachodimos');
INSERT INTO jogador (Numero, nome)
VALUES (99, 'Waldschmidt');

INSERT INTO jogador (Numero, nome, id_tag)
VALUES (28, 'Pedro Porro', 24);
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (9, 'Paulinho', 23);
INSERT INTO jogador (Numero, nome)
VALUES (7, 'Nuno Santos');
INSERT INTO jogador (Numero, nome)
VALUES (18, 'Gonzalo Plata');
INSERT INTO jogador (Numero, nome)
VALUES (11, 'João Palhinha');
INSERT INTO jogador (Numero, nome)
VALUES (6, 'Sebastian Coates');
INSERT INTO jogador (Numero, nome)
VALUES (3, 'Zouhair Feddal');
INSERT INTO jogador (Numero, nome)
VALUES (29, 'Daniel Bragança');
INSERT INTO jogador (Numero, nome)
VALUES (8, 'Matheus Nunes');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (17, 'Pedro Gonçalves', 25);
INSERT INTO jogador (Numero, nome)
VALUES (16, 'Tiago Tomás');
INSERT INTO jogador (Numero, nome)
VALUES (21, 'Antonio Adán');
INSERT INTO jogador (Numero, nome)
VALUES (31, 'Nuno Mendes');

INSERT INTO jogador (Numero, nome)
VALUES (1, 'Kepa Arrizabalaga');
INSERT INTO jogador (Numero, nome)
VALUES (2, 'Antonio Rüdiger');
INSERT INTO jogador (Numero, nome)
VALUES (3, 'Marcos Alonso');
INSERT INTO jogador (Numero, nome)
VALUES (4, 'Andreas Christensen');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (5, 'Jorginho', 27);
INSERT INTO jogador (Numero, nome)
VALUES (6, 'Thiago Silva');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (7, 'NGolo Kanté', 28);
INSERT INTO jogador (Numero, nome)
VALUES (8, 'Mateo Kovacic');
INSERT INTO jogador (Numero, nome)
VALUES (9, 'Romelu Lukaku');
INSERT INTO jogador (Numero, nome)
VALUES (10, 'Christian Pulisic');
INSERT INTO jogador (Numero, nome)
VALUES (11, 'Timo Werner');
INSERT INTO jogador (Numero, nome)
VALUES (12, 'Hakim Ziyech');
INSERT INTO jogador (Numero, nome)
VALUES (13, 'Ben Chilwell');
INSERT INTO jogador (Numero, nome)
VALUES (14, 'Trevoh Chalobah');
INSERT INTO jogador (Numero, nome)
VALUES (15, 'Callum Hudson-Odoi');
INSERT INTO jogador (Numero, nome)
VALUES (16, 'Ross Barkley');
INSERT INTO jogador (Numero, nome)
VALUES (17, 'Ruben Loftus-Cheek');
INSERT INTO jogador (Numero, nome)
VALUES (18, 'Mason Mount');
INSERT INTO jogador (Numero, nome, id_tag)
VALUES (19, 'Reece James', 29);
INSERT INTO jogador (Numero, nome)
VALUES (20, 'César Azpilicueta');


-- Edicao
INSERT INTO edicao(Ano,id_melhor_jogador,id_equipa_vencedora,id_tag)
values (2019,40,4,1);
INSERT INTO edicao(Ano,id_melhor_jogador,id_equipa_vencedora,id_tag)
values (2020,81,8,2);

-- Equipa_Edicao
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 1); -- Real Madrid 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 1); -- Real Madrid 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 2); -- Barcelona 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 2); -- Barcelona 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 3); -- Manchester United 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 3); -- Manchester United 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 4); -- Bayern Munich 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 4); -- Bayern Munich 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 5); -- Juventus 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 5); -- Juventus 2020 

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 6); -- PSG 2019 
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 6); -- PSG 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 7); -- Liverpool 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 7); -- Liverpool 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 8); -- Chelsea 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 8); -- Chelsea 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 9); -- Manchester City 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 9); -- Manchester City 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 10); -- Inter Milan 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 10); -- Inter Milan 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 11); -- Arsenal 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 11); -- Arsenal 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 12); -- Tottenham 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 12); -- Tottenham 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 13); -- AC Milan 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 13); -- AC Milan 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 14); -- Atletico Madrid 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 14); -- Atletico Madrid 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 15); -- Borussia Dortmund 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 15); -- Borussia Dortmund 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 16); -- Ajax 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 16); -- Ajax 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 17); -- Roma 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 17); -- Roma 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 18); -- Sevilla 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 18); -- Sevilla 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 19); -- Porto 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 19); -- Porto 2020 

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 20); -- Benfica 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 20); -- Benfica 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 21); -- Fiorentina 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 21); -- Fiorentina 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 22); -- Monaco 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 22); -- Monaco 2020

INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (1, 23); -- Sporting 2019
INSERT INTO equipa_edicao (id_edicao, id_equipa) VALUES (2, 23); -- Sporting 2020


-- Jogador Equipa Edicao
-- Jogador_Equipa_Edicao

-- Real Madrid - 2019
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (1, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (2, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (3, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (4, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (5, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (6, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (7, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (8, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (9, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (10, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (11, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (12, 1);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (13, 1);

-- Real Madrid - 2020
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (1, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (2, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (3, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (4, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (5, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (6, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (7, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (8, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (9, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (10, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (11, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (12, 2);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (13, 2);

-- Manchester United - 2019
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (14, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (15, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (16, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (17, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (18, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (19, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (20, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (21, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (22, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (23, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (24, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (25, 5);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (26, 5);

-- Manchester United - 2020

INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (14, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (15, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (16, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (17, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (18, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (19, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (20, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (21, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (22, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (23, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (24, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (25, 6);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (26, 6);

-- Manchester City - 2019
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (27, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (28, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (29, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (30, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (31, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (32, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (33, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (34, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (35, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (36, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (37, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (38, 17);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (39, 17);

-- Manchester City - 2020
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (27, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (28, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (29, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (30, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (31, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (32, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (33, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (34, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (35, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (36, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (37, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (38, 18);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (39, 18);

-- Bayern Munich - 2019
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (40, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (41, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (42, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (43, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (44, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (45, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (46, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (47, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (48, 7);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (49, 7);

-- Bayern Munich - 2020
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (40, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (41, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (42, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (43, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (44, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (45, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (46, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (47, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (48, 8);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (49, 8);

-- Benfica - 2019
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (50, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (51, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (52, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (53, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (54, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (55, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (56, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (57, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (58, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (59, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (60, 39);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (61, 39);

-- Benfica - 2020
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (50, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (51, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (52, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (53, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (54, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (55, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (56, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (57, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (58, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (59, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (60, 40);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (61, 40);

-- Sporting - 2019
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (62, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (63, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (64, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (65, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (66, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (67, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (68, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (69, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (70, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (71, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (72, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (73, 45);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (74, 45);

-- Sporting - 2020
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (62, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (63, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (64, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (65, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (66, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (67, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (68, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (69, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (70, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (71, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (72, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (73, 46);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (74, 46);

-- Chelsea - 2019
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (75, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (76, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (77, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (78, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (79, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (81, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (82, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (83, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (84, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (85, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (86, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (87, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (88, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (89, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (90, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (91, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (92, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (93, 15);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (94, 15);

-- Chelsea - 2020
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (75, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (76, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (77, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (78, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (79, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (81, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (82, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (83, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (84, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (85, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (86, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (87, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (88, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (89, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (90, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (91, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (92, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (93, 16);
INSERT INTO jogador_equipa_edicao (id_jogador, id_equipa_edicao) VALUES (94, 16);

