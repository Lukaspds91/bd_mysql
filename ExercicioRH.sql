CREATE DATABASE RH;

USE RH;

CREATE TABLE Funcionario(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
funcao VARCHAR(255) NOT NULL,
salario DECIMAL NOT NULL,
setor VARCHAR(255) NOT NULL,
RE INT,
PRIMARY KEY (id)
);

INSERT INTO Funcionario ( nome, funcao, salario, setor, RE)
VALUES ( "Cleverson", "Analista pl", 1500.00, "compras", 20);

INSERT INTO Funcionario ( nome, funcao, salario, setor, RE)
VALUES ( "Sabrina", "Analista jr", 1350.00, "logistica", 21);

INSERT INTO Funcionario ( nome, funcao, salario, setor, RE)
VALUES ( "Emanuel", "Analista pl", 1500.00, "vendas", 22);

INSERT INTO Funcionario ( nome, funcao, salario, setor, RE)
VALUES ( "Lucas", "Analista sr", 2600.00, "compras", 23);

INSERT INTO Funcionario ( nome, funcao, salario, setor, RE)
VALUES ( "Carina", "Diretora", 4500.00, "vendas", 24);

SELECT * FROM Funcionario;

SELECT * FROM Funcionario WHERE salario> 2000;

SELECT * FROM Funcionario WHERE salario< 2000;

UPDATE Funcionario SET salario = 1550 WHERE id = 2;