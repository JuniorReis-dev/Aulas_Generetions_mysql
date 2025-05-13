CREATE DATABASE db_escola;
USE db_escola;

-- Criar a tabela de alunos corrigida
CREATE TABLE tb_alunos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ra INT NOT NULL UNIQUE,
    idade INT NOT NULL,
    data_nascimento DATE,
    notas_final INT NOT NULL
);

-- Inserir dados corrigidos na tabela de alunos
INSERT INTO tb_alunos (nome, ra, idade, data_nascimento, notas_final)
VALUES 
("Ana Silva", 23567, 16, "2008-05-20", 9),
("Carlos Mendes", 235672, 17, "2007-03-15", 8),
("Fernanda Lima", 235673, 15, "2009-01-10", 7),
("Roberto Oliveira", 235674, 18, "2006-07-22", 9),
("Marcela Pinto", 235675, 16, "2008-09-30", 7),
("Bruno Costa", 235676, 17, "2007-11-05", 8),
("Juliana Santos", 235677, 15, "2009-04-18", 6),
("Eduardo Nunes", 235678, 16, "2008-12-12", 8);

-- Atualizar nota de um aluno
UPDATE tb_alunos SET notas_final = 10 WHERE id = 3;

-- Selecionar alunos com nota maior que 7.0
SELECT * FROM tb_alunos WHERE notas_final > 7.0;

-- Selecionar alunos com nota menor que 7.0
SELECT * FROM tb_alunos WHERE notas_final < 7.0;

-- Listar todos os alunos
SELECT * FROM tb_alunos;
drop database db_escola;
