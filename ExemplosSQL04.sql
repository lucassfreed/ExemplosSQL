DROP DATABASE IF EXISTS joguinho;
CREATE DATABASE IF NOT EXISTS joguinho;
USE joguinho;
CREATE TABLE campeoes(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE habilidades(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_campeao INT,
	nome VARCHAR(100) NOT NULL,
	descricao TEXT,  
	FOREIGN KEY(id_campeao) REFERENCES campeoes(id)
);

INSERT INTO campeoes (nome) VALUES
('Viktor'),
('Maeve'),
('Grover'),
('Makoa');

INSERT INTO habilidades (id_campeao, nome, descricao)
VALUES
((SELECT id FROM campeoes WHERE nome = 'Viktor'), 
'ASSAULT RIFLE', 'Fire one shot every 0.1s that deals 
135 damage. Effective up to Medium Range.'),

((SELECT id FROM campeoes WHERE nome = 'Viktor'), 
'FRAG GRENADE', 'Throw a fragmentation grenade dealing up to 
	750 damage. Holding Frag Grenade will cook the grenade and 
	reduce its detonation time.'),

((SELECT id FROM campeoes WHERE nome = 'Viktor'),
'HUSTLE', 'Lower your weapon and run 65% faster'),

((SELECT id FROM campeoes WHERE nome = 'Viktor'),
'BARRAGE', 'Bring up your Targeting Binoculars. Click on Enemy 
	players to guide an artillery shell dealing 1400 damage to 
	their location. Viktor\'s Movement speed is slowed while 
	channeling Barrage.');

SELECT habilidades.nome 'Habilidade', campeoes.nome 'Campeão'
FROM habilidades
JOIN campeoes 
	ON(habilidades.id_campeao = campeoes.id);


