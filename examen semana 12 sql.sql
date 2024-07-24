create database libros1
use libros1

create table libro(
cod_libro int primary key,
titulo varchar(100),
cod_autor1 int,
fech_dev date not null,
constraint apodo1 foreign key (cod_autor1)references autor(cod_autor))
insert into libro values (1001,'Variable compleja',11,'2005/04/15')
insert into libro values (1004, 'Visual Basic 5',12, '2005/04/17')
insert into libro values (1005,'Estadistica',11, '2005/04/16')

insert into libro values (1006,'Oracle University',13, '2005/04/20')
insert into libro values (1007, 'Clipper 5.01',15, '2005/04/18')
select*from libro

create table autor(
cod_autor int primary key, 
nom_autor varchar(70) unique,
apell_autor varchar(70))
insert into autor values(11,'Murray', 'Spiegel')
insert into autor values (12,'E.','Petroustsos')
insert into autor values (13, 'Nancy','Greenberg')
insert into autor values (14, 'Priya','Nathan')
insert into autor values (15,'Ramalho', '')
select*from autor


create table editorial(
cod_editorial int primary key not null, 
nom_editorial varchar (80))
insert into editorial values (21,'McGraw Hill')
insert into editorial values (22,'Anayta')
insert into editorial values (23,'Oracle Corp')
select *from editorial
update editorial set nom_editorial='oveja negra' where cod_editorial=21
alter table editorial drop column nom_editorial

create table editorial_libro(
cod_editorial1 int,
cod_libro1 int,
constraint apodo2 foreign key (cod_editorial1)references editorial(cod_editorial),
constraint apodo3 foreign key (cod_libro1)references libro (cod_libro))
insert into editorial_libro values (21,1001)
insert into editorial_libro values(22,1004)
insert into editorial_libro values(21,1005)
insert into editorial_libro values(23,1006)
insert into editorial_libro values(21,1007)


create table lector(
cod_lector int primary key,
nom_lector varchar (70) not null,
apellido1 varchar (70),
apellido2 varchar (70) null)
insert into lector values (31,'Juan','Perez','Gomez')
insert into lector values (32,'Ana','Teheran','Rios')
insert into lector values (33,'Rene','Roca','')
insert into lector values (34,'Luis','Garcia','Roque')

create table lector_libro(
cod_libro2 int,
cod_lector1 int,
constraint apodo4 foreign key (cod_libro2)references libro (cod_libro),
constraint apodo5 foreign key (cod_lector1) references lector  (cod_lector))

select *from libro
select *from lector

use libros1
insert into lector_libro values (1001,31)
insert into lector_libro values (1004,32)
insert into lector_libro values (1005,33)
insert into lector_libro values (1006,34)
insert into lector_libro values (1007,31)



