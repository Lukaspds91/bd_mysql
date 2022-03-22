CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT,
	tipo varchar(255) NOT NULL,
    descricao varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("Antialérgico", "para alergias");

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("Analgesicos", "para dor corporal");

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("Anti-inflamatório", "para inflamações");

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("cloridrato de fenilefina", "anti gripal");

INSERT INTO tb_categoria (tipo,descricao)
VALUES ("Nitazoxanida", "vermicida");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint AUTO_INCREMENT,
    marca varchar(255) NOT NULL,
    quantidade varchar(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT, 
    PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
	   
);

INSERT INTO tb_produto (marca, quantidade, valor,categoria_id)
VALUES 
("Polaramine","500ml", 62.79 , 1),
("Alegra","500ml", 47.59 , 1),
("Dorflex","200ml", 2.79, 2),
("Naldex","100ml", 23.49 , 2),
("PInflam","150ml", 27.89 , 3),
("Laranax","300ml", 32.15 , 4),
("Vermic","300ml", 54.99 , 5),
("Bengue","100ml", 13.29 , 3),
("Invermectinma","200ml", 65.59, 5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor>50;

SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE marca LIKE "%B%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "Nitazoxanida";
