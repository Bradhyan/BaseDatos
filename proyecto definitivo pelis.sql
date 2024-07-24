create database peliculas1
use peliculas1
create table peli(
cod_pelicula int,
titulo_pelicula varchar,
constraint apodo primary key(cod_pelicula))

create table cate(
cod_cate int,
categoria varchar,
constraint apodo2 primary key(cod_cate))

create table tit_categoria(
cod_cate1 int,
cod_pelicula1 int,
constraint apodo3 foreign key (cod_cate1)references cate (cod_cate),
constraint apodo4 foreign key (cod_pelicula1)references peli(cod_pelicula))

create table actores(
cod_actor int,
nombre_actor varchar,
fecha_nacimiento_actor datetime, 
constraint apodo5 primary key (cod_actor))

create table peli_actor(
cod_pelicula2 int,
cod_actor1 int,
constraint apodo6 foreign key (cod_pelicula2)references peli (cod_pelicula),
constraint apodo7 foreign key (cod_actor1)references actores(cod_actor))

create table casset(
cod_casset int,
num_copias int,
formato char,
cod_pelicula3 int,
constraint apodo8 primary key(cod_casset),
constraint apodo9 foreign key (cod_pelicula3)references peli(cod_pelicula))

create table alquiler(
cod_alquiler int,
fech_alq datetime, 
num_memb int,
fech_dev datetime,
valor int,
cant int,
constraint apodo10 primary key (cod_alquiler))

create table miemb_club(
num_memb int, 
nom_m varchar,
apell_1 varchar,
apell_2 varchar,
num_tel bigint,
direccion varchar,
constraint apodo11 primary key (num_memb))

create table alq_client (
cod_alquiler1 int,
num_memb1 int,
constraint apodo12 foreign key (cod_alquiler1)references alquiler (cod_alquiler),
constraint apodo13 foreign key (num_memb1)references miemb_club(num_memb))

create table alq_casset(
cod_casset1 int,
cod_alquiler2 int,
constraint apodo14 foreign key (cod_casset1)references casset(cod_casset),
constraint apodo15 foreign key (cod_alquiler2)references alquiler(cod_alquiler))








