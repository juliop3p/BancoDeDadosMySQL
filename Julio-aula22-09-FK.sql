CREATE DATABASE IF NOT EXISTS db_chaves;

USE db_chaves;

CREATE TABLE IF NOT EXISTS Pessoas (
    ID_Pessoa INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Carro (
    ID_Carro INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Marca VARCHAR(255),
    ID_Pessoa INT,
    CONSTRAINT fk_Pessoas FOREIGN KEY (ID_Pessoa)
        REFERENCES Pessoas (ID_Pessoa)
);
    
INSERT INTO Pessoas (Nome) VALUES ('Juliana'), ('Julio'), ('Márcio'); 

SELECT * FROM Pessoas;

INSERT INTO Carro (Nome, Marca, ID_Pessoa) VALUES 
	('Gol', 'Wolks', 2), ('Palio', 'Fiat', 3);
    
SELECT * FROM Carro;
    
TRUNCATE Pessoas;