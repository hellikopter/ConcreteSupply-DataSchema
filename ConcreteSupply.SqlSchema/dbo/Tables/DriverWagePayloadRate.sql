CREATE TABLE [dbo].[DriverWagePayloadRate] (
    [Id]          INT            NOT NULL,
    [PayloadRate] DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_DriverWagePayloadRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DriverWagePayloadRate_DriverWageRate] FOREIGN KEY ([Id]) REFERENCES [dbo].[DriverWageRate] ([Id])
);

