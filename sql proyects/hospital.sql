create database Hospital
use Hospital

create table cita(

cod_cita varchar (10) primary key,
fecha date,
hora time (7),
idPaciente varchar (10),
id_medico varchar(10),
valor int,
diagnostico varchar(max),
nom_acompañante varchar(50),
activo bit)

go
SET ANSI_NULLS ON 
go 
set quoted_identifier on
go
alter proc SP_cita

@cod_cita varchar (10),
@fecha date,
@hora time (7),
@idPaciente varchar (10),
@id_medico varchar(10),
@valor int,
@diagnostico varchar(max),
@nom_acompañante varchar(50),
@activo bit
as 
insert into cita(cod_cita,fecha,hora,idPaciente,id_medico, valor, diagnostico, nom_acompañante, activo)
values (@cod_cita,@fecha,@hora,@idPaciente,@id_medico, @valor, @diagnostico, @nom_acompañante, @activo)



create table medico(
id_medico varchar (10) primary key,
nom_medico varchar (50),
especialidad varchar(30),
tel_medico varchar(10),
activo bit)



create table paciente(

id_paciente varchar (10),
nom_paciente varchar(20),
dir_paciente varchar (50),
tel_paciente varchar (10),
cel_paciente varchar(10),
activo bit)