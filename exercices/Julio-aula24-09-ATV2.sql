CREATE DATABASE IF NOT EXISTS ecommerce;

USE ecommerce;

CREATE TABLE IF NOT EXISTS tb_produto (
	id INT UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(55) NOT NULL,
    categoria VARCHAR(55) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DOUBLE NOT NULL,
    quantidade INT NOT NULL
);

INSERT INTO tb_produto (produto, categoria, descricao, valor, quantidade) VALUES
	('Notebook', 'Informática', 'Notebook Lenovo Ultrafino Ideapad S145 I5-1035g1 8gb 256gb S', 3599, 22),
    ('Impressora', 'Informática', 'Impressora a cor multifuncional Epson EcoTank L3150 com wifi 110V/220V preta', 1329, 34),
    ('Smartphone', 'Informática', 'Samsung Galaxy A31 Dual SIM 128 GB Prism crush white 4 GB RAM', 1549, 202),
    ('Chromecast', 'Informática', 'Chromecast 3', 389, 1103),
    ('Tablet', 'Informática', 'Tablet Samsung Galaxy A 10.1 4g 32gb 2gb Ram Android Prata', 1599, 414),
    ('Caixa de som', 'Informática', 'Caixa De Som Stormbox 300w Maxxi Sound - Bivolt', 429, 7),
    ('Smart tv', 'Informática', 'Smart Tv 4k Tcl 55 Tcl55p8m 3 Hdmi 2 Usb Wi-fi Bluetooth', 2699, 246),
    ('Caixa de som', 'Informática', 'Caixa De Som Bluetooth Jbl Charge4 30w Até 20h Reprodução', 1299, 178);
    
SELECT * FROM tb_produto WHERE valor > 500;

SELECT * FROM tb_produto WHERE valor < 500;

UPDATE tb_produto
SET valor = 1300
WHERE id = 3;