CREATE TABLE [dbo].[venta]
(
[idventa] [int] NOT NULL IDENTITY(1, 1),
[idpelicula] [int] NULL,
[idcine] [int] NULL,
[fecha] [date] NULL CONSTRAINT [DF_venta_fecha] DEFAULT (getdate()),
[funcion] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[cant_tick_niños] [smallint] NULL,
[cant_tick_adultos] [smallint] NULL,
[total] [int] NULL,
[iduser] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NULL,
[sala] [varchar] (10) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[tr_ventaBak]
on [dbo].[venta]
after insert
as
begin
insert bakventa select * from inserted
end
GO
ALTER TABLE [dbo].[venta] ADD CONSTRAINT [PK__venta__F82D1AFB07020F21] PRIMARY KEY CLUSTERED  ([idventa]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[venta] ADD CONSTRAINT [FK_venta_Locales] FOREIGN KEY ([idcine]) REFERENCES [dbo].[Locales] ([idlocal])
GO
ALTER TABLE [dbo].[venta] ADD CONSTRAINT [FK_venta_pelicula] FOREIGN KEY ([idpelicula]) REFERENCES [dbo].[pelicula] ([idpelicula])
GO
ALTER TABLE [dbo].[venta] ADD CONSTRAINT [FK_user] FOREIGN KEY ([iduser]) REFERENCES [dbo].[usuario] ([cod_tarjeta])
GO
