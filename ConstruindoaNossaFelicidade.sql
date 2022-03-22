CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	tipo VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Vergalhão", "Ferragem");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Energia", "Eletrica");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Construção", "Alvenaria");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Canos", "Hidraulico");

INSERT INTO tb_categoria (tipo,categoria)
VALUES ("Tinta", "Textil");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT, 
    PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
	   
);

INSERT INTO tb_produto (nome, quantidade, valor,categoria_id)
VALUES
("Gerdau - Coluna armada", "8m", 296.77 , 1),
("Gerdau - Pregos 18x27", "1 pct", 12.90, 1),
("Sil - Cabo flexivel 2,5", "500m", 949.50, 2),
("Osram - Lâmpanda 6w", "10un", 68.00, 2),
("Votorantim - Cimento", "50kg", 27.89, 3),
("Quartzolit - Argamassa", "20kg", 199.33, 3),
("Tigre - Cano 3/4", "10m", 63.29, 4),
("Cometa - Tinta acrilica", "5l", 142.90, 5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor>50;

SELECT* FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT*FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Energia";