CREATE TABLE [dbo].[Vehicle] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [NumberPlate] NVARCHAR (32) NOT NULL,
    CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IX_Vehicle] UNIQUE NONCLUSTERED ([NumberPlate] ASC)
);

