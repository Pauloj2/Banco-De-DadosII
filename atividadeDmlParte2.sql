use contaBancaria;

insert into banco
(cod_banco, nome)
values
('1', 'Banco do Brasil'),
('4', 'CEF');

insert into agencia
(numero_agencia, endereco, cod_banco)
values
('0562', 'Rua Joaquim Teixeira Alves, 1555', '4'),
('3153', 'Av. Marcelino Pires, 1960', '1');

insert into cliente
(cpf, nome, endereco, sexo)
values
('111.222.333-44', 'Jennifer B souza', 'Rua Cuiabá, 1050', 'F'),
('666.777.888.99', 'Caetano K Lima', 'Rua Ivinhema, 879', 'M'),
('555.444.777-33', 'Silvia Macedo', 'Rua Estados Unidos, 735', 'F');

insert into conta
(num_conta, saldo, tipo_conta, numero_agencia)
values
('86340-2', '763.05', '2', '3153'),
('23584-7', '3879.12', '1', '0562');

insert into historico
(cpf, num_conta, data_inicio)
values
('111.222.333-44', '23584-7', '1997-12-17'),
('666.777.888.99', '23584-7', '1997-12-17'),
('555.444.777-33', '86340-2', '2010-11-29');

insert into telefone_cliente
(cpf, telefone) 
values
('111.222.333-44', '(67)3422-7788'),
('666.777.888.99', '(67)3423-9900'),
('666.777.888.99', '(67)8121-8833');

select * from banco;
select * from agencia;
select * from cliente;
select * from conta;
select * from historico;
select * from telefone_cliente;


