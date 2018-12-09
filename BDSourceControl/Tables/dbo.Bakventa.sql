CREATE TABLE [dbo].[Bakventa]
(
[idventa] [int] NOT NULL,
[idpelicula] [int] NULL,
[idcine] [int] NULL,
[fecha] [date] NULL,
[funcion] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[cant_tick_niños] [smallint] NULL,
[cant_tick_adultos] [smallint] NULL,
[total] [int] NULL,
[iduser] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NULL,
[sala] [varchar] (10) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
