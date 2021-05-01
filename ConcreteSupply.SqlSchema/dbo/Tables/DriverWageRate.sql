CREATE TABLE [dbo].[DriverWageRate] (
    [Id]                               INT                IDENTITY (1, 1) NOT NULL,
    [DriverWageRateHasDriver]          INT                NOT NULL,
    [DriverWageRateStart]              DATETIMEOFFSET (0) NOT NULL,
    [DriverWageRateEnd]                DATETIMEOFFSET (0) NULL,
    [DriverWageDailyRate]              DECIMAL (5, 2)     NULL,
    [DriverWageHourlyRate]             DECIMAL (5, 2)     NULL,
    [DriverWageDeliveryRate]           DECIMAL (5, 2)     NULL,
    [DriverWageVehicleMaintenanceRate] DECIMAL (5, 2)     NULL,
    [DriverWageDistanceRate]           DECIMAL (5, 2)     NULL,
    [DriverWageConcreteCapacityRate]   DECIMAL (5, 2)     NULL,
    [DriverWageConcretePumpTimeRate]   DECIMAL (5, 2)     NULL,
    [DriverWageLoadingRate]            DECIMAL (5, 2)     NULL,
    [DriverWageUnloadingRate]          DECIMAL (5, 2)     NULL,
    CONSTRAINT [PK_DriverWageRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DriverWageRate_Driver] FOREIGN KEY ([DriverWageRateHasDriver]) REFERENCES [dbo].[Driver] ([Id])
);



