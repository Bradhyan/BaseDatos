use escuela1
select*from materia
select*from alumno
select*from profesor
select*from materia_profesor
select*from mat_alu
select*from carrera
select*from alumno_pro

--Consulta simple empleando la clausula where
--en la tabla docente mostrar el registro del docente con identificacion dos
select*from profesor where id_profesor=2

--mostrar el nombre del docente con identificación tres
select from profesor where id

--ser requiere mostrar en el campo nom_docente una información que comiencen con la tecla a

select nomdocente from docentes where nom_docente like 'a%'
--se requiere mostrar un registro donde en el campo nom_docente finalice con la letra n
select*from profesor where nom_docente like '%n'
--agregar un campo apellido
alter table docentes add apellidos varchar (70)
--ingresar datos en el campo apellidos
update docentes set apellidos='morales' where id=2
update docentes set apellidos='manrique' where id=3
--mostrar el registro donde el apellido sea manrique con la forma 
select *from docentes where apellidos like 'manrique'
--Mostrar los registros de la tabla docentes ordenados en forma descendente
select*from docentes  order by id_docente desc
--Mostrar los registros de la tabla docente ordenados por nombre docente en forma ascendente
select *from docentes order by nom_docente asc
--COUNT sirve para contar cuantas veces se repite un dato en un campo
select nom_docente, count (nomdocente) as repetir from docentes  group by nomdocente
--insertar un registro donde existe orto nombre william
insert into profesor values (4,'william','Envigado','pm')
--Having: se requiere un instructivo para mostrar los datos que se repiten una sola vez
select nom_docente count (nom_docente) as conteo from docentes group by nom_docente having count(*)<2
--realizar una sumatoria en un campo de la tabla docentes 
select*from profesor
select sum(clave_p)from profesor
alter table profesor add salario int 
update profesor set salario=200000
select sum (salario)from profesor
--se requiere una consulta donde muestren el id_docente con identificador 1 o 2
select *from profesor where id_docente=2 or id_docente=1
--se requiere una consulta donde muestre los apellidos de los docentes y el salario que tengan identificador 3 y 4 
select apellidos, salario from docentes where id_docente =3 or id_docente=4
--se requiere mostrar los id docente entre 1 y 4 
--se requiere mostrar los id docente comenzando desde uno hasta 4 con los campos nombre
select*from profesor, apellido from docentes where id_docente>=1 and id_docente<=4
--reemplazamos la consulta anterior con la clausula between
select nomdocente ,aperllidos from docentes where id_docente between1 and 4

--sirve para mostrar datos en una consulta 
select nomdocente from docentes where in (nomdocente('julio,william'))
--no quiero mostrar los datos anteriores 
select nomdocente from docentes where not in (nomdocente('julio,william'))
--se requiere mostrar los 2 primeros registros 
select top 2*from profesor 
--distinc sirve para eliminar repeticiones

select distinct nom_docente from profesor 

--AVG sirve para sacar promedios 
select avg (salario) from profesor 

select *from profesor 
--sacar el id minimo
select min(clave_p)from profesor 
--sacar el maximo id
select max(clave_p)from profesor 