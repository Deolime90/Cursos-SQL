# 1 Lista com profissões e seus respectivos quantitativos
select profissao, count(*) from gafanhotos
group by profissao;

# 2 Quantos homens e mulheres nasceram após 01/01/2005
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

# 3 Lista com quem nasceu fora do Brasil, mostrando o país de origem e o total de pessoas nascidas láalter
# 	Só nos interessam os países que tiveram mais de 3 pessoas
select nacionalidade, count(*) from gafanhotos
where nacionalidade <> 'Brasil'
group by nacionalidade
having count(*) > 3;

# Lista agrupada pela altura, exibindo quantas pessoas pesam mais de 100kg 
# 	e que estão acima da média de altura de todos os cadastrados
select altura, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);
