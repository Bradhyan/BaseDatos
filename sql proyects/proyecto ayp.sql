use AYP

create proc consultar_cliente
@id_cliente int
as 
select * from cliente where id_cliente=@id_cliente

create proc consultar_materiales
@id_material int
as 
select * from materiales where id_material=@id_material

create proc consultar_materiales
@id_material int
as 
select * from materiales where id_material=@id_material

create proc consultar_presupuesto
@id_presupuesto int
as 
select * from presupuesto where id_presupuesto=@id_presupuesto

create proc consultar_provedor
@nit_provedor int
as 
select * from proovedores where nit_prooveedor=@nit_provedor

create proc consultar_trabajadores
@id_trabajador int
as 
select * from trabajadores where id_trabajador=@id_trabajador