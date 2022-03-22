CREATE DATABASE db_pizzaria_legal ;

USE db_pizzaria_legal ;

CREATE TABLE tb_categoria (
id INT AUTO_INCREMENT PRIMARY KEY ,
tiposdepizza VARCHAR(255) NOT NULL ,
comentariocliente VARCHAR(255),
valor INT NOT NULL 
);

SELECT * FROM tb_categoria ;

 INSERT INTO tb_categoria (tiposdepizza , comentariocliente ,
 valor)
 VALUES 
 ("Portuguesa", "Sem cebola", 46 ),
 ("Calabresa", "Sem cebola", 35 ),
 ("Mussarela", "Adicionar bacon", 28 ),
 ("Frango Catupiry", "Adicionar milho", 52 ),
 ("Quatro Queijos" , "Adicionar bacon", 32 ),
 ("Toscana", "Adicionar milho", 25 );
 
 SELECT * FROM tb_categoria;
 
 CREATE TABLE tb_pizza (
id INT AUTO_INCREMENT ,
cliente VARCHAR(255) NOT NULL ,
endereco VARCHAR(255) NOT NULL ,
telefone INT NOT NULL ,
PRIMARY KEY (id),
fk_pizza INT NOT NULL ,
FOREIGN KEY (fk_pizza) REFERENCES tb_categoria (id)
);

INSERT INTO tb_pizza (cliente, endereco, telefone, fk_pizza )
 VALUES
 ( "Lucas", "Rua 1 , 10", 91111-1111, 1 ),
 ( "Jonas", "Rua 2, 11", 92222-2222, 2 ),
 ( "Carina", "Rua 3, 12", 93333-3333, 3),
 ( "Val", "Rua 4, 13", 94444-4444, 4),
 ( "Fatima", "Rua 5, 14", 95555-5555, 5),
 ( "Maria", "Rua 6, 15", 96666-6666, 6),
 ( "Pedro", "Rua 7, 16", 97777-7777, 1),
 ( "Sueli", "Rua 8, 17", 98888-8888 , 5);
 
SELECT * FROM tb_pizza;
 
SELECT * FROM tb_categoria WHERE valor > 45;
 
SELECT * FROM tb_categoria WHERE valor BETWEEN 29 and 60;
 
SELECT * FROM tb_categoria WHERE tiposdepizza LIKE "%C%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.fk_pizza = tb_categoria.id ;

SELECT endereco, tb_categoria.comentariocliente, tb_categoria.tiposdepizza , tb_categoria.valor FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.fk_pizza = tb_categoria.id
WHERE tb_categoria.tiposdepizza = "Mussarela";


 