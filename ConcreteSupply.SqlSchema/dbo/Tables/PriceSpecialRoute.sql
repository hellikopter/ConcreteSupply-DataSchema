CREATE TABLE [dbo].[PriceSpecialRoute] (
    [Id]                               INT            NOT NULL,
    [PriceSpecialRouteHasSpecialRoute] INT            NOT NULL,
    [PriceSpecialRouteCapacityRate]    DECIMAL (5, 2) NOT NULL,
    [PriceSpecialRoutePayloadRate]     DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_PriceSpecialRoute] PRIMARY KEY CLUSTERED ([Id] ASC, [PriceSpecialRouteHasSpecialRoute] ASC),
    CONSTRAINT [FK_PriceSpecialRoute_Price] FOREIGN KEY ([Id]) REFERENCES [dbo].[Price] ([Id]),
    CONSTRAINT [FK_PriceSpecialRoute_SpecialRoute] FOREIGN KEY ([PriceSpecialRouteHasSpecialRoute]) REFERENCES [dbo].[SpecialRoute] ([Id])
);

