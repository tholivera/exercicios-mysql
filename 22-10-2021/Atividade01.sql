create database db_funcionarios; -- criando um novo banco de dados

use db_funcionarios; -- dizendo qual banco de dados quer usar 

-- criando tabela
create table tb_salarios (

	id bigint auto_increment,
    nome varchar(255) not null,
    funcao varchar(255) not null,
    salario decimal (8,2) not null,
    departamento varchar(255) not null,
    cc char(6) not null,
    
    primary key(id)

);
-- inserindo dados
insert into tb_salarios(nome, funcao, salario, departamento, cc) values("Robson Dias", "Engenheiro Assistente", 5000.00, "Engenharia", "587596");
insert into tb_salarios(nome, funcao, salario, departamento, cc) values("Mariana Andrade", "Engenheira Senior", 15000.00, "Engenharia", "587596"); 
insert into tb_salarios(nome, funcao, salario, departamento, cc) values("Matheus Gustavo", "Assistente de Compras", 2000.00, "Compras", "587580");
insert into tb_salarios(nome, funcao, salario, departamento, cc) values("Thaynara Lima", "Estagiária", 1800.00, "Compras", "587580");
insert into tb_salarios(nome, funcao, salario, departamento, cc) values("Thales Bueno", "Aprendiz - Engenharia", 1350.00, "Engenharia", "587596");
insert into tb_salarios(nome, funcao, salario, departamento, cc) values("Katarina Castilho", "Marketing", 9000.00, "Comunicação", "587400");

-- visualizando
select * from tb_salarios;

select * from tb_salarios where salario > 2000;

select * from tb_salarios where salario < 2000;

-- atualizando
update tb_salarios set funcao = "Assistente de Compras", salario = 2000 where id = 4;


-- visualizando atualização
select * from tb_salarios;

