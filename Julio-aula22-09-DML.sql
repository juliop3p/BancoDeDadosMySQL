CREATE DATABASE IF NOT EXISTS db_deletar;
USE db_deletar;

CREATE TABLE IF NOT EXISTS consumidores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)
);

INSERT INTO consumidores (nome) VALUES 
	("Macelo"),
	("Julia");
    
SELECT * FROM consumidores;

DELETE FROM consumidores WHERE id = 1;

SELECT * FROM comsumidores;