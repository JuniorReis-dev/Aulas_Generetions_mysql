create database db_quitanda;

use db_quitanda ;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preco decimal,
primary key (id)
);

INSERT INTO tb_produtos (nome,quantidade,data_validade,preco)
values("banana",1000,"2025-06-12",12.49);
select * from tb_produtos;

INSERT INTO tb_produtos (nome,quantidade,data_validade,preco)
values("Maça",1500,"2025-06-12",12.00),
	  ("Cenoura",2000,"2025-06-12",12.00),
      ("Alface",3500,"2025-06-12",4.00);
select nome,preco from tb_produtos;

SELECT * FROM tb_produtos WHERE id = 3;
 
SELECT * FROM tb_produtos WHERE preco > 5.00;
 
SELECT * FROM tb_produtos WHERE id != 3;
 
SELECT * FROM tb_produtos WHERE nome = "Banana";
 
SELECT * FROM tb_produtos WHERE id = 3 OR nome = "Maçã";
 
SELECT * FROM tb_produtos WHERE id = 2 AND nome = "Maçã";
update tb_produtos set preco = 12.49 where id = 1;
delete from tb_produtos where id = 2 ;

INSERT INTO tb_produtos (nome_produto,quantidade,data_validade,preco)
values("banana Nanica",1000,"2025-06-12",14.49);

alter table tb_produtos modify preco decimal(6,2);
alter table	tb_produtos add descricao varchar(255);
alter table	tb_produtos drop descricao;
alter table	tb_produtos change nome nome_produto varchar(255);


