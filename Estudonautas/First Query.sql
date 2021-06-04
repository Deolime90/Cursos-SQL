create database cadastro
default character set utf8
default collate	utf8_general_ci;

use cadastro;
create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
PRIMARY KEY (id)
) default charset = utf8;    

insert into pessoas values
#(id, nome, nascimento, sexo, peso, altura, nacionalidade) #opicional, mesma ordem das colunas
#values #usado aqui quando declaradas as colunas preenchidas
(default, 'Claudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(default, 'Pedro', '1999-12-3', 'M', '87', '2', 'Brasil'),
(default, 'Janaína', '1987-11-12', 'M', '75.4', '1.66', 'EUA');

select * from pessoas;