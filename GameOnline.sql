CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
id BIGINT AUTO_INCREMENT,
subclasse VARCHAR(255) NOT NULL,
classe VARCHAR (255) NOT NULL, 
superclasse VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classe (subclasse, classe, superclasse)
VALUES ("ladrão", "capanga", "mafioso");

INSERT INTO tb_classe (subclasse, classe, superclasse)
VALUES ("aventureiro", "guerreiro", "cavaleiro");

INSERT INTO tb_classe (subclasse, classe, superclasse)
VALUES ("aprendiz", "arqueiro", "paladino");

INSERT INTO tb_classe (subclasse, classe, superclasse)
VALUES ("mago", "bruxo", "feiticeiro");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
nivel INT,
genero VARCHAR (255) NOT NULL,
poderataque INT,
poderdefesa INT, 
fk_classe BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, nivel, genero, poderataque, poderdefesa, fk_classe)
VALUES ( "Ragnar", 12 , "Masculino" , 2500 , 2200, 2);

INSERT INTO tb_personagem (nome, nivel, genero, poderataque, poderdefesa, fk_classe)
VALUES ( "Snow", 12 , "Masculino" , 1858 , 780, 1);

INSERT INTO tb_personagem (nome, nivel, genero, poderataque, poderdefesa, fk_classe)
VALUES ( "Bloodfire", 12 , "Feminino" , 1900 , 1480, 4);

INSERT INTO tb_personagem (nome, nivel, genero, poderataque, poderdefesa, fk_classe)
VALUES ( "Trable", 12 , "Feminino" , 1500 , 2540, 3);

INSERT INTO tb_personagem (nome, nivel, genero, poderataque, poderdefesa, fk_classe)
VALUES ( "Lwafey", 12 , "Masculino" , 2850 , 900, 3);

INSERT INTO tb_personagem (nome, nivel, genero, poderataque, poderdefesa, fk_classe)
VALUES ( "Chamning", 12 , "Feminino" , 1987 , 1589, 1);

INSERT INTO tb_personagem (nome, nivel, genero, poderataque, poderdefesa, fk_classe)
VALUES ( "Dornee", 12 , "Masculino" , 1569 , 2045, 4);

INSERT INTO tb_personagem (nome, nivel, genero, poderataque, poderdefesa, fk_classe)
VALUES ( "Messery", 12 , "Feminino" , 454 , 1858, 2);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE poderataque > 2000;

SELECT * FROM tb_personagem WHERE poderdefesa BETWEEN 1000 AND 2000; 	

SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.fk_classe = tb_classe.id;

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.fk_classe = tb_classe.id WHERE tb_classe.classe = "Arqueiro";