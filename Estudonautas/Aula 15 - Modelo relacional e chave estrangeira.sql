describe gafanhotos;

alter table gafanhotos
add column cursopreferido int;

describe gafanhotos;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

describe gafanhotos; #  chave estrangeira criada referenciado como MUL significando chave múltipla 

select * from gafanhotos;
select * from cursos;

update gafanhotos
set cursopreferido = 6
where id = 1;

select * from gafanhotos;

delete from cursos
where idcurso =6; #Não apagou devido a integridade referencial

delete from cursos
where idcurso = 28;

