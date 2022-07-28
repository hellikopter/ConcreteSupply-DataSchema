CREATE TABLE [dbo].[ConcreteMixer] (
    [Id]                    INT            NOT NULL,
    [ConcreteMixerCapacity] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_ConcreteMixer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcreteMixer_Truck] FOREIGN KEY ([Id]) REFERENCES [dbo].[Truck] ([Id])
);

