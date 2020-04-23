CREATE TABLE [dbo].[VehicleJobCard] (
    [Id]             INT                IDENTITY (1, 1) NOT NULL,
    [VehicleId]      INT                NOT NULL,
    [StartTime]      DATETIMEOFFSET (0) NOT NULL,
    [EndTime]        DATETIMEOFFSET (0) NULL,
    [StartOdometer]  INT                NOT NULL,
    [EndOdometer]    INT                NULL,
    [StartFuelLevel] INT                NOT NULL,
    [EndFuelLevel]   INT                NULL,
    [RdfLocalId]     NVARCHAR (36)      NOT NULL,
    CONSTRAINT [PK_VehicleJobCard] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_VehicleJobCard_Vehicle] FOREIGN KEY ([VehicleId]) REFERENCES [dbo].[Vehicle] ([Id])
);





