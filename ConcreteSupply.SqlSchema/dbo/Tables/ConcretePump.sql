CREATE TABLE [dbo].[ConcretePump] (
    [Id]                INT            NOT NULL,
    [ConcretePumpReach] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_ConcretePump] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcretePump_Truck] FOREIGN KEY ([Id]) REFERENCES [dbo].[Truck] ([Id])
);

