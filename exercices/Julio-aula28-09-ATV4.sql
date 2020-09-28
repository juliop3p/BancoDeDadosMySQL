create database db_cidade_das_carnes;

use db_cidade_das_carnes;

CREATE TABLE tb_categoria (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    categoria ENUM('Bovino', 'Suino', 'Frango') NOT NULL,
    fornecedor VARCHAR(45) NOT NULL
);

CREATE TABLE tb_produto (
    id INT NOT NULL AUTO_INCREMENT,
    nome_corte VARCHAR(45) NOT NULL,
    peso DOUBLE NOT NULL,
    preco_kg DOUBLE NOT NULL,
    kg_estoque DOUBLE NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_categoria (categoria, fornecedor) values
	('Bovino', 'Casa do boi'),
    ('Frango', 'Granja sudoeste'),
    ('Frango', 'Granja São João'),
    ('Suino', 'Frialto'),
    ('Bovino', 'Irmãos Gonçalves');

insert into tb_produto (nome_corte, peso, preco_kg, kg_estoque, categoria_id) values 
	('Ponta de agulha', 2, 28.00, 25, 5),
    ('Picanha', 1, 32.00, 10, 1),
    ('Coxa e sobrecoxa', 3.5, 10.00, 18, 2),
    ('Barriga de porco', 4, 14.00, 19, 4),
    ('Patinho', 3, 28.00, 5, 1),
    ('Contrafilé', 2.5, 34.00, 20.5, 5),
    ('Peito de frango', 5, 11.00, 40, 3),
    ('Cupim', 5, 20.00, 21, 1);

SELECT  * FROM tb_produto where preco_kg < 50;

SELECT  * FROM tb_produto where preco_kg > 3 and preco_kg < 60;

SELECT * FROM tb_produto WHERE nome_corte LIKE 'C%';

SELECT 
    *
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_produto.categoria_id = tb_categoria.id
ORDER BY tb_produto.id;
    
SELECT 
    *
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_produto.categoria_id = tb_categoria.id
    where tb_categoria.categoria = 'Bovino'
ORDER BY tb_produto.id;


