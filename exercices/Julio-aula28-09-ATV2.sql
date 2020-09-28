create database db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categoria (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    categoria ENUM('Salgada', 'Doçe') NOT NULL,
    tamanho ENUM('Pequena', 'Média', 'Grande') NOT NULL
);

CREATE TABLE tb_pizza (
    id INT NOT NULL AUTO_INCREMENT,
    nome_pizza VARCHAR(45) NOT NULL,
    preco INT NOT NULL,
    recheio VARCHAR(45) NOT NULL,
    borda ENUM('Sem recheio', 'Catupiry', 'Cheddar') NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_categoria (categoria, tamanho) values
	('Salgada', 'Pequena'),
    ('Salgada', 'Média'),
    ('Salgada', 'Grande'),
    ('Doçe', 'Pequena'),
    ('Doçe', 'Média'),
    ('Doçe', 'Grande');

insert into tb_pizza (nome_pizza, preco, recheio, borda, categoria_id) values 
	('Calabresa', 30, 'Calabresa e cebola', 'Catupiry', 3),
    ('Mussarela', 22, 'Mussarela e Tomate', 'Sem Recheio', 2),
    ('Brigadeiro', 45, 'Chocolate e granulado', 'Sem Recheio', 6),
    ('Baiana', 35, 'Calabresa e pimenta', 'Sem Recheio', 3),
    ('3 Queijos', 30, 'Mussarela, Catupiry, Cheddar', 'Cheddar', 3),
    ('Portuguesa', 50, 'Queijo, Presunto e Ovo', 'Catupiry', 3),
    ('Calabresa', 15, 'Calabresa e cebola', 'Sem Recheio', 1),
    ('Mussarela', 28, 'Mussarela e Tomate', 'Cheddar', 2);

SELECT  * FROM tb_pizza where preco < 45;

SELECT  * FROM tb_pizza where preco > 29 and preco < 60;

SELECT * FROM tb_pizza WHERE nome_pizza LIKE 'C%';

SELECT 
    *
FROM
    tb_pizza
        INNER JOIN
    tb_categoria ON tb_pizza.categoria_id = tb_categoria.id
ORDER BY tb_pizza.id;
    
SELECT 
    *
FROM
    tb_pizza
        INNER JOIN
    tb_categoria ON tb_pizza.categoria_id = tb_categoria.id
    where tb_categoria.categoria = 'Doçe'
ORDER BY tb_pizza.id;

SELECT 
    *
FROM
    tb_pizza
        INNER JOIN
    tb_categoria ON tb_pizza.categoria_id = tb_categoria.id
    where tb_categoria.categoria = 'Salgada'
ORDER BY tb_pizza.id;


