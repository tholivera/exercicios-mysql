create database db_cidade_das_frutas; -- criando banco de dados

use db_cidade_das_frutas; -- informando qual banco de dados quer utilizar

-- criando tabela 1
 create table tb_categoria (
 
 id bigint auto_increment,
 tipo varchar  (100) not null,
 origem varchar (100) not null,
 vitamina char (3) not null,
 
 
 primary key (id)
 
 );
 
 -- criando tabela 2
 create table tb_produto (
 
 id bigint auto_increment,
 nome varchar  (300) not null,
 preco decimal (5,2) not null,
 tamanho varchar  (300) not null,
 quantidade int (10) not null,
 recomendSuc  varchar  (300)  not null,
 frutaID bigint not null,
 
 primary key (id),
 foreign key (frutaID) references tb_categoria(id)
 
 );


insert into tb_categoria (tipo, origem, vitamina) values ("Ácida", "Ásia", "C");
insert into tb_categoria (tipo, origem, vitamina) values ("Doce", "Ásia", "C");
insert into tb_categoria (tipo, origem, vitamina) values ("Hiper-hídrica", "África", "C");
insert into tb_categoria (tipo, origem, vitamina) values ("Oleaginosa", "México", "E");
insert into tb_categoria (tipo, origem, vitamina) values ("Semiácida", "Ásia", "C");
insert into tb_produto (nome, preco, tamanho, quantidade, recomendSuc, frutaID) 
values ("Limão", 2.30, "Médio", 12, "Sim", 1);
insert into tb_produto (nome, preco, tamanho, quantidade, recomendSuc, frutaID) 
values ("Melância", 15.00, "Grande", 1, "Sim", 3);
insert into tb_produto (nome, preco, tamanho, quantidade, recomendSuc, frutaID) 
values ("Manga", 2.50, "Média", 2, "Sim", 5);
insert into tb_produto (nome, preco, tamanho, quantidade, recomendSuc, frutaID) 
values ("Abacate", 6.14, "Pequeno", 3, "Não", 4);
insert into tb_produto (nome, preco, tamanho, quantidade, recomendSuc, frutaID) 
values ("Laranja",58.00 , "Média", 8, "Sim", 1);
insert into tb_produto (nome, preco, tamanho, quantidade, recomendSuc, frutaID) 
values ("Banana",30.00 , "Médio",12 , "Não", 2);
insert into tb_produto (nome, preco, tamanho, quantidade, recomendSuc, frutaID) 
values ("Maçã", 41.70 , "Grande", 3, "Não", 2);
insert into tb_produto (nome, preco, tamanho, quantidade, recomendSuc, frutaID) 
values ("Morango", 80.00, "Grande", 10, "Sim", 1);


select * from tb_produto where preco > 45;
select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.frutaID;

select tb_categoria.tipo, tb_produto.nome from tb_categoria
 inner join tb_produto on tb_categoria.id = tb_produto.frutaID
where tb_categoria.tipo like "%oce%";