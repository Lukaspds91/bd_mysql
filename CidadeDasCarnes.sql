CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	tipo VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Bovina", "Vermelha");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Bovina 2º", "Vermelha");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Suina", "Vermelha");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Peixe", "Branca");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Ave", "Branca");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade VARCHAR(255) NOT NULL,
    valor DECIMAL (10,2) NOT NULL,
    categoria_id BIGINT, 
    PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
	   
);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES 
("Patinho", "500g", 35.90, 1),
("Cochão duro", "500g", 12.25, 2),
("Picanha suina", "450g", 50.90, 3),
("Linguiça", "550g", 7.90, 3),
("Frango", "1Kg", 35.90, 5),
("Corvina", "500g", 17.90, 4),
("Bacalhau", "400g", 22.90, 4),
("Chuleta", "500g", 27.89, 2),
("Peru", "1.5Kg", 77.50, 5),
("Baby beef", "500g", 35.90, 1);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor>50;

SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Ave";
