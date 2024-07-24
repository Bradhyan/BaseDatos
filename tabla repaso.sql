create database zoologico1
use zoologico1

create table zoologico(
id_zoologico int primary key identity,
nom_zoo varchar (70), 
pais varchar (70),
tamaño int, 
telefono bigint)
insert into zoologico values ('Santa fe', 'Colombia',2300, 3016884982)
insert into zoologico values ('edison','España',7600,3244723621)
insert into zoologico values ('big', 'England', 1299,1020453222)
update zoologico set nom_zoo='brayan' where id_zoologico=2
select * from zoologico
alter table zoologico add dirección varchar (70)
alter table zoologico add funsion varchar (80)
alter table zoologico drop column funsion
execute sp_rename 'zoologico.telefono','celular'
delete from zoologico where id_zoologico=3
select nom_zoo from zoologico