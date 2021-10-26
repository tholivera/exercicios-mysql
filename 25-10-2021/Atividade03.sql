create database db_farmacia_do_bem; -- criando banco de dados

use db_farmacia_do_bem; -- informando qual banco de dados quer utilizar

-- criando tabela 1
 create table tb_categoria (
 
 id bigint auto_increment,
 remedios varchar  (100) not null,
 tarja varchar (100) not null,
 receita varchar (100) not null,
 
 
 primary key (id)
 
 );
 
 -- criando tabela 2
 create table tb_produto (
 
 id bigint auto_increment,
 nome varchar  (300) not null,
 preco decimal (5,2) not null,
 categoria varchar  (300) not null,
 quantidade int (10) not null,
 receitaObg  varchar  (300)  not null,
farmaciaID bigint not null,
 
 primary key (id),
 foreign key (farmaciaID) references tb_categoria(id)
 
 );


insert into tb_categoria (remedios, tarja, receita) values ("Antidepressivo", "Vermelha", "Obrigatório");
insert into tb_categoria (remedios, tarja, receita) values ("Antidepressivo", "Preta", "Obrigatório");
insert into tb_categoria (remedios, tarja, receita) values ("Antigripal", "Sem tarja", "Não obrigatório");
insert into tb_categoria (remedios, tarja, receita) values ("Fitoterápico", "Sem tarja", "Não obrigatório");
insert into tb_categoria (remedios, tarja, receita) values ("Antipsicóticos", "Vermelha", "Obrigatório");
insert into tb_produto (nome, preco, categoria, quantidade, receitaObg, farmaciaID) 
values ("Sertralina",23.50, "Antidepressivo", 2, "Sim", 1);
insert into tb_produto (nome, preco, categoria, quantidade, receitaObg, farmaciaID) 
values ("Rivotril", 23.01, "Antidepressivo", 2, "Sim", 2);
insert into tb_produto (nome, preco, categoria, quantidade, receitaObg, farmaciaID) 
values ("Benegripe", 10.50, "Antigripal", 1, "Não", 3);
insert into tb_produto (nome, preco, categoria, quantidade, receitaObg, farmaciaID)  
values ("Seakalm", 12.60, "Fitoterápico", 1, "Não", 4);
insert into tb_produto (nome, preco, categoria, quantidade, receitaObg, farmaciaID)  
values ("Clozapina", 41.23, "Antipsicóticos", 1, "Sim", 5);
insert into tb_produto (nome, preco, categoria, quantidade, receitaObg, farmaciaID) 
 values ("Cimegripe", 9.99, "Antigripal", 2, "Não", 3);
insert into tb_produto (nome, preco, categoria, quantidade, receitaObg, farmaciaID) 
values ("Maracugina", 35.50, "Fitoterápico", 3, "Não", 4);
insert into tb_produto (nome, preco, categoria, quantidade, receitaObg, farmaciaID)  
values ("Olanzapina", 56.70, "Antipsicóticos", 1, "Sim", 5);


select * from tb_produto where preco > 50;
select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome like "%B%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.farmaciaID;

select tb_categoria.remedios, tb_produto.nome from tb_categoria
 inner join tb_produto on tb_categoria.id = tb_produto.farmaciaID
 where tb_categoria.remedios like "%depre%";
 
