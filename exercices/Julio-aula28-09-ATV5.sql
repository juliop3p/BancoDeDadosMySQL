create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo ENUM('Construção', 'Acabamento', 'Ferramentas', 'Elétrica') NOT NULL,
    categoria ENUM('Bloco', 'Areia', 'Cimento', 'Pedra', 'Piso', 'Tinta', 'Martelo', 'Marreta', 'Fios') NOT NULL
);

CREATE TABLE tb_produto (
    id INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(45) NOT NULL,
    quantidade DOUBLE NOT NULL,
    preco DOUBLE NOT NULL,
    entrega BOOLEAN NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_categoria (tipo, categoria) values
	('Construção', 'Bloco'),
    ('Acabamento', 'Piso'),
    ('Ferramentas', 'Martelo'),
    ('Elétrica', 'Fios'),
    ('Construção', 'Areia');

insert into tb_produto (nome_produto, quantidade, preco, entrega, categoria_id) values 
	('Areia de construção', 50, 400.00, true, 5),
    ('Fio 8mm', 30, 80.00, false, 4),
    ('Martelo', 24, 45, false, 2),
    ('Piso anti derrapante', 500, 23, true, 2),
    ('Bloco de cimento', 8, 1000.00, true, 1),
    ('Bloco cerâmico ', 12, 500.00, true, 1),
    ('Fio 10mm', 13, 100.00, false, 4),
    ('Piso Laminâdo', 400, 29.00, true, 1);

SELECT  * FROM tb_produto where preco > 50;

SELECT  * FROM tb_produto where preco > 3 and preco < 60;

SELECT * FROM tb_produto WHERE nome_produto LIKE 'J%';

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
    where tb_categoria.tipo = 'Construção'
ORDER BY tb_produto.id;



