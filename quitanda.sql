-- Criar banco de dados
CREATE DATABASE db_quitanda;

-- Selecionar o banco de dados
USE db_quitanda;

-- Criar Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
data_validade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2022-05-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 1, "2023-03-20", 8.50);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("banana", 100, "2022-03-20", 10.50);


-- Listar todos os produtos
SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 10.00;

SELECT * FROM tb_produtos WHERE preco > 10.00 AND quantidade < 800;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- Atualizar os dados da tabela
UPDATE tb_produtos SET preco = 8.50 WHERE id =  5;

UPDATE tb_produtos SET quantidade = 850 WHERE id =  4;

DELETE FROM tb_produtos WHERE id = 7 OR id = 6;

-- Alteração na estrutura da tabela

ALTER TABLE tb_produtos MODIFY preco decimal(8,2);

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE preco preco DECIMAL(8,2);

DROP DATABASE db_quitanda;

