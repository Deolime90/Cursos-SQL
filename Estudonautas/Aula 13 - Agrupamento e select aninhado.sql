select totaulas, count(totaulas) from cursos
group by totaulas #Agrupando a consulta pelo total de aulas e exibindo as quantidades de cada grupo
order by totaulas;

select * from cursos
where totaulas = 12;

select carga, count(totaulas) from cursos
where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano >= 2013
order by count(*) desc;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos)
order by ano;

#consulta de contagem de cursos que tem carga acima da média total, 
#após 2015 agrupados por carga e ordenados por ano

