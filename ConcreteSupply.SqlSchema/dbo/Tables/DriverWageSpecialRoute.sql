CREATE TABLE [dbo].[DriverWageSpecialRoute] (
    [Id]                                        INT            NOT NULL,
    [DriverWageSpecialRouteRateHasSpecialRoute] INT            NOT NULL,
    [DriverWageSpecialRouteRate]                DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_DriverWageSpecialRoute] PRIMARY KEY CLUSTERED ([Id],[DriverWageSpecialRouteRateHasSpecialRoute]),
    CONSTRAINT FK_DriverWageSpecialRoute_SpecialRoute FOREIGN KEY ([DriverWageSpecialRouteRateHasSpecialRoute]) REFERENCES [dbo].[SpecialRoute] ([Id]),
    CONSTRAINT [FK_DriverWageSpecialRoute_DriverWageRate] FOREIGN KEY ([Id]) REFERENCES [dbo].[DriverWageRate] ([Id])
);

