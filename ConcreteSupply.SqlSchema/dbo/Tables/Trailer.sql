CREATE TABLE [dbo].[Trailer] (
    [Id]                       INT            NOT NULL,
    CONSTRAINT [PK_Trailer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Trailer_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

