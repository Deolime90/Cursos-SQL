select * from cursos
where nome like 'p%'; 

#operador literal % significa nenhum ou vários caracteres
#A posição do % influencia, no caso acima a referência é para qualquer caracter após o p

select * from cursos
where nome like '%A';

#nesse caso a inttenção é emcomtrar os cursos encerrados com A
#pode ser usado A ou a, não é case sensitive

select * from cursos
where nome like '%A%'
order by nome;

#agora a intenção é localizar os cursos com A em qualquer lugar
# ! IMPORTANTE ! somente com a codificação UTF8 os caracteres acentuados são considerados

select * from cursos
where nome not like '%A%'
order by nome;

update cursos
set nome = 'PáOO'
where idcurso = 9;

select * from cursos
where nome like '%A%'
order by nome;

select * from cursos
where nome like 'phot%';

update cursos
set nome = 'Photoshop'
where nome like 'Photoshop5'
limit 1;

#O curso de photoshop estava com o número 5 no final
#Foi removido o 5

select * from cursos
where nome like 'ph%p';

#Agora aparecem os cursos que começam com ph e terminam com p

select * from cursos
where nome like 'ph%p%';

#Condição anterior porem terminanco com qualquer caractere

select * from cursos
where nome like '%ph%p_'; # ! IMPORTANTE ! 
# ! IMPORTANTE ! 
# ! IMPORTANTE !  ao colocar _ no final é indicado que TEM QUE haver um caracter no final

update cursos
set nome = 'Photoshop5'
where idcurso = 3;

select * from cursos
where nome like '%ph%p_'; #agora photoshop aparece pois termina com 5 e não p

select * from cursos
where nome like 'p_p%'; #Precisa ter algo entre as letras p, mas no final pode ou não ter
 
select * from cursos
where nome like 'p__t%'; #p seguidos de 2 caracteres, depois t e qualer coisa ou nada

select * from gafanhotos
where nome like '%silva'; #ou '%_silva' ou '% silva' 	

	