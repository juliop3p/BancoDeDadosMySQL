create database db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classe (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    classe VARCHAR(45) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_personagem (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    mana INT NOT NULL,
    classe_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id)
        REFERENCES tb_classe (id)
);

insert into tb_classe (classe, descricao) values
	('Assassino', 'Os Retalhadores (também tratados como “Assassinos”) são uma Classe de campeões do LoL que tem como principais características a sua excelente mobilidade e uma grande força na hora de causar dano. O chamado “burst damage” pode matar quase que instantaneamente os personagens “não tanques”.'),
    ('Mago', 'Como já diria o famoso “Capitão Óbvio”, os Magos são Campeões capazes de lançar feitiços mágicos para atrapalhar os inimigos. Essa categoria é vasta, de forma que esses personagens podem ser bons atacando de perto ou de longe, por exemplo.'),
    ('Lutador', 'Quando você bate o olho nesta classe e nunca jogou LoL, pensa que essa categoria de Campeão só serve para atacar loucamente. Mas não é bem assim. Na verdade, os Lutadores são uma categoria versátil de personagem, capaz de agradar diversos tipos de jogadores.'),
    ('Atirador', 'Os atiradores são uma Classe de Campeões do LoL que traz personagens focados em causar muito dano sem ficar cara a cara com o perigo. Há quem compare esta categoria com os “Snipers” dos jogos de tiro em primeira pessoa. Ou seja, causam muito dano de longa distância.'),
    ('Suporte', 'Os Controladores, ou, mais comumente conhecidos como jogadores de Suporte, como o seu nome já sugere, devem trabalhar em prol de sua equipe, tentando sempre prover, veja só, Suporte para os demais Campeões do time! '),
    ('Tanque', 'Quando você pensa em um Tanque, lembra sempre daqueles enormes “carros” de guerra empregados nos grandes conflitos mundiais. Ainda que o conceito não esteja errado, esses Campeões do LoL são utilizados mais como ferramenta de controle do que para causar grandes danos nos inimigos.');

insert into tb_personagem (nome, poder_ataque, poder_defesa, mana, classe_id) values 
	('Camile', 2200, 1150, 800, 3),
    ('Ekko', 2800, 1000, 1300, 1),
    ('Galio', 1500, 3000, 100, 6),
    ('Heimerding', 2300, 800, 1800, 2),
    ('Yasuo', 2800, 1150, 0, 3),
    ('Vayne', 3000, 600, 550, 4),
    ('Thresh', 900, 3600, 1300, 5),
    ('LeBlanc', 3500, 800, 950, 1);
    
SELECT 
    *
FROM
    tb_classe;

SELECT 
    *
FROM
    tb_personagem;

SELECT 
    *
FROM
    tb_personagem
        INNER JOIN
    tb_classe ON tb_personagem.classe_id = tb_classe.id
ORDER BY tb_personagem.id;

SELECT  * FROM tb_personagem where poder_ataque >= 2000;

SELECT  * FROM tb_personagem WHERE poder_defesa >= 1000  AND poder_defesa <= 2000;

SELECT * FROM tb_personagem WHERE nome LIKE 'C%';

