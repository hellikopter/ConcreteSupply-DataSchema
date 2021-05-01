CREATE TABLE [dbo].[Price] (
    [Id]                              INT                IDENTITY (1, 1) NOT NULL,
    [PriceHasCustomer]                INT                NOT NULL,
    [PriceStart]                      DATETIMEOFFSET (0) NOT NULL,
    [PriceEnd]                        DATETIMEOFFSET (0) NULL,
    [PriceHourlyRate]                 DECIMAL (5, 2)     NULL,
    [PriceConcreteCapacityRate]       DECIMAL (5, 2)     NULL,
    [PriceConcreteRestTimeRate]       DECIMAL (5, 2)     NULL,
    [PriceSpecialRouteCapacityRate]   DECIMAL (5, 2)     NULL,
    [PriceSpecialRoutePayloadRate]    DECIMAL (5, 2)     NULL,
    [PriceConcretePumpDeliveryRate]   DECIMAL (5, 2)     NULL,
    [PriceConcretePumpCapacityRate]   DECIMAL (5, 2)     NULL,
    [PriceConcretePumpHoseLengthRate] DECIMAL (5, 2)     NULL,
    CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Price_Customer] FOREIGN KEY ([PriceHasCustomer]) REFERENCES [dbo].[Customer] ([Id])
);

