DROP DATABASE IF EXISTS ucl;
CREATE DATABASE ucl;
USE ucl;
 
CREATE TABLE Utilizador
(
  id_utilizador INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Password VARCHAR(100) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  Data_de_nascimento DATE NOT NULL,
  Genero VARCHAR(100) NOT NULL,
  Nacionalidade VARCHAR(100) NOT NULL
);
CREATE TABLE utilizador_rem
(
  id_utilizador INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Password VARCHAR(100) NOT NULL,
  Data_de_nascimento DATE NOT NULL,
  Genero VARCHAR(100) NOT NULL,
  Data_de_Remocao DATE NOT NULL
);

CREATE TABLE Sessao
(
  id_sessao INT AUTO_INCREMENT PRIMARY KEY,
  Token VARCHAR(100) NOT NULL,
  Ip VARCHAR(100) NOT NULL,
  Data_e_Hora_de_inicio DATETIME NOT NULL,
  Data_e_Hora_de_fim DATETIME,
  Tipo_de_Dispositivo VARCHAR(100) NOT NULL,
  id_utilizador INT NOT NULL,
  FOREIGN KEY (id_utilizador) REFERENCES Utilizador(id_utilizador)
);

CREATE TABLE TAG
(
  id_tag INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(20) NOT NULL
);

CREATE TABLE Admin
(
  id_admin INT,
  FOREIGN KEY (id_admin) REFERENCES Utilizador(id_utilizador)
);

CREATE TABLE Resposta_Estado
(
  id_estado INT AUTO_INCREMENT PRIMARY KEY,
  Estado VARCHAR(20) NOT NULL
);

CREATE TABLE Equipa
(
  id_equipa INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  id_tag INT,
  FOREIGN KEY (id_tag) REFERENCES TAG(id_tag)
);

CREATE TABLE Jogador
(
  id_jogador INT AUTO_INCREMENT PRIMARY KEY,
  Numero INT NOT NULL,
  Nome VARCHAR(100) NOT NULL,
  id_tag INT,
  FOREIGN KEY (id_tag) REFERENCES TAG(id_tag)
);
CREATE TABLE Edicao
(
  Ano INT NOT NULL,
  id_edicao INT AUTO_INCREMENT PRIMARY KEY,
  id_melhor_jogador INT NOT NULL,
  id_equipa_vencedora INT NOT NULL,
  id_tag INT,
  FOREIGN KEY (id_tag) REFERENCES TAG(id_tag),
  FOREIGN KEY (id_melhor_jogador) REFERENCES Jogador(id_jogador),
  FOREIGN KEY (id_equipa_vencedora) REFERENCES Equipa(id_equipa)
);

CREATE TABLE Resposta
(
  id_resposta INT AUTO_INCREMENT PRIMARY KEY,
  Tempo_de_Resposta INT NOT NULL,
  Data_de_aprovacao DATETIME NOT NULL,
  Texto_da_resposta VARCHAR(10000) NOT NULL,
  id_admin INT NOT NULL,
  id_estado INT NOT NULL,
  FOREIGN KEY (id_admin) REFERENCES Admin(id_admin),
  FOREIGN KEY (id_estado) REFERENCES Resposta_Estado(id_estado)
);

CREATE TABLE Equipa_Edicao
(
  id_equipa_edicao INT AUTO_INCREMENT PRIMARY KEY,
  id_edicao INT NOT NULL,
  id_equipa INT NOT NULL,
  FOREIGN KEY (id_edicao) REFERENCES Edicao(id_edicao),
  FOREIGN KEY (id_equipa) REFERENCES Equipa(id_equipa)
);

CREATE TABLE Categoria
(
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Sub_Categoria_Id INT,
  FOREIGN KEY (Sub_Categoria_Id) REFERENCES Categoria(id_categoria)
);

CREATE TABLE Questao
(
  id_questao INT AUTO_INCREMENT PRIMARY KEY,
  Idioma VARCHAR(100) NOT NULL,
  Data_de_entrada DATE NOT NULL,
  Data_da_ultima_atualizacao DATE NOT NULL,
  Texto_da_pergunta VARCHAR(10000) NOT NULL,
  id_categoria INT NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

CREATE TABLE Sessao_Questao
(
  id_sessao_questao INT AUTO_INCREMENT PRIMARY KEY,
  id_questao INT NOT NULL,
  id_sessao INT NOT NULL,
  FOREIGN KEY (id_questao) REFERENCES Questao(id_questao),
  FOREIGN KEY (id_sessao) REFERENCES Sessao(id_sessao)
);

CREATE TABLE Sessao_Resposta
(
  id_sessao_resposta INT AUTO_INCREMENT PRIMARY KEY,
  Rating INT NOT NULL,
  id_sessao_questao INT NOT NULL,
  id_resposta INT NOT NULL,
  FOREIGN KEY (id_sessao_questao) REFERENCES Sessao_Questao(id_sessao_questao),
  FOREIGN KEY (id_resposta) REFERENCES Resposta(id_resposta)
);

CREATE TABLE Resposta_Tag
(
  id_resposta_tag INT AUTO_INCREMENT PRIMARY KEY,
  id_tag INT,
  id_resposta INT NOT NULL,
  FOREIGN KEY (id_tag) REFERENCES TAG(id_tag),
  FOREIGN KEY (id_resposta) REFERENCES Resposta(id_resposta)
);

CREATE TABLE Jogador_Equipa_Edicao
(
  id_jogador_equipa_edicao INT AUTO_INCREMENT PRIMARY KEY,
  id_jogador INT NOT NULL,
  id_equipa_edicao INT NOT NULL,
  FOREIGN KEY (id_jogador) REFERENCES Jogador(id_jogador),
  FOREIGN KEY (id_equipa_edicao) REFERENCES Equipa_Edicao(id_equipa_edicao)
);

CREATE TABLE Jogo
(
  id_jogo INT AUTO_INCREMENT PRIMARY KEY,
  id_Homem_do_jogo INT NOT NULL,
  Data DATE NOT NULL,
  resultado VARCHAR(100) NOT NULL,
  id_equipa_casa INT NOT NULL,
  Estadio VARCHAR(100) NOT NULL,
  id_equipa_fora INT NOT NULL,
  id_tag INT,
  id_edicao INT NOT NULL,
  FOREIGN KEY (id_tag) REFERENCES TAG(id_tag),
  FOREIGN KEY (id_edicao) REFERENCES Edicao(id_edicao),
  FOREIGN KEY (id_equipa_fora) REFERENCES Equipa_Edicao(id_equipa_edicao),
  FOREIGN KEY (id_equipa_casa) REFERENCES Equipa_Edicao(id_equipa_edicao)
);

CREATE TABLE Questao_Tag
(
  id_tag INT,
  id_questao INT NOT NULL,
  PRIMARY KEY (id_tag, id_questao),
  FOREIGN KEY (id_tag) REFERENCES TAG(id_tag),
  FOREIGN KEY (id_questao) REFERENCES Questao(id_questao)
);
CREATE TABLE email_simulacao
(
  id_email INT AUTO_INCREMENT PRIMARY KEY,
  recetor INT NOT NULL,
  assunto VARCHAR(255) NOT NULL,
  corpo VARCHAR(1000) NOT NULL
);


