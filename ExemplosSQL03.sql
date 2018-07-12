DROP DATABASE IF EXISTS escola;
CREATE DATABASE IF NOT EXISTS escola;

USE escola;
CREATE TABLE salas_de_aula(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) UNIQUE NOT NULL,
	quantidade_maxima_alunos SMALLINT UNSIGNED NOT NULL
);

INSERT INTO salas_de_aula (nome, quantidade_maxima_alunos)
VALUES
('Sala XBOX', 4),
('Sala PS', 10),
('Sala Nintendinho', 2);

CREATE TABLE usuarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_sala_de_aula INT NOT NULL,
	nome VARCHAR(200) UNIQUE NOT NULL,
	cpf VARCHAR(12) NOT NULL,
	FOREIGN KEY(id_sala_de_aula) REFERENCES salas_de_aula(id)
);

INSERT INTO usuarios (id_sala_de_aula, nome, cpf) VALUES
(1, 'Pedro', '12345678998'),
(3, 'Gustavo', '1234567897'),
(2, 'Gabriel', '12345698798'),
(2, 'Gilherme', '32165498798'),
(1, 'Henrique', '45612378978'),
(1, 'Rafael', '12345678945');

SELECT * FROM usuarios;
SELECT * FROM salas_de_aula;
SELECT 
	usuarios.nome 'Aluno',
	salas_de_aula.nome 'Sala'
FROM usuarios
JOIN salas_de_aula 
	ON(usuarios.id_sala_de_aula = salas_de_aula.id)
