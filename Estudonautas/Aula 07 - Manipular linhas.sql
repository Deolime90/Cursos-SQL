show tables;
describe cursos;
select * from gafanhotos;
select * from cursos;
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40','37', '2014'),
('2', 'Algorítimos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer kibe', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4'; 

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1; #Limitar quantas linhas serão afetadas

update cursos
set ano = '2050', carga = '800'
where ano = '2018'; #Perigoso não limitar, pode alterar muitas linhas do banco de dados

update cursos
set carga = '0', ano = '2018'
where ano = '2050'
limit 1; #Limitou o update para a primeira linha apenas

delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2050'
limit 2;

truncate cursos; #ou truncate table cursos, o table é opcional

select * from cursos;