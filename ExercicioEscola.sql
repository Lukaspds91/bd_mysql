CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
nota DECIMAL NOT NULL,
materia VARCHAR(255),
turma INT,
PRIMARY KEY (id)
);

INSERT INTO estudantes ( nome, idade, nota, materia, turma)
VALUES ( "Lucas Silva", 14, 9.5, "português", " 1 ");

INSERT INTO estudantes ( nome, idade, nota, materia, turma)
VALUES ( "Carina Ribeiro", 14, 9.0, "português", " 1 ");

INSERT INTO estudantes ( nome, idade, nota, materia, turma)
VALUES ( "Maria Silva", 15, 10.0, "matemática ", " 2 ");

INSERT INTO estudantes ( nome, idade, nota, materia, turma)
VALUES ( "Jonas Aguiar", 15, 9.5, "matemática", " 2 ");

INSERT INTO estudantes ( nome, idade, nota, materia, turma)
VALUES ( "Alex Rubino", 13, 7.0, "história", " 3 ");

INSERT INTO estudantes ( nome, idade, nota, materia, turma)
VALUES ( "Tatiane Silva", 13, 8.7, "história", " 3 ");

INSERT INTO estudantes ( nome, idade, nota, materia, turma)
VALUES ( "Sergio Alves", 17, 5.0, "matemática", " 4 ");

INSERT INTO estudantes ( nome, idade, nota, materia, turma)
VALUES ( "Davi Ribeiro", 17, 9.0, "matemática", " 4 ");

SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE nota> 7.0;

SELECT * FROM estudantes WHERE nota< 7.0;

SELECT * FROM estudantes WHERE nota = 7.0;

UPDATE estudantes SET materia = "inglês" WHERE id = 4;

ALTER TABLE estudantes MODIFY nota DECIMAL(8,1);

ALTER TABLE estudantes CHANGE nota nota DECIMAL(8,1);

