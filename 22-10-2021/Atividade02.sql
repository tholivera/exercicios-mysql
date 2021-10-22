create database db_ecommerce; -- criando um novo banco de dados

use db_ecommerce; -- dizendo qual banco de dados quer usar

-- criando tabela

create table tb_produtos (

id bigint auto_increment,
nome varchar(255) not null,
categoria varchar(255) not null,
preco decimal (8,2) not null,
tipoDeEntrega varchar(255) not null,
economico varchar (3) not null,

primary key(id)

);

-- inserindo dados

insert into tb_produtos (nome, categoria, preco, tipoDeEntrega, economico) values ("Cimento", "Construção", 27.80, "Carro pequeno", "Sim");
insert into tb_produtos (nome, categoria, preco, tipoDeEntrega, economico) values ("Tijolo baiano","Construção", 0.95,"Carreto", "Não");
insert into tb_produtos (nome, categoria, preco, tipoDeEntrega, economico) values ("Tinta Standard", "Pintura", 89.9, "Carro pequeno", "Sim");
insert into tb_produtos (nome, categoria, preco, tipoDeEntrega, economico) values ("Lustre", "Decoração", 1200, "Carro pequeno", "Não");
insert into tb_produtos (nome, categoria, preco, tipoDeEntrega, economico) values ("Tapete 3,00mX5,00m","Decoração", 1800, "Carro grande", "Não");
insert into tb_produtos (nome, categoria, preco, tipoDeEntrega, economico) values ("Churrasqueira","Jardim e Varanda", 5000.20, "Carreto", "Não");

-- visualizando
select * from tb_produtos;

select * from tb_produtos where preco > 800;

select * from tb_produtos where preco < 800;

-- atualizando
update tb_produtos set nome = "Tapete 2,50mX2,50m", preco = 850 where id = 5;


-- visualizando atualização
select * from tb_produtos;