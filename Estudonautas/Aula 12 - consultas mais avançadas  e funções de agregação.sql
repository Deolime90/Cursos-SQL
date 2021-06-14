select distinct nacionalidade from gafanhotos
order by nacionalidade;

# DISTINCT mostrará uma vez cada valor distinto, ou seja oculta duplicatas e repetições
# criando uma lista dos diferentes itens da coluna em questão

select distinct carga from cursos
order by carga;

select count(*) from cursos; #contando

select count(*) from cursos
where carga > 40;			 #contando os cursos com carga maior que 40

select max(carga) from cursos;
#Consulta qual a maior carga 

select max(totaulas) from cursos
where ano = 2016;

select nome, min(totaulas) from cursos
where ano = 2016;	
# mostra a coluna nome antes da informação consultada
#pode ser usado * também para exibir todas as informações desta query
#este comando retorna a primeira ocorrência, para exibir outras caso existam precisamos usar função de agrupamento

select sum(totaulas) from cursos
where ano = 2016;
#soma do total de aulas no ano de 2016

select avg(totaulas) from cursos
where ano = 2016;
#média de total de aulas no ano de 2016

