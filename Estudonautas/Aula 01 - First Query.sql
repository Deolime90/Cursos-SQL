create database cadastro
default character set utf8
default collate	utf8_general_ci;

use cadastro;
CREATE TABLE pessoas (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5 , 2 ),
    altura DECIMAL(3 , 2 ),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
)  DEFAULT CHARSET=UTF8;    

insert into pessoas values
#(id, nome, nascimento, sexo, peso, altura, nacionalidade) #opicional, mesma ordem das colunas
#values #usado aqui quando declaradas as colunas preenchidas
(default, 'Claudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(default, 'Pedro', '1999-12-3', 'M', '87', '2', 'Brasil'),
(default, 'Janaína', '1987-11-12', 'M', '75.4', '1.66', 'EUA');

select * from pessoas;