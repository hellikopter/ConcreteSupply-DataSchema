CREATE TABLE [dbo].[Vehicle] (
    [Id]                       INT            IDENTITY (1, 1) NOT NULL,
    [VehicleNumberPlate]       NVARCHAR (32)  NOT NULL,
    [FuelLevelConversionRatio] DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IX_Vehicle] UNIQUE NONCLUSTERED ([VehicleNumberPlate] ASC)
);

