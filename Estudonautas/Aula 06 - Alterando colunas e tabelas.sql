desc pessoas;

alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

alter table pessoas
add codigo int first;

alter table pessoas
add column profissao varchar (10) after nome;

alter table pessoas
modify column profissao varchar(20) not null default '';
#Vai aparecer erro 1138, pois a coluna já é null, é necessário colocar algum valor no add

alter table pessoas
drop column profissao;

alter table pessoas
add profissao varchar(20) not null default '' after nome;

alter table pessoas
rename to gafanhotos;

desc	gafanhotos;
 select * from pessoas;