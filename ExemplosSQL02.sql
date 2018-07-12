USE escola;
-- Quantidade de alunos que estão na sala de playstation
SELECT COUNT(usuarios.id) FROM usuarios
JOIN salas_de_aula
	ON(salas_de_aula.id = usuarios.id_sala_de_aula)
WHERE salas_de_aula.nome = 'Sala PS';

	PESSOAS
nome		linguagem
Francisco	Java
Crispim		Java
Leonardo	Pascal
Marcio P 	Pascal
Marcio A 	Php
Rafael		C++

SELECT linguagem, COUNT(nome)
FROM pessoas
GROUP BY linguagem
ORDER BY COUNT(nome) DESC;

Nome Quantidade
Java	2
Pascal	2
Php		1
C++		1

USE escola;
-- Quantidade de alunos que estão na sala de playstation
SELECT COUNT(usuarios.id) FROM usuarios
JOIN salas_de_aula
	ON(salas_de_aula.id = usuarios.id_sala_de_aula)
WHERE salas_de_aula.nome = 'Sala PS';

SELECT
	salas_de_aula.nome 'Sala',
	COUNT(usuarios.id) 'Quantidade de alunos'
FROM usuarios
JOIN salas_de_aula
	ON(salas_de_aula.id = usuarios.id_sala_de_aula)
GROUP BY usuarios.id_sala_de_aula;