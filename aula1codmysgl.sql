create database livraria;
use livraria;

create table editora(
cod_editora int auto_increment primary Key,
descricao varchar(45) not null,
endereco varchar(45)
);
create table livro(
cod_livro int primary Key not null auto_increment,
isbn varchar (45) not null,
titulo varchar(45) not null,
num_edicao int,
preco float,
cod_editora int,
foreign key (cod_editora) references editora(cod_editora)
);
create table autor(
cod_autor int primary Key not null auto_increment,
nome varchar(45) not null,
sexo varchar(45),
data_nascimento DATE
);
create table livro_autor(
cod_livro int not null,
cod_autor int not null,
primary key (cod_livro,cod_autor),
foreign key (cod_livro) references livro(cod_livro),
foreign key (cod_autor) references autor(cod_autor)
);
/*alter table editora rename column descricao to nome;*/
alter table editora change descricao nome varchar(45);

/*alter table modify column sexo varchar(1);*/
alter table autor change sexo sexo varchar(1);

alter table livro add constraint isbn unique (isbn);
alter table livro alter column preco set default 10.00;
alter table livro drop column num_edicao;
alter table livro add column edicao int;

create table grupo(
	id_grupo int primary key not null auto_increment,
    nome varchar(45)
);
alter table editora add column id_grupo int;

alter table editora add constraint id_grupo foreign key(id_grupo) references grupo(id_grupo)
on delete set null on update cascade;