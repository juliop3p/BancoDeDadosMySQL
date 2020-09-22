#
CREATE DATABASE db_deletar;
USE db_deletar;

CREATE TABLE consumidores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)
);

INSERT INTO consumidores (nome) VALUES 
	("Macelo"),
	("Julia");
    
SELECT * FROM consumidores;