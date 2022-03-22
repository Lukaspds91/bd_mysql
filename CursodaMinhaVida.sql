CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	tipo VARCHAR(255) NOT NULL,
    tempo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("longa duração", "160horas");

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("longa duração", "140horas");

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("longa duração", "100horas");

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("curta duração", "40horas");

INSERT INTO tb_categoria (tipo,tempo)
VALUES ("curta duração", "20horas");

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
	id BIGINT AUTO_INCREMENT,
    curso VARCHAR(255) NOT NULL,
    professor VARCHAR(255) NOT NULL,
    valor DECIMAL (10,2) NOT NULL,
    categoria_id BIGINT, 
    PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
	   
);

INSERT INTO tb_curso (curso,professor, valor,categoria_id)
VALUES 
("Java", "Jonas", 1000 , 1),
("Go-Lang", "Carina", 1500 , 1),
("JavaScript", "Lorena", 800 , 2),
("MySql", "Lucas", 900 , 2),
("GIT", "Maria", 550 , 3),
("Angular", "Fatima", 450 , 3),
("HTML", "Murillo", 48 , 4),
("CSS", "Victor", 40 , 5);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE valor>50;

SELECT* FROM tb_curso WHERE valor BETWEEN 3 AND 60;

SELECT*FROM tb_curso WHERE curso LIKE "%j%";

SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.categoria_id = tb_categoria.id;

SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo = "curta duração";
