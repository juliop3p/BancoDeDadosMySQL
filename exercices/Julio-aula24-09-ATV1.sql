CREATE DATABASE IF NOT EXISTS db_rh;

USE db_rh;

CREATE TABLE IF NOT EXISTS tb_funcionario (
	id INT UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(55) NOT NULL,
    departamento VARCHAR(55) NOT NULL,
    cargo VARCHAR(55) NOT NULL,
    salario DOUBLE NOT NULL
);

INSERT INTO tb_funcionario (nome, departamento, cargo, salario) VALUES
	('Julio', 'T.I', 'Desenvolvedor jr.', 3000),
    ('João', 'T.I', 'Desenvolvedor pleno', 5000),
    ('Maria', 'T.I', 'Desenvolvedor senior', 7000),
    ('Joaquina', 'T.I', 'Desenvolvedor jr.', 3300),
    ('Godofredo', 'T.I', 'Estagiário', 1500);
    
SELECT * FROM tb_funcionario WHERE salario > 2000;

SELECT * FROM tb_funcionario WHERE salario < 2000;

UPDATE tb_funcionario
SET cargo = 'Estágiário', salario = 1700
WHERE id = 2;