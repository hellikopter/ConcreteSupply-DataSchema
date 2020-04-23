CREATE TABLE [dbo].[DriverWageDayRate] (
    [Id]         INT            NOT NULL,
    [DayRate]    DECIMAL (8, 2) NOT NULL,
    [RdfLocalId] NVARCHAR (36)  NOT NULL,
    CONSTRAINT [PK_DriverWageDayRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DriverWageDayRate_DriverWageRate] FOREIGN KEY ([Id]) REFERENCES [dbo].[DriverWageRate] ([Id])
);



