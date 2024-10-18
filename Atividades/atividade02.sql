create database contaBancaria;
use contaBancaria;

create table banco(
	cod_banco int not null primary key auto_increment,
	nome varchar(45)
);

create table agencia(
	numero_agencia int not null,
    cod_banco int not null,
    endereco varchar(100),
    primary key (numero_agencia, cod_banco),
    foreign key fk_banco(cod_banco) references banco(cod_banco)
);

create table conta(
	num_conta varchar(7) not null primary Key,
    saldo float not null,
    tipo_conta int,
    numero_agencia int not null,
    foreign key fk_agencia(numero_agencia) references agencia(numero_Agencia)
);
create table cliente(
	cpf varchar (14) not null primary key,
    nome varchar(45) not null,
    endereco varchar(100),
    sexo char(1)
);

create table historico(
	cpf varchar(14) not null,
    num_conta varchar(7),
    data_inicio date,
    primary key (cpf, num_conta),
    foreign key (cpf) references cliente(cpf),
    foreign Key (num_conta) references conta(num_conta)
);

create table telefone_cliente(
	cpf varchar (14) not null,
    telefone varchar(20),
    primary key (cpf, telefone),
    foreign key (cpf) references cliente(cpf)
);