CREATE TABLE [dbo].[Product] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [ProductName] NVARCHAR (64) NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IX_Product] UNIQUE NONCLUSTERED ([ProductName] ASC)
);



