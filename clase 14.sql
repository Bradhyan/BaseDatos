create database escuela2 --ya existe el registro de escuela

use escuela2

create table carrera(

Clave_c int,

nom_c varchar(50),

durac_c float,

constraint pk_cc primary key (clave_c))

insert into carrera values (11,'programación',6)
insert into carrera values (12,'enfermería',5.5)
insert into carrera values (13,'sistemas',10)
insert into carrera values (14, 'Ingenieria civil',10)

update carrera set nom_c='medicina' where Clave_c=12
select *from carrera
alter table carrera add perfil varchar (70)
update carrera set perfil='profesional' where id=14
select*from carrera  order by durac_c asc
alter table carrera drop column perfil
exec sp_rename 'carrera.nom_c', 'nombre_c'
select*from carrera  order by clave_c desc


create table materia(

clave_m int,

nom_m varchar(50),

cred_m float,

constraint pk_cm primary key (clave_m))

insert into materia values (21,'calculo',4)
insert into materia values (22,'base datos',4)
insert into materia values (23,'fisica',2)
insert into materia values (24, 'logaritmos',4)


create table profesor(

clave_p int,

nom_p varchar(150),
dir_p varchar(200),

tel_p bigint, 
hor_p datetime,

constraint pk_cp primary key (Clave_p))

insert into profesor values (31,'Rosalba','cra51 Nro 33-54',3103985210,'2022/05/07 22:00')
insert into profesor values (32,'Guillermo', 'cll33 Nro 52-13',3016884524, '2022/06/08 23:00')
insert into profesor values (33, 'Buitrago','av 80 Nro 33-57', 320451266, '2022/03/01 08:00')
insert into profesor values (34,'Alvarez', 'diagonal 5 Nro 33-54', 3153889152, '2020/03/27 07:00')


-------Tabla alumno con clave foranea

create table alumno(

mat_alu int,

nom_alu varchar(150),

edad_alu int,

sem_alu int,

gen_alu varchar(10),

clave_c1 int,

constraint pk_calu primary key (mat_alu), constraint fk_fc1 foreign key (clave_c1) references carrera(clave_c))

select *from carrera
insert into alumno values (2208,'Bradhyan', 28, 1,'Masculino',11)
insert into alumno values (2209,'Leidy', 21,3,'femenina', 13)
insert into alumno values (2210,'Anderson', 28,9,'masculino',14)
insert into alumno values (2211,'Yenny', 21,4,'femenino',12)

alter table alumno add notas float
select*from alumno
update alumno set notas = 4.5 where mat_alu=2208
update alumno set notas = 3.0 where mat_alu=2209
update alumno set notas = 3.9 where mat_alu=2210
update alumno set notas = 5.0 where mat_alu=2211

select avg (notas) from alumno 
select min(notas)from alumno 
select max(notas )from alumno

select *from alumno where mat_alu=2211 or mat_alu=1
select nom_alu, notas from alumno where mat_alu =2208 or mat_alu=2209
select *from alumno where mat_alu=2211 or mat_alu=2210
select notas, count (notas) as repetir from alumno  group by notas
select *from alumno where nom_alu like 'yenny'
select sum (notas)from alumno
select*from alumno  order by notas desc
select*from alumno  order by edad_alu asc
select nom_alu from alumno where in (nom_alu('leidy,anderson'))


------tablas intermedias alumno-profesor

create table alu_pro(

mat_alu1 int,

clave_p1 int,

constraint fk_falu1 foreign key(mat_alu1) references alumno (mat_alu),

constraint fk_fp1 foreign key (clave_p1) references profesor (clave_p))

select *from profesor
select *from alumno

insert into alu_pro values (2208,31)
insert into alu_pro values (2209,32)
insert into alu_pro values (2210,33)
insert into alu_pro values (2211,34)

-------tabla intermedia materia-alumno

create table mat_alu(

clave_m1 int,

mat_alu2 int,

constraint fk_fm1 foreign key (clave_m1) references materia (clave_m),

constraint fk_falu2 foreign key (mat_alu2) references alumno(mat_alu) )

select *from materia
select* from alumno

insert into mat_alu values (21,2208)
insert into mat_alu values (22,2209)
insert into mat_alu values (23,2210)
insert into mat_alu values (24,2211)

------------tabla intermedia materia profesor

create table mat_pro(

clave_m2 int,

clave_p2 int,

constraint fk_fm2 foreign key (clave_m2) references materia(clave_m),

constraint fk_fp2 foreign key (clave_p2) references profesor (clave_p))

select * from materia
select * from profesor
 
 insert into mat_pro values (21,34)
 insert into mat_pro values (22,33)
 insert into mat_pro values (23,32)
 insert into mat_pro values (24,31)

