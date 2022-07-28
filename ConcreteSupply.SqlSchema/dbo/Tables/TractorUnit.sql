CREATE TABLE [dbo].[TractorUnit] (
    [Id]                    INT            NOT NULL
    CONSTRAINT [PK_TractorUnit] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TractorUnit_Truck] FOREIGN KEY ([Id]) REFERENCES [dbo].[Truck] ([Id])
);

