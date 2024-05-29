
CREATE DATABASE Filmes;
USE Filmes;

CREATE TABLE Atores (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    PrimeiroNome VARCHAR(20),
    UltimoNome VARCHAR(20),
    Genero VARCHAR(1)
);

CREATE TABLE ElencoFilme (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdAtor INT NOT NULL,
    IdFilme INT,
    Papel VARCHAR(30),
    FOREIGN KEY (IdAtor) REFERENCES Atores(Id)
);

CREATE TABLE Filmes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Ano INT,
    Duracao INT
);

CREATE TABLE FilmesGenero (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdGenero INT,
    IdFilme INT,
    FOREIGN KEY (IdGenero) REFERENCES Generos(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

CREATE TABLE Generos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Genero VARCHAR(20)
);

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES 
(1, 'James', 'Stewart', 'M'),
(2, 'Deborah', 'Kerr', 'F'),
(3, 'Peter', 'OToole', 'M'),
(4, 'Robert', 'DeNiro', 'M'),
(6, 'Harrison', 'Ford', 'M'),
(7, 'Stephen', 'Baldwin', 'M'),
(8, 'Jack', 'Nicholson', 'M'),
(9, 'Mark', 'Wahlberg', 'M'),
(10, 'Woody', 'Allen', 'M'),
(11, 'Claire', 'Danes', 'F'),
(12, 'Tim', 'Robbins', 'M'),
(13, 'Kevin', 'Spacey', 'M'),
(14, 'Kate', 'Winslet', 'F'),
(15, 'Robin', 'Williams', 'M'),
(16, 'Jon', 'Voight', 'M'),
(17, 'Ewan', 'McGregor', 'M'),
(18, 'Christian', 'Bale', 'M'),
(19, 'Maggie', 'Gyllenhaal', 'F'),
(20, 'Dev', 'Patel', 'M'),
(21, 'Sigourney', 'Weaver', 'F'),
(22, 'David', 'Aston', 'M'),
(23, 'Ali', 'Astin', 'F');


INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES 
(1, 'Um Corpo que Cai', 1958, 128),
(2, 'Os Inocentes', 1961, 100),
(3, 'Lawrence da Arábia', 1962, 216),
(4, 'O Franco Atirador', 1978, 183),
(5, 'Amadeus', 1984, 160),
(6, 'Blade Runner', 1982, 117),
(7, 'De Olhos Bem Fechados', 1999, 159),
(8, 'Os Suspeitos', 1995, 106),
(9, 'Chinatown', 1974, 130),
(10, 'Boogie Nights - Prazer Sem Limites', 1997, 155),
(11, 'Noivo Neurótico, Noiva Nervosa', 1977, 93),
(12, 'Princesa Mononoke', 1997, 134),
(13, 'Um Sonho de Liberdade', 1994, 142),
(14, 'Beleza Americana', 1999, 122),
(15, 'Titanic', 1997, 194),
(16, 'Gênio Indomável', 1997, 126),
(17, 'Amargo pesadelo', 1972, 109),
(18, 'Trainspotting - Sem Limites', 1996, 94),
(19, 'O Grande Truque', 2006, 130),
(20, 'Donnie Darko', 2001, 113),
(21, 'Quem Quer Ser um Milionário?', 2008, 120),
(22, 'Aliens, O Resgate', 1986, 137),
(23, 'Uma Vida sem Limites', 2004, 118),
(24, 'Avatar', 2009, 162),
(25, 'Coração Valente', 1995, 178),
(26, 'Os Sete Samurais', 1954, 207),
(27, 'A Viagem de Chihiro', 2001, 125),
(28, 'De Volta para o Futuro', 1985, 116);

INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES 
(1, 1, 22),
(2, 2, 17),
(3, 2, 3),
(4, 3, 12),
(5, 5, 11),
(6, 6, 8),
(7, 6, 13),
(8, 7, 26),
(9, 7, 28),
(10, 7, 18),
(11, 7, 21),
(12, 8, 2),
(13, 9, 23),
(14, 10, 7),
(15, 10, 27),
(16, 10, 1),
(17, 11, 14),
(18, 12, 6),
(19, 13, 4);

INSERT INTO Generos (Genero) VALUES ('Ação');
INSERT INTO Generos (Genero) VALUES ('Aventura');
INSERT INTO Generos (Genero) VALUES ('Animação');
INSERT INTO Generos (Genero) VALUES ('Biografia');
INSERT INTO Generos (Genero) VALUES ('Comédia');
INSERT INTO Generos (Genero) VALUES ('Crime');
INSERT INTO Generos (Genero) VALUES ('Drama');
INSERT INTO Generos (Genero) VALUES ('Horror');
INSERT INTO Generos (Genero) VALUES ('Musical');
INSERT INTO Generos (Genero) VALUES ('Mistério');
INSERT INTO Generos (Genero) VALUES ('Romance');
INSERT INTO Generos (Genero) VALUES ('Suspense');
INSERT INTO Generos (Genero) VALUES ('Guerra');

INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (1, 1, 'John Scottie Ferguson');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (2, 2, 'Miss Giddens');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (3, 3, 'T.E. Lawrence');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (4, 4, 'Michael');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (6, 6, 'Rick Deckard');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (7, 8, 'McManus');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (9, 10, 'Eddie Adams');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (10, 11, 'Alvy Singer');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (11, 12, 'San');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (12, 13, 'Andy Dufresne');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (13, 14, 'Lester Burnham');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (14, 15, 'Rose DeWitt Bukater');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (15, 16, 'Sean Maguire');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (16, 17, 'Ed');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (17, 18, 'Renton');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (19, 20, 'Elizabeth Darko');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (20, 21, 'Older Jamal');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (21, 22, 'Ripley');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (13, 23, 'Bobby Darin');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (8, 9, 'J.J. Gittes');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (18, 19, 'Alfred Borden');

ALTER TABLE ElencoFilme ADD CONSTRAINT FK_ElencoFilme_IdAtor FOREIGN KEY (IdAtor) REFERENCES Atores(Id);
ALTER TABLE ElencoFilme ADD CONSTRAINT FK_ElencoFilme_IdFilme FOREIGN KEY (IdFilme) REFERENCES Filmes(Id);

ALTER TABLE FilmesGenero ADD CONSTRAINT FK_FilmesGenero_IdFilme FOREIGN KEY (IdFilme) REFERENCES Filmes(Id);
ALTER TABLE FilmesGenero ADD CONSTRAINT FK_FilmesGenero_IdGenero FOREIGN KEY (IdGenero) REFERENCES Generos(Id);


select * from Atores;
select * from Atores;
select * from ElencoFilme;
select * from FilmesGenero;
select * from Generos;

-- Nome e Ano dos filmes

select Nome, Ano from Filmes;

-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select Nome, Ano from Filmes order by Ano;

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select  Nome, Ano, Duracao
from Filmes
where Nome = 'De Volta para o Futuro';

-- Buscar os filmes lançados em 1997

select  Nome, Ano, Duracao
from Filmes
where Ano = 1997;


-- Buscar os filmes lançados APÓS o ano 2000

select  Nome, Ano, Duracao
from Filmes
where Ano > 2000;


-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

select  Nome, Ano, Duracao
from Filmes
where Duracao > 100 && Duracao < 150
order by Duracao asc;


-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

select Ano, count(*) as Quantidade_de_Filmes
from Filmes
group by Ano
order by count(*) desc;


-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

select PrimeiroNome, UltimoNome, Genero from Atores where Genero like 'M';

-- Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select PrimeiroNome, UltimoNome, Genero 
from Atores 
where Genero like 'F'
order by PrimeiroNome;


-- Buscar o nome do filme e o gênero

select Filmes.Nome as Nome_do_Filme, Generos.Genero
from Filmes
join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
join Generos on FilmesGenero.IdGenero = Generos.Id;


-- Buscar o nome do filme e o gênero do tipo "Mistério"

select Filmes.Nome as Nome_do_Filme, Generos.Genero
from Filmes
join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero like 'Mistério';


--  Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select filmes.nome as nome_do_filme, atores.primeironome, atores.ultimonome, elencofilme.papel
from filmes
inner join elencofilme on filmes.id = elencofilme.idfilme
inner join atores on elencofilme.idator = atores.id;
