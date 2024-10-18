use contabancaria;

alter table cliente
add  column email varchar(50);

SELECT cpf, endereco
FROM cliente
WHERE nome LIKE 'C%';

UPDATE agencia SET numero_agencia = '0562'
Where numero_agencia = '6342';

update cliente
set email = 'caetanolima@gmail.com'
where cpf = '666.777.888.99';

update conta
set saldo = saldo * 1.10
where num_conta = '23584-7';

insert into agencia
(numero_agencia, cod_banco, endereco)
values
('1333', '1', 'Rua João José da Silva, 486');

SELECT numero_agencia, endereco
FROM agencia
WHERE cod_banco = '1';

SELECT cpf, nome, endereco, email
FROM cliente
WHERE sexo = 'M';

DELETE FROM historico
WHERE num_conta = '86340-2';

DELETE FROM conta
WHERE num_conta= '86340-2';