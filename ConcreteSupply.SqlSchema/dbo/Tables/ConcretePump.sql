CREATE TABLE [dbo].[ConcretePump] (
    [Id]              INT            NOT NULL,
    [VerticalReach]   DECIMAL (5, 2) NULL,
    [HorizontalReach] DECIMAL (5, 2) NULL,
    CONSTRAINT [PK_ConcretePump] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcretePump_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

