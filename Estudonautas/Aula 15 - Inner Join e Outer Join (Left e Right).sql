select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select * from gafanhotos;

select gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos 
inner join cursos  								#ou apenas join
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

#Esse tipo de join une a interseção das tables

select g.nome, c.nome, c.ano 
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

#Foram definidos apelidos para as tabelas

select g.nome, c.nome, c.ano
from gafanhotos as g left join cursos as c 			#ou left outer join
on c.idcurso = g.cursopreferido;

#no caso acima, a tabela gafanhotos é priorizada e a tabela cursos somada

select g.nome, c.nome, c.ano
from gafanhotos as g right join cursos as c
on g.cursopreferido = c.idcurso;

#já nesse caso a tabela priorizada é a tabela cursos e gafanhotos somada