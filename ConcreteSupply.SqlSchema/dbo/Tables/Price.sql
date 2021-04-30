CREATE TABLE [dbo].[Price] (
    [Id]                              INT                IDENTITY (1, 1) NOT NULL,
    [PriceHasCustomer]                INT                NOT NULL,
    [PriceStart]                      DATETIMEOFFSET (7) NOT NULL,
    [PriceEnd]                        DATETIMEOFFSET (7) NULL,
    [PriceHourlyRate]                 DECIMAL (8, 2)     NULL,
    [PriceConcreteCapacityRate]       DECIMAL (8, 2)     NULL,
    [PriceConcreteRestTimeRate]       DECIMAL (8, 2)     NULL,
    [PriceSpecialRouteCapacityRate]   DECIMAL (8, 2)     NULL,
    [PriceSpecialRoutePayloadRate]    DECIMAL (8, 2)     NULL,
    [PriceConcretePumpDeliveryRate]   DECIMAL (8, 2)     NULL,
    [PriceConcretePumpCapacityRate]   DECIMAL (8, 2)     NULL,
    [PriceConcretePumpHoseLengthRate] DECIMAL (8, 2)     NULL,
    CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Price_Customer] FOREIGN KEY ([PriceHasCustomer]) REFERENCES [dbo].[Customer] ([Id])
);

