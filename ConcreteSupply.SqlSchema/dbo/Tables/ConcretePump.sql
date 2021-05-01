CREATE TABLE [dbo].[ConcretePump] (
    [Id]                INT            NOT NULL,
    [ConcretePumpReach] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_ConcretePump] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcretePump_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

