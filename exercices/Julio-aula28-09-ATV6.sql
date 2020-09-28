create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(55) NOT NULL,
    area VARCHAR(55) NOT NULL
);

CREATE TABLE tb_curso (
    id INT NOT NULL AUTO_INCREMENT,
    nome_curso VARCHAR(45) NOT NULL,
    quantidade_aulas INT NOT NULL,
    preco DOUBLE NOT NULL,
    duracao VARCHAR(45) NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_categoria (categoria, area) values
	('Programação', 'Desenvolvimento'),
    ('UI/UX', 'Designer'),
    ('Investimentos', 'Finanças'),
    ('Hardware', 'T.I'),
    ('Ferramentas de fotografia', 'Fotografia');

insert into tb_curso (nome_curso, quantidade_aulas, preco, duracao, categoria_id) values 
	('Maratona Java', 250, 24.99, '84Hrs', 1),
    ('Figma Básico', 28, 24.99, '6Hrs', 2),
    ('Programador Full Stack', 380, 245.99, '125Hrs', 1),
    ('Curso bolsa de valores', 55, 85.00, '22Hrs', 3),
    ('Redes essêncial', 66, 24.99, '29Hrs', 4),
    ('Curso Montagem e Manutenção de Micros', 80, 380.00, '112Hrs', 4),
    ('Photoshop', 25, 24.99, '10Hrs', 5),
    ('Mestre do Adobe', 321, 550.00, '125Hrs', 5);

SELECT  * FROM tb_curso where preco > 50;

SELECT  * FROM tb_curso where preco > 3 and preco < 60;

SELECT * FROM tb_curso WHERE nome_curso LIKE 'J%';

SELECT 
    *
FROM
    tb_curso
        INNER JOIN
    tb_categoria ON tb_curso.categoria_id = tb_categoria.id
ORDER BY tb_curso.id;
    
SELECT 
    *
FROM
    tb_curso
        INNER JOIN
    tb_categoria ON tb_curso.categoria_id = tb_categoria.id
    where tb_categoria.categoria = 'Programação'
ORDER BY tb_curso.id;



