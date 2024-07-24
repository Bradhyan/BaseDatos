
 

		create database  AYP2
		use AYP2
		create table Clientes(
		 id_cliente int primary key,
		nom_cliente varchar (70),
      apellido_cliente varchar(70),

        telefono bigint)

	
		GO
		set ansi_nulls on
		go
		set quoted_identifier on 
		go

		alter proc [dbo].[modificar_cliente]
		@id_cliente int,
		@nom_cliente varchar (70),
		@apellido_cliente varchar (70),
		@telefono bigint

		as

		insert into cliente(id_cliente, nom_cliente, apellido_cliente,telefono)
		values (@id_cliente,@nom_cliente,@apellido_cliente,@telefono)
		


