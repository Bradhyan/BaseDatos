USE [AYP]
GO
/****** Object:  StoredProcedure [dbo].[Anular_Cliente]    Script Date: 12/11/2022 5:10:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Anular_Cliente]
@Pid_Cliente varchar(10)
as
update cliente set activo=0 where id_cliente=@Pid_Cliente

select*from presupuesto