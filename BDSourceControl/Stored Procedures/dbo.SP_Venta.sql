SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[SP_Venta]
@idpelicula int,
@idcine int,
@fecha date,
@funcion nvarchar(8),
@cant_tick_niños smallint,
@cant_tick_adultos smallint,
@total numeric(6,2),
@iduser nvarchar(20),
@sala varchar(10)
as
begin
select @total=(@cant_tick_niños*8)+(@cant_tick_adultos*10);
insert into venta (idpelicula,idcine,fecha,funcion,cant_tick_niños,cant_tick_adultos,total,iduser,sala)
			values(@idpelicula,@idcine,@fecha,@funcion,@cant_tick_niños,@cant_tick_adultos,@total,@iduser,@sala)
end		
GO
