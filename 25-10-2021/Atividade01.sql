create database db_generation_game_online; -- criando banco de dados

use db_generation_game_online; -- informando qual banco de dados quer utilizar

-- criando tabela 1
 create table tb_classe (
 
 id bigint auto_increment,
 nome varchar  (300) not null,
 tipo varchar (100) not null,
 classificacao tinyint (2),
 
 
 primary key (id)
 
 );
 
 -- criando tabela 2
 create table tb_personagens (
 
 id bigint auto_increment,
 nome varchar  (300) not null,
 altura decimal (3,2) not null,
 habilidade varchar  (300) not null,
 poderDeDefesa int (10) not null,
 poderDeAtaque int (10) not null,
 personagensID bigint not null,
 
 primary key (id),
 foreign key (personagensID) references tb_classe(id)
 
 );


insert into tb_classe (nome, tipo, classificacao) values ("O Grande Fortão", "Luta", 14);
insert into tb_classe (nome, tipo, classificacao) values ("O Mistério de Fiurinha", "Suspense", 16);
insert into tb_classe (nome, tipo, classificacao) values ("O Palácio do Planalto", "Crime", 18);
insert into tb_classe (nome, tipo, classificacao) values ("As Patricinhas de São Paulo Hills", "Aventura", 12);
insert into tb_classe (nome, tipo, classificacao) values ("Cássio Bross", "Aventura", 10);
insert into tb_personagens (nome, altura, habilidade, poderDeDefesa, poderDeAtaque, personagensID) 
values ("Lair Gloglossauro", 1.85, "Histórico de atleta", 800, 1000, 3);
insert into tb_personagens (nome, altura, habilidade, poderDeDefesa, poderDeAtaque, personagensID) 
values ("Xaxa", 1.70, "Chamar a mamãe", 800, 3000, 2);
insert into tb_personagens (nome, altura, habilidade, poderDeDefesa, poderDeAtaque, personagensID) 
values ("Athena", 1.63, "Arte chinesa", 3500, 5000, 1);
insert into tb_personagens (nome, altura, habilidade, poderDeDefesa, poderDeAtaque, personagensID)
values ("Cris", 1.60, "Ser incrível", 2000, 2800, 4);
insert into tb_personagens (nome, altura, habilidade, poderDeDefesa, poderDeAtaque, personagensID)
values ("Neyraldo", 1.78, "Cair e chorar", 3000, 5000, 5);
insert into tb_personagens (nome, altura, habilidade, poderDeDefesa, poderDeAtaque, personagensID)
values ("Gutinho", 1.58, "Pular muito muito alto", 1800, 2000, 1);
insert into tb_personagens (nome, altura, habilidade, poderDeDefesa, poderDeAtaque, personagensID) 
values ("Cristal", 1.30, "Brilhar", 1200, 1800, 5);
insert into tb_personagens (nome, altura, habilidade, poderDeDefesa, poderDeAtaque, personagensID) 
values ("Marionete", 1.80, "Controle de corpos", 3000, 6000, 3);
 
 select * from tb_personagens where poderDeAtaque > 2000;
select * from tb_personagens where poderDeDefesa > 1000 and poderDeDefesa < 2000;

select * from tb_personagens where nome like "%C%";

select * from tb_personagens
inner join tb_classe on tb_classe.id = tb_personagens.personagensID;

select tb_classe.tipo, tb_personagens.nome from tb_classe
inner join tb_personagens on tb_classe.id = tb_personagens.personagensID
where tb_classe.tipo like "%ta%";

