use escuela2

--PROCEDIMIENTOS ALMACENADOS 

--Se requiere un procedimiento almacenado para mostrar las carreras de una universidad 

select * from alumno

--Creamos el procedimiento almacenad (procedure o con proc)

create procedure mostrar_carreras
--Despues vamos a verificar los campos de la tabla y las características de los campos 


as

select nombre_c from carrera 


--Se requiere crear un procedimiento almacenado que muestre las tecnicas que tiene una universidad

--como no vamos a insertar información no creamos variables 

create proc mostrar_carrera
as
select*from carrera

--Crear un procedimiento almacenado donde me mustre todos los datos del profesor

create proc mostrar_profesor
as
select*from profesor

--Se requere un procedimiento almacenado que inserte información en la tabla profesor (por ende necesitamos insertar variables representadas por @)

create proc insertar_profesor 
@clave_p int,
@nom_p varchar(150),
@dir_p varchar(200),
@tel_p bigint,
@hor_p datetime
as
insert into profesor(clave_p,nom_p,dir_p,tel_p,hor_p)values (@clave_p,@nom_p,@dir_p,@tel_p,@hor_p)


--almacenar en carreras 

create proc almacenar_carrera 
@Clave_c int,
@nombre_c varchar(50),
@durac_c float
as 
insert into carrera(Clave_c,nombre_c,durac_c)values (@Clave_c,@nombre_c,@durac_c)

--Crear un procedimiento almacenado para modificar algunos campos de la tabla carrera: nombre de la carrera y la duración.

create proc modificar_carrera
@Clave_c int, 
@nombre_c  varchar(50),
@durac_c float
as 
update carrera set nombre_c=@nombre_c,durac_c=@durac_c where Clave_c=@Clave_c

create proc modificar_materia
@clave_m int,
@nom_m varchar(50),
@cred_m float
as 
update materia set nom_m=@nom_m,

select*from carrera

--crear un procedimiento almacenado para borrar un registro de la tabla carrera
create proc eliminar_carrera
@Clave_c int 

as 
delete from carrera where Clave_c=@Clave_c


--Crear un procedimiento almacenado que me muestre los dos primeros registros de la tabla carrera

create proc 
@Clave_c int,

--TAREA CONSTRUIR PROCEDIMIENTOS ALMACENADOS Y PRACTICARLOS PARA LA PROXIMA CLASE EVALUARLOS, APLICARLE TODOS LAS VARIABLES DE MODIFICACIÓN DE DATOS 

