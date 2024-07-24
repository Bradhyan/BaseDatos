use Hospital

create proc cambiar_cita

@Cod_cita varchar(10),
@fecha date,
@hora time,
@idPaciente varchar(70),
@id_medico varchar(10),
@valor int,
@diagnostico varchar (MAX),
@nom_acompañante varchar(50),
@activo bit

as

insert into cita(cod_cita, fecha, hora,idPaciente, id_medico, valor, diagnostico, nom_acompañante,activo)
values(@Cod_cita, @fecha, @hora,@idPaciente,@id_medico, @valor,@diagnostico, @nom_acompañante,@activo)

