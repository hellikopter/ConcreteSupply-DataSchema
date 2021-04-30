CREATE TABLE [dbo].[EngineJobCard] (
    [Id]               INT NOT NULL,
    [EngineHoursStart] INT NOT NULL,
    [EngineHoursEnd]   INT NOT NULL,
    CONSTRAINT [PK_EngineJobCard] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EngineJobCard_VehicleJobCard] FOREIGN KEY ([Id]) REFERENCES [dbo].[VehicleJobCard] ([Id])
);

