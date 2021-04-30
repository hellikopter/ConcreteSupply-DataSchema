CREATE TABLE [dbo].[ConcreteMixer] (
    [Id]                    INT            NOT NULL,
    [ConcreteMixerCapacity] DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_ConcreteMixer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcreteMixer_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

