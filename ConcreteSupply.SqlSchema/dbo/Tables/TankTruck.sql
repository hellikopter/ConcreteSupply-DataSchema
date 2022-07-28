CREATE TABLE [dbo].[TankTruck] (
    [Id]                INT            NOT NULL,
    [TankTruckCapacity] DECIMAL (5, 2) NOT NULL,
    [TankTruckPayload]  DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_TankTruck] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TankTruck_Truck] FOREIGN KEY ([Id]) REFERENCES [dbo].[Truck] ([Id])
);

