CREATE TABLE [dbo].[Bakpelicula]
(
[idpelicula] [int] NOT NULL,
[nombre] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[descripcion] [varchar] (300) COLLATE Modern_Spanish_CI_AS NULL,
[horarios] [smalldatetime] NULL,
[local] [varchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[genero] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[duracion] [nchar] (10) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
