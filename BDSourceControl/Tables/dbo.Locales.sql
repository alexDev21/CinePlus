CREATE TABLE [dbo].[Locales]
(
[idlocal] [int] NOT NULL IDENTITY(1, 1),
[nombreLocal] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[direccion] [varchar] (100) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[tr_localesBak]
on [dbo].[Locales]
after insert
as
begin
insert baklocales select * from inserted
end
GO
ALTER TABLE [dbo].[Locales] ADD CONSTRAINT [PK_Locales] PRIMARY KEY CLUSTERED  ([idlocal]) ON [PRIMARY]
GO
