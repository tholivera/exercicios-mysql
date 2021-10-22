create database db_escola; -- criando banco de dados

use db_escola; -- informando qual banco de dados quer usar


-- criando tabela
create table tb_alunos (

id bigint auto_increment,
nome varchar (255) not null,
idade tinyint (3) not null,
serie tinyint (2) not null,
nota tinyint (2) not null,
irmaoNaEsc char (3) not null,

primary key (id)

);

-- inserindo dados

insert into tb_alunos (nome, idade, serie, nota, irmaoNaEsc) values ("Maria Joaquina", 10, 5, 6, "Não");
insert into tb_alunos (nome, idade, serie, nota, irmaoNaEsc) values ("Cirilo", 10, 5, 10, "Não");
insert into tb_alunos (nome, idade, serie, nota, irmaoNaEsc) values ("Pedro Gabriel", 9, 4, 9, "Sim");
insert into tb_alunos (nome, idade, serie, nota, irmaoNaEsc) values ("Brenno Gael", 5, 1, 10, "Sim");
insert into tb_alunos (nome, idade, serie, nota, irmaoNaEsc) values ("Stephane Oliveira", 14, 9, 5, "Sim");
insert into tb_alunos (nome, idade, serie, nota, irmaoNaEsc) values ("Roberto Carlos", 12, 7, 8, "Não");
insert into tb_alunos (nome, idade, serie, nota, irmaoNaEsc) values ("Irineu", 7, 2, 8, "Não");
insert into tb_alunos (nome, idade, serie, nota, irmaoNaEsc) values ("Marcia Lopes", 14, 8, 2, "Sim");

-- visualizando 

select * from tb_alunos;

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

-- atualizando
update tb_alunos set irmaoNaEsc = "Sim" where id = 7;

-- visualizando atualização

select * from tb_alunos;

