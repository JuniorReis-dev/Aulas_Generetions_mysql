CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_departamento (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    setor VARCHAR(100) NOT NULL
);

INSERT INTO tb_departamento (setor)
VALUES ("TI");

CREATE TABLE tb_TI_funcionarios (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    data_admissao DATE,
    departamento VARCHAR(100),
    TI_id BIGINT,
    FOREIGN KEY (TI_id) REFERENCES tb_departamento(id)
);

INSERT INTO tb_TI_funcionarios (nome, cargo, salario, data_admissao, departamento, TI_id) 
VALUES 
("Ana Souza", "Analista de Segurança da Informação", 5500.00, "2024-09-15", "TI", 1),
("Carlos Mendes", "Desenvolvedor Backend", 4700.00, "2023-06-10", "TI", 1),
("Fernanda Lima", "Especialista em Cloud Computing", 6200.00, "2022-11-25", "TI", 1),
("Roberto Oliveira", "Administrador de Banco de Dados", 5800.00, "2021-04-18", "TI", 1),
("Marcela Pinto", "Engenheira de DevOps", 6000.00, "2020-12-05", "TI", 1);

SELECT * FROM tb_departamento;
SELECT * FROM tb_TI_funcionarios;
SELECT * FROM tb_TI_funcionarios WHERE salario > 2000;
SELECT * FROM tb_TI_funcionarios WHERE salario < 2000;
UPDATE tb_TI_funcionarios SET salario = 4500.00 WHERE id = 3;

