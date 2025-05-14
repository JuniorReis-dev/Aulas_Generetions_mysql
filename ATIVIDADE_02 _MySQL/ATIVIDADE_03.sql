create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_cartegoria(
 id BIGINT AUTO_INCREMENT PRIMARY KEY,
 nome varchar(255),
 descricao varchar(255)
);
INSERT INTO tb_cartegoria (nome, descricao) 
VALUES 
    ("Medicamentos","Remédios de prescrição e venda livre"),
    ("Higiene pessoal","Itens como sabonetes, shampoos e desodorantes."),
    ("Vitaminas e suplementos","Multivitamínicos, ômega-3 e colágeno etc.");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco int,
    descricao VARCHAR(500),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_cartegoria(id)
);
INSERT INTO tb_produtos (nome, preco, descricao, categoria_id)
VALUES 
    ("Paracetamol 500 mg (acetaminophen)", 45, "Medicamento analgésico e antitérmico utilizado para alívio da febre e dores leves a moderadas.", 1),
    ("Ibuprofeno 400 mg (ibuprofen)", 42, "Anti-inflamatório não esteroide utilizado para tratar inflamações, febre e dores como cefaleia e cólicas.", 1),
    ("Loratadina 10 mg (loratadine)", 30, "Antialérgico utilizado para aliviar sintomas de rinite e urticária sem causar sonolência.", 1),
    ("Cetirizina 10 mg (cetirizine)", 32, "Anti-histamínico utilizado para tratamento de alergias respiratórias e cutâneas.", 1),
    ("Fluoreto de sódio 1450 ppm (sodium fluoride)", 20, "Componente ativo de cremes dentais para prevenção de cáries e fortalecimento do esmalte dental.", 2),
    ("Clorexidina 0,12% (chlorhexidine)", 25, "Antisséptico bucal utilizado para eliminar bactérias e auxiliar no tratamento de gengivite.", 2),
    ("Ácido ascórbico 1 g (ascorbic acid)", 35, "Vitamina C usada para fortalecer o sistema imunológico e prevenir deficiências nutricionais.", 3),
    ("Gluconato de zinco 50 mg (zinc gluconate)", 38, "Suplemento mineral essencial para suporte imunológico e funções celulares.", 3);

select* from tb_produtos;    
select* from tb_produtos where preco > 50;
select* from tb_produtos where preco between 50.00 and 100.00;
SELECT * FROM tb_produtos WHERE nome like "%c%";

select * from tb_cartegoria inner join tb_produtos
ON tb_produtos.categoria_id = tb_cartegoria.id WHERE tb_cartegoria.nome = 'Medicamentos';

-- drop database db_farmacia_bem_estar