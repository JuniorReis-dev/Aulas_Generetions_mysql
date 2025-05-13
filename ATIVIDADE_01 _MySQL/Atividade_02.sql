CREATE DATABASE db_e_commerce;
USE db_e_commerce;

-- Criar a tabela tb_marcas
CREATE TABLE tb_marcas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);

-- Inserir dados na tabela tb_marcas
INSERT INTO tb_marcas (descricao) VALUES ("Nike");
INSERT INTO tb_marcas (descricao) VALUES ("Adidas");
INSERT INTO tb_marcas (descricao) VALUES ("Lacoste");
INSERT INTO tb_marcas (descricao) VALUES ("Gucci");
INSERT INTO tb_marcas (descricao) VALUES ("Louis Vuitton");
INSERT INTO tb_marcas (descricao) VALUES ("H&M");

-- Listar todos os dados da tabela tb_marcas
SELECT * FROM tb_marcas;

-- Criar a tabela tb_produtos sem a coluna dtvalidade
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    preco DECIMAL(6,2),
    marca_id BIGINT,
    FOREIGN KEY (marca_id) REFERENCES tb_marcas(id)
);

-- Inserir dados corrigidos na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, preco, marca_id) 
VALUES ("Tênis Air Force 1", 50, 599.00, 1),
       ("Jaqueta Windrunner", 20, 350.00, 1),
       ("Tênis Ultraboost", 30, 799.00, 2),
       ("Moletom Adidas", 40, 250.00, 2),
       ("Bolsa GG Marmont", 10, 3500.00, 4),
       ("T-shirt Lacoste", 35, 200.00, 3),
       ("Casaco Louis Vuitton", 5, 4200.00, 5),
       ("Calça Jeans H&M", 60, 150.00, 6);
-- uptdate 
UPDATE tb_produtos SET preco = 500.00 WHERE id = 3;
-- mostra os produtos maiores e menores 
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

-- Listar todos os produtos
SELECT * FROM tb_produtos;
