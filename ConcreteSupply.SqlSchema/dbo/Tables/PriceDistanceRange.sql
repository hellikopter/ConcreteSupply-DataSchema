CREATE TABLE [dbo].[PriceDistanceRange] (
    [Id]                                 INT            NOT NULL,
    [MinimumInclusiveDistance]           DECIMAL (5, 2) NOT NULL,
    [MaximumExclusiveDistance]           DECIMAL (5, 2) NOT NULL,
    [PriceDistanceRangeRate]             DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_PriceDistanceRange] PRIMARY KEY CLUSTERED ([Id],[MinimumInclusiveDistance]),
    CONSTRAINT [FK_PriceDistanceRange_Price] FOREIGN KEY ([Id]) REFERENCES [dbo].[Price] ([Id])
);

