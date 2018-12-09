SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[SP_RegistrarUser](
@cod_tarjeta nvarchar(20),
@contrasenha varchar(50),
@nombres varchar(80),
@apellidos varchar(80),
@dni varchar(8))
as
insert into usuario values(@cod_tarjeta,@contrasenha,@nombres,@apellidos,@dni)
GO
