CREATE TABLE [dbo].[Customer] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [CustomerName] NVARCHAR (64) NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IX_Customer] UNIQUE NONCLUSTERED ([CustomerName] ASC)
);







