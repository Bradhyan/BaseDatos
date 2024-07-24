

use GA

select *from clientes

-- saber el asunto del cliente

select nom_cliente,nro_expediente from clientes inner join asunto_cliente on clientes.id_cliente=asunto_cliente.id_cliente2
inner join asunto on asunto_cliente.id_asunto2=asunto.id_asunto

-- saber la especialidad del juez que lleva el asunto 

select nom_especialidad, nro_expediente from asunto inner join asunto_pro on asunto.id_asunto=asunto_pro.id_asunto1
inner join procurador on asunto_pro.id_procurador1=procurador.id_procurador 
inner join especialidad_pro on procurador.id_procurador=especialidad_pro.id_procurador2 
inner join especialidad on especialidad_pro.id_especialidad1=especialidad.id_especialidad

-- se requiere saber  que procurador lleva cual  asunto y el  determinado cliente 

select nom_procurador, nom_cliente, nro_expediente from clientes inner join asunto_cliente on clientes.id_cliente=asunto_cliente.id_cliente2 
inner join asunto on asunto_cliente.id_asunto2=asunto.id_asunto
inner join asunto_pro on asunto.id_asunto=asunto_pro.id_asunto1
inner join procurador on asunto_pro.id_procurador1=procurador.id_procurador

-- requiero ver el estado del asunto y el procurador que lo lleva 

select estado_asunto,nom_procurador from procurador inner join asunto_pro on procurador.id_procurador=asunto_pro.id_procurador1
inner join asunto on asunto_pro.id_asunto1=asunto.id_asunto

-- requiero saber el asunto que lleva el cliente, el procurador que lo lleva y la especialización de este. 

select nom_cliente, id_asunto,nom_procurador, nom_especialidad from clientes inner join asunto_cliente on clientes.id_cliente=asunto_cliente.id_cliente2
inner join asunto on asunto_cliente.id_asunto2=asunto.id_asunto
inner join asunto_pro on asunto.id_asunto=asunto_pro.id_asunto1
inner join procurador on asunto_pro.id_procurador1=procurador.id_procurador
inner join especialidad_pro on procurador.id_procurador=especialidad_pro.id_procurador2
inner join especialidad on especialidad_pro.id_especialidad1=especialidad.id_especialidad