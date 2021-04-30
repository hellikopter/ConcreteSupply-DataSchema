CREATE TABLE [dbo].[Driver] (
    [Id]               INT           IDENTITY (1, 1) NOT NULL,
    [DriverGivenName]  NVARCHAR (64) NOT NULL,
    [DriverFamilyName] NVARCHAR (64) NOT NULL,
    CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED ([Id] ASC)
);



