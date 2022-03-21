CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255) NOT NULL,
quantidade INT,
preco DECIMAL NOT NULL,
categoria VARCHAR(255) NOT NULL,
cor VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO produtos ( produto, quantidade, preco, categoria, cor)
VALUES ( "X Box one", 80, 2700.00, "Eletronicos", "branco");

INSERT INTO produtos ( produto, quantidade, preco, categoria, cor)
VALUES ( "Playstation 2", 35, 450.00, "Eletronicos", "preto");

INSERT INTO produtos ( produto, quantidade, preco, categoria, cor)
VALUES ( "Playstation 5", 65, 4405.00, "Eletronicos", "prata");

INSERT INTO produtos ( produto, quantidade, preco, categoria, cor)
VALUES ( "Atari", 7, 270.00, "Eletronicos", "preto");

INSERT INTO produtos ( produto, quantidade, preco, categoria, cor)
VALUES ( "Nitendo switch", 40, 2307.00, "Eletronicos", "azul e vermelho");

INSERT INTO produtos ( produto, quantidade, preco, categoria, cor)
VALUES ( "Mega drive", 12, 302.00, "Eletronicos", "preto");

INSERT INTO produtos ( produto, quantidade, preco, categoria, cor)
VALUES ( "Super nintendo", 22, 512.00, "Eletronicos", "cinza");

INSERT INTO produtos ( produto, quantidade, preco, categoria, cor)
VALUES ( "Game boy color", 5, 212.00, "Eletronicos", "roxo");

SELECT * FROM produtos;

DELETE FROM produtos WHERE id = 3 or id = 4 or id = 5 or id = 12;

SELECT * FROM produtos WHERE preco> 500;

SELECT * FROM produtos WHERE preco< 500;

UPDATE produtos SET preco = 227 WHERE id = 1;