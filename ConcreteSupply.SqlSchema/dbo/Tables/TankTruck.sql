CREATE TABLE [dbo].[TankTruck] (
    [Id]                INT            NOT NULL,
    [TankTruckCapacity] DECIMAL (8, 2) NOT NULL,
    [TankTruckPayload]  DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_TankTruck] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TankTruck_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

