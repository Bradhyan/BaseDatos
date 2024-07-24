create database cafeteria

use cafeteria 

create table producto (
id_producto int primary key,
nom_producto varchar (70),
fecha_vencimiento date)

insert into producto values (11,'leche','2022/01/13')
insert into producto values (12,'cafe','2024/08/07')


create table empleado(
id_empleado int primary key,
nom_empleado varchar(70),
sex_emp varchar (10))

insert into empleado values (21,'Bradhyan','Masculino')
insert into empleado values (22, 'Viviana','Femenino')

create table producto_empleado(
id_producto1 int,
id_empleado1 int, 
constraint apodo1 foreign key (id_producto1)  references producto(id_producto),
constraint apodo2 foreign key (id_empleado1) references empleado(id_empleado))

insert into producto_empleado values (12,21)
insert into producto_empleado values (11,22)

create table horario(
id_horario int primary key,
hora_ingreso time,
hora_salida time)

insert into horario values (31,'07:00','17:00')
insert into horario values (32,'09:00','15:00')
select * from horario

create table empleado_horario(
id_empleado2 int,
id_horario1 int,
constraint apodo3 foreign key (id_empleado2) references empleado(id_empleado),
constraint apodo4 foreign key (id_horario1) references horario (id_horario))

insert into producto_empleado values (21,32)
insert into producto_empleado values (22,31)

select * from empleado_horario

create table proveedor(
id_proveedor int primary key,
nom_proveedor varchar (70))

insert into proveedor values (41,'colanta')
insert into proveedor values (42,'la bastilla')

create table producto_proveedor(
id_producto2 int,
id_proveedor1 int,
constraint apodo5 foreign key (id_producto2)references producto(id_producto),
constraint apodo6 foreign key (id_proveedor1) references proveedor (id_proveedor))

insert into producto_proveedor values (11,41)
insert into producto_proveedor values (12,42)

select * from producto_proveedor
select * from proveedor
select * from empleado_horario
select * from horario
select * from producto_empleado
select * from empleado
select * from producto

-- se requiere saber que empleado a recibido el producto

select nom_empleado, nom_producto from empleado inner join producto_empleado
on empleado.id_empleado=producto_empleado.id_empleado1 inner join producto on producto_empleado.id_producto1=producto.id_producto

-- se requiere saber el horario que tiene un empleado

select nom_empleado, id_horario from empleado inner join empleado_horario on empleado.id_empleado=empleado_horario.id_empleado2 inner join horario on empleado_horario.id_horario1=horario.id_horario


--investigar y practicar mejor inner join para la proxima clase presentar examen.