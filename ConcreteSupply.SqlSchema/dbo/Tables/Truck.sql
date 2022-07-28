CREATE TABLE [dbo].[Truck] (
    [Id]                       INT            NOT NULL,
    [FuelLevelConversionRatio] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_Truck] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Truck_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

