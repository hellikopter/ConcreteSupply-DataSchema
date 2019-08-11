CREATE TABLE [dbo].[DriverWageRate] (
    [Id]       INT                IDENTITY (1, 1) NOT NULL,
    [DriverId] INT                NOT NULL,
    [FromDate] DATETIMEOFFSET (7) NOT NULL,
    [ToDate]   DATETIMEOFFSET (7) NULL,
    CONSTRAINT [PK_DriverWageRate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DriverWageRate_Driver] FOREIGN KEY ([DriverId]) REFERENCES [dbo].[Driver] ([Id])
);

