CREATE TABLE [dbo].[DriverWageDeliveryRate] (
    [Id]           INT            NOT NULL,
    [DeliveryRate] DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_DriverWageDeliveryRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DriverWageDeliveryRate_DriverWageRate] FOREIGN KEY ([Id]) REFERENCES [dbo].[DriverWageRate] ([Id])
);

