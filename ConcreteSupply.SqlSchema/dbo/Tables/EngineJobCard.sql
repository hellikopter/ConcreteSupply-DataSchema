CREATE TABLE [dbo].[EngineJobCard] (
    [Id]               INT            NOT NULL,
    [EngineHoursStart] DECIMAL (8, 2) NOT NULL,
    [EngineHoursEnd]   DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_EngineJobCard] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EngineJobCard_VehicleJobCard] FOREIGN KEY ([Id]) REFERENCES [dbo].[VehicleJobCard] ([Id])
);

