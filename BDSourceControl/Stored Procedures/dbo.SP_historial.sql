SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[SP_historial]
@user nvarchar(20)
as
SELECT     dbo.usuario.cod_tarjeta [MI TARJETA], dbo.usuario.nombres[Nombres], dbo.usuario.apellidos[Apellidos], dbo.venta.idventa[Cod.compra],dbo.pelicula.nombre[Pelicula], dbo.Locales.nombreLocal[Sede], 
                      dbo.venta.sala[Sala], dbo.venta.funcion[Función], dbo.venta.fecha[Fecha], dbo.venta.cant_tick_niños[#Tickets Niños], dbo.venta.cant_tick_adultos[#Tickets Adultos], dbo.venta.total[Pago Total]
FROM         dbo.Locales INNER JOIN
                      dbo.venta ON dbo.Locales.idlocal = dbo.venta.idcine INNER JOIN
                      dbo.pelicula ON dbo.venta.idpelicula = dbo.pelicula.idpelicula INNER JOIN
                      dbo.usuario ON dbo.venta.iduser = dbo.usuario.cod_tarjeta
where iduser=@user
GO
