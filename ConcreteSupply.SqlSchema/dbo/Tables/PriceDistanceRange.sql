CREATE TABLE [dbo].[PriceDistanceRange] (
    [Id]                                 INT            NOT NULL,
    [PriceDistanceRangeHasDistanceRange] INT            NOT NULL,
    [PriceDistanceRangeRate]             DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_PriceDistanceRange] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PriceDistanceRange_DistanceRange] FOREIGN KEY ([PriceDistanceRangeHasDistanceRange]) REFERENCES [dbo].[DistanceRange] ([Id]),
    CONSTRAINT [FK_PriceDistanceRange_Price] FOREIGN KEY ([Id]) REFERENCES [dbo].[Price] ([Id])
);

