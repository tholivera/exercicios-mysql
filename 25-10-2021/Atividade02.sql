create database db_pizzaria_legal; -- criando banco de dados

use db_pizzaria_legal; -- informando qual banco de dados quer utilizar

-- criando tabela 1
 create table tb_categoria (
 
 id bigint auto_increment,
 bebida varchar  (100) not null,
 tipoPizza varchar (100) not null,
 borda varchar (100) not null,
 
 
 primary key (id)
 
 );
 
 -- criando tabela 2
 create table tb_pizza (
 
 id bigint auto_increment,
 nome varchar  (300) not null,
 preco decimal (5,2) not null,
 tamanho varchar  (300) not null,
 quantidade int (10) not null,
 ingredientes  varchar  (300)  not null,
 pizzaID bigint not null,
 
 primary key (id),
 foreign key (pizzaID) references tb_categoria(id)
 
 );


insert into tb_categoria (bebida, tipoPizza, borda) values ("Coca Cola", "Doce", "Sem borda");
insert into tb_categoria (bebida, tipoPizza, borda) values ("Guaraná", "Salgado", "Com borda");
insert into tb_categoria (bebida, tipoPizza, borda) values ("Fanta laranja", "1/2 doce 1/2 salgado", "Sem borda");
insert into tb_categoria (bebida, tipoPizza, borda) values ("Fanta Uva", "2 sabores", "Com borda");
insert into tb_categoria (bebida, tipoPizza, borda) values ("Pepsi", "3 sabores", "Sem borda");
insert into tb_pizza (nome, preco, tamanho, quantidade, ingredientes, pizzaID) 
values ("Calabresa", 30.00, "Grande", 1, "Calabresa e cebola", 2);
insert into tb_pizza (nome, preco, tamanho, quantidade, ingredientes, pizzaID) 
values ("Mussarela", 47.00, "Grande", 1, "Mussarela e tomate", 2);
insert into tb_pizza (nome, preco, tamanho, quantidade, ingredientes, pizzaID) 
values ("Chocolate com morango", 24.00, "Broto", 2, "Chocolate com morango", 1);
insert into tb_pizza (nome, preco, tamanho, quantidade, ingredientes, pizzaID) 
values ("Prestígio", 40.00, "Grande", 1, "Chocolate com coco", 1);
insert into tb_pizza (nome, preco, tamanho, quantidade, ingredientes, pizzaID) 
values ("Portuguesa", 80.00, "Grande", 4, "Ovo, calabresa, mussarela, cebola, alecrim, queijo gorgonzola, espinafre", 2);
insert into tb_pizza (nome, preco, tamanho, quantidade, ingredientes, pizzaID) 
values ("4 Queijos", 60.00, "Broto", 2, "Mussarela, Catupiry, Gorgonzola, Queijo Branco", 2);
insert into tb_pizza (nome, preco, tamanho, quantidade, ingredientes, pizzaID) 
values ("Frango com Catupiry", 36.00, "Grande", 1, "Frango e Catuíry", 2);
insert into tb_pizza (nome, preco, tamanho, quantidade, ingredientes, pizzaID) 
values ("Brigadeiro", 40.00, "Grande", 1, "Brigadeiro", 1);

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco > 29 and preco < 60;

select * from tb_pizza where nome like "%C%";

select * from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.pizzaID;

select tb_categoria.tipoPizza, tb_pizza.nome from tb_categoria
 inner join tb_pizza on  tb_categoria.id = tb_pizza.pizzaID
where tb_categoria.tipoPizza like "%oce%";



