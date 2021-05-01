CREATE TABLE [dbo].[ConcretePumpDelivery] (
    [Id]                             INT            NOT NULL,
    [ConcretePumpDeliveryPumpLength] DECIMAL (5, 2) NOT NULL,
    [ConcretePumpDeliveryRestTime]   DECIMAL (5, 2) NOT NULL,
    [ConcretePumpDeliveryHoseLength] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_ConcretePumpDelivery] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcretePumpDelivery_Delivery] FOREIGN KEY ([Id]) REFERENCES [dbo].[Delivery] ([Id])
);

