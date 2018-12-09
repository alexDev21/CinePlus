CREATE TABLE [dbo].[Bakusuario]
(
[cod_tarjeta] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[contrasenha] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[nombres] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[apellidos] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[dni] [varchar] (8) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
