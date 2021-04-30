CREATE TABLE [dbo].[DriverWageSpecialRoute] (
    [Id]                                        INT            NOT NULL,
    [DriverWageSpecialRouteRateHasSpecialRoute] INT            NOT NULL,
    [DriverWageSpecialRouteRate]                DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_DriverWageSpecialRoute] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DriverWageSpecialRoute_DriverWageRate] FOREIGN KEY ([Id]) REFERENCES [dbo].[DriverWageRate] ([Id])
);

