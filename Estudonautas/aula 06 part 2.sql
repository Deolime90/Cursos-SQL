create table if not exists cursos (
	nome varchar(30) not null unique,
    descricao text,
    carga int unsigned, #unsigned significa sem sinal
    totaulas int unsigned,
	ano year default '2016'
)	default charset = utf8;   

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso);

desc cursos; 

create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste values
('1', 'Pedrp', '20'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste; 

drop table if exists teste;