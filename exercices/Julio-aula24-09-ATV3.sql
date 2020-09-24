CREATE DATABASE IF NOT EXISTS db_escola;

USE db_escola;

CREATE TABLE IF NOT EXISTS tb_estudante (
	id INT UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(55) NOT NULL,
    sexo VARCHAR(15) NOT NULL,
    sala VARCHAR(55) NOT NULL,
    ano VARCHAR(55) NOT NULL,
    nota DOUBLE NOT NULL
);

INSERT INTO tb_estudante (nome, sexo, sala, ano, nota) VALUES
	('João', 'masculino', '9A', '9° ano', 8.5),
    ('Maria', 'feminino', '5C', '5° ano', 6.5),
    ('Pedro', 'masculino', '9A', '9° ano', 5.0),
    ('Joaquina', 'feminino', '9B', '9° ano', 9.5),
    ('Godofredo', 'masculino', '6C', '6° ano', 10),
    ('Barbara', 'feminino', '3A', '3° ano', 7),
    ('José', 'masculino', '4B', '4° ano', 7),
    ('Joana', 'feminino', '9B', '9° ano', 6.5);
    
SELECT * FROM tb_estudante WHERE nota >= 7;

SELECT * FROM tb_estudante WHERE nota < 7;

UPDATE tb_estudante
SET nota = 6
WHERE id = 3;