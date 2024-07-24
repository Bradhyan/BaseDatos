create database escuela1
use escuela1
create table carrera(
clave_c int,
nombre_c varchar(30),
durac_c float,
constraint apodo primary key(clave_c))

create table alumno(
mat_alu int,
nom_alu varchar(50),
edad_alu int,
sem_alu int,
gen_alu varchar(15),
clave_c1 int,
constraint apodo1 primary key(mat_alu),
constraint apodo2 foreign key(clave_c1)references carrera (clave_c))

create table profesor(
clave_p int,
nom_p varchar(40),
tel_p bigint,
hor_p datetime,
constraint apodo3 primary key(clave_p))

create table alumno_pro(
mat_alu1 int,
clave_p1 int,
constraint apodo4 foreign key (mat_alu1)references alumno(mat_alu),
constraint apodo5 foreign key (clave_p1)references profesor (clave_p))

create table materia(
clave_m int,
nom_mat varchar(20),
cre_mat int,
constraint apodo6 primary key(clave_m)
)
create table materia_profesor(
clave_m2 int,
mat_p2 int,
constraint apodo7 foreign key(clave_m2)references materia(clave_m),
constraint apodo8 foreign key(mat_p2)references profesor(clave_p))

create table mat_alu(
clave_m1 int,
mat_alu2 int,
constraint apodo9 foreign key(clave_m1)references materia(clave_m),
constraint apodo10 foreign key(mat_alu2)references alumno(mat_alu))
