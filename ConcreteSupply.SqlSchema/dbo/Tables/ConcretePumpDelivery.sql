CREATE TABLE [dbo].[ConcretePumpDelivery] (
    [Id]              INT NOT NULL,
    [PumpWorkingTime] INT NOT NULL,
    [PumpRestTime]    INT NOT NULL,
    [HoseLength]      INT NOT NULL,
    CONSTRAINT [PK_ConcretePumpDelivery] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcretePumpDelivery_Delivery] FOREIGN KEY ([Id]) REFERENCES [dbo].[Delivery] ([Id])
);

