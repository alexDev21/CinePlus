CREATE TABLE [dbo].[usuario]
(
[cod_tarjeta] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[contrasenha] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[nombres] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[apellidos] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[dni] [varchar] (8) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[tr_usuarioBak]
on [dbo].[usuario]
after insert
as
begin
insert bakusuario select * from inserted
end
GO
ALTER TABLE [dbo].[usuario] ADD CONSTRAINT [PK__usuario__8B6B356E7F60ED59] PRIMARY KEY CLUSTERED  ([cod_tarjeta]) ON [PRIMARY]
GO
