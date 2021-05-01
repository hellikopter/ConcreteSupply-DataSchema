CREATE TABLE [dbo].[PriceDistanceRange] (
    [Id]                                 INT            NOT NULL,
    [PriceDistanceRangeHasDistanceRange] INT            NOT NULL,
    [PriceDistanceRangeRate]             DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_PriceDistanceRange] PRIMARY KEY CLUSTERED ([Id],[PriceDistanceRangeHasDistanceRange]),
    CONSTRAINT [FK_PriceDistanceRange_DistanceRange] FOREIGN KEY ([PriceDistanceRangeHasDistanceRange]) REFERENCES [dbo].[DistanceRange] ([Id]),
    CONSTRAINT [FK_PriceDistanceRange_Price] FOREIGN KEY ([Id]) REFERENCES [dbo].[Price] ([Id])
);

