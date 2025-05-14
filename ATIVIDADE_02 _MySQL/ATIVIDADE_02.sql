create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_cartegoria(
 id BIGINT AUTO_INCREMENT PRIMARY KEY,
 sabor varchar(255),
 descricao varchar(255)
);
INSERT INTO tb_cartegoria (sabor, descricao) 
VALUES 
    ("tradicional","Pizzas clássicas"),
    ("Doce","Pizzas de chocolate, brigadeiro, banana com canela, entre outras"),
    ("Vegana","Pizzas sem ingredientes de origem animal");

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco int,
    descricao VARCHAR(500),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_cartegoria(id)
);
INSERT INTO tb_pizzas (nome, preco, descricao, categoria_id)
VALUES 
    ("Chocolate com Morango", 45, "Deliciosa pizza com ganache de chocolate meio amargo, morangos frescos e raspas de chocolate branco.", 2),
    ("Banana com Canela", 42, "Massa tradicional coberta com banana caramelizada, açúcar mascavo e toque suave de canela.", 2),
    ("Calabresa", 50, "Mussarela derretida, fatias de calabresa levemente douradas e cebola fatiada.", 1),
    ("Portuguesa", 55, "Presunto, ovo cozido, cebola, azeitonas pretas, pimentão e mussarela.", 1),
    ("Legumes Grelhados", 48, "Pizza saudável com abobrinha, berinjela, pimentão vermelho e tomate cereja assados.", 3),
    ("Tofu com Rúcula", 52, "Molho de tomate pelado, tofu temperado, folhas frescas de rúcula e castanhas trituradas.", 3);
select* from tb_pizzas;    
select* from tb_pizzas where preco > 50;
select* from tb_pizzas where preco between 50.00 and 100.00;
SELECT * FROM tb_pizzas WHERE nome like "%m%";

select * from tb_cartegoria inner join tb_pizzas
ON tb_pizzas.categoria_id = tb_cartegoria.id WHERE tb_cartegoria.sabor = 'doce';

-- drop database db_pizzaria_legal