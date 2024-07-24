use escuela2
--Se requiere una consulta donde mueste que estudiantes pertenecen a una determinada carrera

select nom_alu,Clave_c from carrera inner join alumno on carrera.Clave_c=alumno.clave_c1

--Se requiere saber que profesor interactua con las carreras 

--se deben de relacionar las tablas según la ruta del diagrama, por lo cual toca añadir en la ruta toda tabla que se encuentre en medio para poder llergar.

select nom_p,nom_m from profesor
inner join mat_pro on profesor.clave_p=mat_pro.clave_p2
inner join 


--canal recomendado de youtube para repasar CODIGO COMPILADO-BASE DE DATOS-INNER JOIN

--TAREA Sobre la base de datos de academico vamos a repasar con 20 inner joing, 