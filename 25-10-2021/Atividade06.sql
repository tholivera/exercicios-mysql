create database db_cursoDaMinhaVida; -- criando banco de dados

use db_cursoDaMinhaVida; -- informando qual banco de dados quer utilizar

-- criando tabela 1
 create table tb_categoria (
 
 id bigint auto_increment,
 categoria varchar  (100) not null,
 turmasAno tinyint (2) not null,
 elegivelGratuito varchar (100) not null,
 
 
 primary key (id)
 
 );
 
 -- criando tabela 2
 create table tb_curso (
 
 id bigint auto_increment,
 nome varchar  (300) not null,
 preco decimal (5,2) not null,
 horas varchar  (300) not null,
 cursoID bigint not null,
 
 primary key (id),
 foreign key (cursoID) references tb_categoria(id)
 
 );



insert into tb_categoria (categoria, turmasAno, elegivelGratuito) values ("Idiomas", 6, "Não");
insert into tb_categoria (categoria, turmasAno, elegivelGratuito) values ("Negócios", 3, "Sim");
insert into tb_categoria (categoria, turmasAno, elegivelGratuito) values ("Tecnologia", 10, "Sim");
insert into tb_categoria (categoria, turmasAno, elegivelGratuito) values ("Beleza", 3, "Não");
insert into tb_categoria (categoria, turmasAno, elegivelGratuito) values ("Exatas", 2, "Sim");
insert into tb_curso (nome, preco, horas, cursoID) values ("Matemática", 150, 200, 5);
insert into tb_curso (nome, preco, horas, cursoID) values ("Analise e Desenvolvimento de Sistemas", 200, 400, 3);
insert into tb_curso (nome, preco, horas, cursoID) values ("Administração", 250, 1000, 2);
insert into tb_curso (nome, preco, horas, cursoID) values ("Inglês", 120, 600, 1);
insert into tb_curso (nome, preco, horas, cursoID) values ("Micropigmentação", 300, 200, 4);
insert into tb_curso (nome, preco, horas, cursoID) values ("Marketing", 250, 800, 2);
insert into tb_curso (nome, preco, horas, cursoID) values ("Física", 150, 1000, 4);
insert into tb_curso (nome, preco, horas, cursoID) values ("Alemão", 180, 800, 1);


select * from tb_curso where preco > 50;
select * from tb_curso where preco > 3 and preco < 60;

select * from tb_curso where nome like "%C%";

select * from tb_curso
inner join tb_categoria on tb_categoria.id = tb_curso.cursoID;

select tb_categoria.categoria, tb_curso.nome from tb_categoria
 inner join tb_curso on tb_categoria.id = tb_curso.cursoID
where tb_categoria.categoria like "%idi%";