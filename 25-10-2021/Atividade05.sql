create database db_construindo_a_nossa_vida; -- criando banco de dados

use db_construindo_a_nossa_vida; -- informando qual banco de dados quer utilizar

-- criando tabela 1
 create table tb_categoria (
 
 id bigint auto_increment,
 categoria varchar  (100) not null,
 uso varchar (100) not null,
 transporte varchar (100) not null,
  
 primary key (id)
 );
 
 -- criando tabela 2
 create table tb_produto (
 
 id bigint auto_increment,
 nome varchar  (300) not null,
 preco decimal (5,2) not null,
 peso varchar  (300) not null,
 quantidade int (10) not null,
 produtoID bigint not null,
 
 primary key (id),
 foreign key (produtoID) references tb_categoria(id)
 
 );


insert into tb_categoria (categoria, uso, transporte) values ("Construção", "Externo", "Carro pequeno");
insert into tb_categoria (categoria, uso, transporte) values ("Construção", "Externo", "Carro grande");
insert into tb_categoria (categoria, uso, transporte) values ("Construção", "Interno", "Carro pequeno");
insert into tb_categoria (categoria, uso, transporte) values ("Construção", "Interno", "Carro grande");
insert into tb_categoria (categoria, uso, transporte) values ("Jardim", "Externo", "Carro grande");
insert into tb_produto (nome, preco, peso, quantidade, produtoID) values ("Cimento", 27.09, 50, 1, 1);
insert into tb_produto (nome, preco, peso, quantidade, produtoID) values ("Argamassa", 22.90, 20, 3, 1);
insert into tb_produto (nome, preco, peso, quantidade, produtoID) values ("Tijolo baiano", 0.95 , 1, 4, 2);
insert into tb_produto (nome, preco, peso, quantidade, produtoID) values ("Areia", 110, 80, 1, 2);
insert into tb_produto (nome, preco, peso, quantidade, produtoID) values ("Piso", 27.09, 5, 8, 3);
insert into tb_produto (nome, preco, peso, quantidade, produtoID) values ("Cal de pintura", 12.09, 20, 6, 3);
insert into tb_produto (nome, preco, peso, quantidade, produtoID) values ("Grama", 100, 10, 4, 5);
insert into tb_produto (nome, preco, peso, quantidade, produtoID) values ("Churrasqueira", 2.709, 80, 1, 5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.produtoID;

select tb_categoria.categoria, tb_produto.nome from tb_categoria
 inner join tb_produto on  tb_categoria.id = tb_produto.produtoID
where tb_categoria.categoria like "%ão%";