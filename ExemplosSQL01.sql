DROP DATABASE IF EXISTS exemplo00;
CREATE DATABASE exemplo00;
USE exemplo00;
CREATE TABLE alunos(
	nome VARCHAR(100),
	idade TINYINT
);

/*
TIPOS PARA INTEIROS
TINYINT: -128..127
SMALLINT: -32728..32727
MEDIUM: -8388608..8388607
INT: -2147483648..2147483647
LONG: -2^63..2^63-1
*/

DELETE FROM alunos WHERE nome <> '';
INSERT INTO alunos VALUE('Henrique', 21);
INSERT INTO alunos VALUE('Leonardo', 21);
INSERT INTO alunos VALUE('Lucas', 16);
INSERT INTO alunos VALUE('Daiana', 22);
INSERT INTO alunos VALUE('Logan', 18);
INSERT INTO alunos VALUE('Guilherme', 18);

SELECT * FROM alunos;

SELECT * 
	FROM alunos 
	WHERE idade = 16;

SELECT * 
	FROM alunos 
	WHERE idade = 18;

SELECT *
	FROM alunos
	WHERE idade > 17;

SELECT *
	FROM alunos
	WHERE idade >= 18;

DROP TABLE IF EXISTS gordices;
CREATE TABLE gordices(
	nome 		VARCHAR(100),
	preco 		DOUBLE,
	quantidade 	SMALLINT UNSIGNED,
	ativo 		BOOLEAN DEFAULT TRUE
);

INSERT INTO gordices (nome, preco, quantidade)
VALUES
('X-Calabria', 17.0, 1),
('Pizza Calabresa', 58, 60),
('Batata Recheada Calabresa', 12, 1),
('Pastel de Calabresa', 5, 1),
('Kalzone de Calabresa', 7, 1),
('Porção de Calabresa com Cebola', 15, 1),
('Coxinha de Calabresa', 3.5, 1),
('X-Bacon', 15.75, 1),
('Pizza de Bacon', 15, 20),
('Coxinha de Bacon', 3.5, 1);

SELECT nome 'Nome', preco 'Preço do Produto' 
	FROM gordices
	ORDER BY nome ASC;

SELECT nome 'Nome', preco 'Preço do Produto' 
	FROM gordices
	ORDER BY nome DESC;

SELECT preco 'Preco'
	FROM gordices
	ORDER BY preco ASC;

SELECT preco 'Preco', nome 'Nome'
	FROM gordices
	ORDER BY preco ASC, nome ASC;

# BUSCAR NA COLUNA DE NOME ONDE CONTÉM o
# texto Calabresa no final
SELECT *
	FROM gordices
	WHERE nome LIKE '%Calabresa';

# BUSCAR NA COLUNA DE NOME ONDE CONTÉM o
# texto Calabresa no começo
SELECT *
	FROM gordices
	WHERE nome LIKE 'Calabresa%';

# BUSCAR NA COLUNA DE NOME ONDE CONTÉM o
# texto Calabresa em qualquer parte
SELECT *
	FROM gordices
	WHERE nome LIKE '%Calabresa%';

SELECT nome FROM alunos;
UPDATE alunos SET nome = 'Frank' 
	WHERE nome = 'Logan';
SELECT nome FROM alunos;

UPDATE gordices
	SET
		nome = 'X-Calabresa',
		preco = 22
	WHERE nome = 'X-Calabria';
SELECT nome, preco FROM gordices;

DELETE FROM gordices WHERE preco <= 15;
SELECT preco FROM gordices;

-- Soma os registros da coluna preço
SELECT SUM(preco) FROM gordices;

-- Média dos registros da coluna preço
SELECT AVG(preco) FROM gordices;

-- Retorna o regisro com o menor preço
SELECT nome, MIN(preco) FROM gordices;

-- Retorna o registro com o maior preço
SELECT nome, MAX(preco) FROM gordices;

-- Soma os registros da coluna preço
SELECT SUM(preco) FROM gordices;

-- Média dos registros da coluna preço
SELECT AVG(preco) FROM gordices;

-- Retorna o regisro com o menor preço
SELECT /*nome,*/MIN(preco) FROM gordices;
#WHERE preco = (SELECT MIN(preco) FROM gordices);

-- Retorna o registro com o maior preço
SELECT /*nome,*/ MAX(preco) FROM gordices;
#WHERE preco = (SELECT MAX(preco) FROM gordices);

CREATE TABLE eventos (
	nome VARCHAR(100),
	data_evento DATE
);

INSERT INTO eventos VALUES 
('Comi Con', '1994-12-28'),
('Warung with Solumn', '2018-10-26');
