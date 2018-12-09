CREATE TABLE [dbo].[pelicula]
(
[idpelicula] [int] NOT NULL IDENTITY(1, 1),
[nombre] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[descripcion] [varchar] (300) COLLATE Modern_Spanish_CI_AS NULL,
[horarios] [smalldatetime] NULL,
[local] [varchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[genero] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[duracion] [nchar] (10) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[tr_peliculaBak]
on [dbo].[pelicula]
after insert
as
begin
insert bakpelicula select * from inserted
end
GO
ALTER TABLE [dbo].[pelicula] ADD CONSTRAINT [PK__pelicula__9ED45B1D03317E3D] PRIMARY KEY CLUSTERED  ([idpelicula]) ON [PRIMARY]
GO
