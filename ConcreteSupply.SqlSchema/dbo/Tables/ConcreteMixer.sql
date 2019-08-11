CREATE TABLE [dbo].[ConcreteMixer] (
    [Id]       INT            NOT NULL,
    [Capacity] DECIMAL (4, 2) NULL,
    CONSTRAINT [PK_ConcreteMixer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcreteMixer_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

