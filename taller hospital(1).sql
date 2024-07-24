create database hospital
use hospital

create table c_hospital(
cod_hospital int primary key,
nom_hospital varchar (70),
ciudad_hospital varchar (70),
tel_hospital int,
nom_director varchar (70),
num_camas_dis int)
insert into c_hospital values (111,'general', 'Medellin',4610105,'jose',45)
insert into c_hospital values (112,'San vicente', 'rionegro', 1765789, 'mauricio',38)
insert into c_hospital values (113,'americas','bogota',87878976,'velez',39)
insert into c_hospital values (114,'salle','bello',314764,'santiago',71)
insert into c_hospital values (115,'rosario','medellin',867732234,'viviana',58)
select * from c_hospital
 update c_hospital set nom_hospital='general' where cod_hospital=114
 update C_hospital set num_camas_dis= 45 where cod_hospital=114

create table servicios(
id_servicios int primary key,
tratamiento varchar (100) not null,
comentario varchar (500) null)
insert into servicios values (2130,'medicina interna', 'tratamiento de leucemia')
insert into servicios values (2131,'traumatología', 'daños afectados de golpe en carro')
insert into servicios values (2132,'urología', 'diagnostico reservado')
insert into servicios values (2133,'optamología', 'daño severo en la iris')
insert into servicios values (2134, 'ortopedia','insiscion en el metacarpedio')
 update servicios set tratamiento='urología' where id_servicios=2131
 update servicios set comentario='lesión de una arteria o vena como consecuencia de un golpe' where id_servicios=2134

create table hospital_servicio(
cod_hospital1 int,
id_servicios1 int,
constraint apodo1 foreign key (cod_hospital1) references c_hospital (cod_hospital),
constraint apodo2 foreign key (id_servicios1) references servicios (id_servicios))
insert into hospital_servicio values (111,2133)
insert into hospital_servicio values (114,2132)
insert into hospital_servicio values (115,2130)
insert into hospital_servicio values (113,2134)
select *from c_hospital
select * from servicios
delete * from servicios where id_servicios= 1
update hospital_servicio set where id_servicios1=10

create table historia_clinica(
cod_hist int primary key not null,
servicio_p varchar (70),
hospital varchar (70), 
ingreso datetime,
descripción varchar (500),
tratamientos varchar(500))
insert into historia_clinica values (3111,'traumatología','san vicente', '2022-04-06 9:35','erida abierta','cirugia')
insert into historia_clinica values (3112, 'urologia', 'las americas', '2022-01-03 15:00', 'infección urinaria', 'antibioticos')
insert into historia_clinica values (3113, ' ortopedia', 'general','2022-02-14 13:00','fractura de peroné', 'cirugia9')
insert into historia_clinica values (3114, 'oftamología', 'rosario', '2022-03-24 23:00', 'cataratas','cirugia lazer')
insert into historia_clinica values (3115, 'medicina interna', 'salle','2022-04-28 21:15', 'neurisma', 'cirugia')
select * from historia_clinica
update historia_clinica set cod_hist='3112' where cod_hist=3245
update historia_clinica set servicio_p= 'urologia' where servicio_p='Neurologia'
delete  from historia_clinica where cod_hist=3115
delete  from historia_clinica where ingreso='2022-03-24 23:00'

create table paciente(
DNI_paciente int primary key identity, 
apellidos_pac varchar (70),
Nombres_pac varchar (70),
fecha_nac date,
Nro_seg int not null,
cama int not null,
otros_servicios varchar (100) null,
cod_hist1 int,
constraint apodo3 foreign key (cod_hist1) references historia_clinica (cod_hist))

insert into paciente values ('Giraldo Arenas', 'Bradhyan', '1993-01-13', 15, 42, '',3113)
insert into paciente values ('Henao Carvajal','Deicy','1991-12-11', 17, 35,'inyectologia' ,3112 )
insert into paciente values ('Arenas Rios','Humberto', '1952-06-17', 7,38,'clinica dolor', 3111)
insert into paciente values ('Jimenez Montoya', 'elizabeth', '1994-03-19', 1,90,'',3115)
insert into paciente values ('Florez', 'Anderson', '1994-10-01',10,15,'terapida del amor',3114)
select * from paciente
use hospital
select cama from paciente  where DNI_paciente=3
delete from paciente where DNI_paciente=5
update paciente set otros_servicios='dolor lumbal' where DNI_paciente=4
update paciente set cama=50 where DNI_paciente=2


create table paciente_hospital(
cod_hospital2 int,
dni_paciente1 int, 
constraint apodo4 foreign key (cod_hospital2) references c_hospital (cod_hospital),
constraint apodo5 foreign key (dni_paciente1) references paciente (dni_paciente))
select * from paciente
select * from c_hospital
insert into paciente_hospital values (112,1)
insert into paciente_hospital values (111,5)
insert into paciente_hospital values (113,3)
insert into paciente_hospital values (114,2)
insert into paciente_hospital values (115,4)

create table medico(
dni_medico int primary key identity,
apellido_1 varchar (30),
apellido_2 varchar (30),
nombre_1 varchar (30),
nombre_2 varchar (30) null,
fecha_nacimiento date,
hosp_adscrito varchar (70) not null)
insert into medico values ('Giraldo','Arenas','Bradhyan','','1993-01-13','San vicente')
insert into medico values ('Arenas','Henao','Claudia','Milena', '1971-08-17','rosario')
insert into medico values ('olivia', 'carvajal','humberto', 'alexis','1968-09-21','la salle')
insert into medico values ('oquendo','arenas','andres','','2007-03-28','general')
insert into medico values ('bustamante','mazo', 'daniela','', '2000-03-05','las americas')
select *from medico
select * from servicios
select fecha_nacimiento from medico where nombre_1='alexis'
update medico set fecha_nacimiento ='2021-01-12' where nombre_1='alexis'
update medico set apellido_1='palacios' where dni_medico=4
delete from medico where dni_medico=3


create table medico_servicios(
dni_medico1 int,
id_servicios2 int,
constraint apodo6 foreign key (dni_medico1) references medico (dni_medico),
constraint apodo7 foreign key (id_servicios2) references servicios (id_servicios))
insert into medico_servicios values (1,2130)
insert into medico_servicios values (12,2133)
insert into medico_servicios values (5,2134)
insert into medico_servicios values (2,2132)
insert into medico_servicios values (9,2135)
select * from medico_servicios


create table paciente_medico(
dni_paciente2 int,
dni_medico2 int,
constraint apodo8 foreign key (dni_paciente2) references paciente(dni_paciente),
constraint apodo9 foreign key (dni_medico2) references medico (dni_medico))
select * from paciente
select * from medico
insert into paciente_medico values (3,4)
insert into paciente_medico values (2,5)
insert into paciente_medico values (4,9)
insert into paciente_medico values (5,2)
insert into paciente_medico values (1,1)



create table hospital_medico(
dni_medico3 int,
cod_hospital3 int,
constraint apodo10 foreign key (cod_hospital3) references C_hospital (cod_hospital),
constraint apodo11 foreign key (dni_medico3) references medico (dni_medico))
select *from c_hospital
select *from medico
insert into hospital_medico values (1,111)
insert into hospital_medico values (9,115)
insert into hospital_medico values (4,114)
insert into hospital_medico values (2,113)
insert into hospital_medico values (5,112)

