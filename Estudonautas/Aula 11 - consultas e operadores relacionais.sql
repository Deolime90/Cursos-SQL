select * from cursos
where ano <= 2015
order by ano, nome;

#operadores relacionais
# >, >=, <, <=, =, (<> ou !=) o diferente tem duas formas de ser representado

select nome, ano from cursos
where ano between 2014 and 2016 #aspas opicionais por se tratar de número
order by ano desc, nome asc; 

select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30
order by ano;

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;

#Operadores lógicos
# and, or
   