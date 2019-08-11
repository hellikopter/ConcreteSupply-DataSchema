CREATE TABLE [dbo].[DriverWageCapacityRate] (
    [Id]           INT            NOT NULL,
    [CapacityRate] DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_DriverWageCapacityRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DriverWageCapacityRate_DriverWageRate] FOREIGN KEY ([Id]) REFERENCES [dbo].[DriverWageRate] ([Id])
);

