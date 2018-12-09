SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[Acceso]
@user varchar(50),
@pass varchar(50)
as
SELECT cod_tarjeta,nombres,apellidos
      FROM usuario WHERE cod_tarjeta = @user AND contrasenha = @pass
GO
