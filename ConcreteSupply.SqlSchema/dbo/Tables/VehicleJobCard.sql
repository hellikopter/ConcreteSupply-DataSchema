CREATE TABLE [dbo].[VehicleJobCard] (
    [Id]                           INT                IDENTITY (1, 1) NOT NULL,
    [VehicleJobCardStart]          DATETIMEOFFSET (7) NOT NULL,
    [VehicleJobCardEnd]            DATETIMEOFFSET (7) NOT NULL,
    [VehicleJobCardOdometerStart]  INT                NOT NULL,
    [VehicleJobCardOdometerEnd]    INT                NOT NULL,
    [VehicleJobCardFuelLevelStart] INT                NOT NULL,
    [VehicleJobCardFuelLevelEnd]   INT                NOT NULL,
    [VehicleJobCardHasVehicle]     INT                NOT NULL,
    CONSTRAINT [PK_VehicleJobCard] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VehicleJobCard_Vehicle] FOREIGN KEY ([VehicleJobCardHasVehicle]) REFERENCES [dbo].[Vehicle] ([Id])
);

