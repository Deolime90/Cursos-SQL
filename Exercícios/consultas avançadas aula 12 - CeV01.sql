# 1 Criar uma lista com o nome de todas as gafanhotas
select * from gafanhotos
where sexo = 'F'
order by nome;

# 2 Criar uma lista com os dados de todos que nasceram entre 1/01/2000 e 31/12/2015
desc gafanhotos;
select * from gafanhotos
where nascimento > '2000-01-01' and nascimento < '2015-12-01'
order by nascimento asc;

# 3 Uma lista com todos os homens que trabalham como programadores
select * from gafanhotos
where sexo = 'M' and profissao = 'programador'
order by nome;

# 4 Uma lista com todos os dados detodas as mulheres que nasceram no Brasil
#   e têm seu nome iniciado com a letra J
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%'
order by nome;

# 5 Uma lista com o nome e a nacionalidade de todos os homens que têm Silva no nome
#   não nasceram no Brasil e pesam meno de 100kg
select nome, nacionalidade from gafanhotos
where nome like '%_Silva%' and nacionalidade != 'Brasil' and peso < 100
order by nome;

# 6 Qual a maior altura entre os homens que mpram no Brasil?
select nome, max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

# 7	Qual a média de peso dos gafahotos cadastrados?
select avg(peso) from gafanhotos;

# 8 Qual o menor peso entre as mulheres que nasceram fora do Brasil entre 01/01/90 e 31/12/2000
select nome, min(peso) from gafanhotos
where sexo = 'F' and nacionalidade <> 'Brasil' 
and nascimento > '1990-01-01' and nascimento < '2000-12-31';

# 9 Quantas mulheres têm mais de 1,90 de altura?
select count(*) from gafanhotos
where sexo = 'F' and altura > 1.9;