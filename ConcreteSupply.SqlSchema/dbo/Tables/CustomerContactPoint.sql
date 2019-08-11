CREATE TABLE [dbo].[CustomerContactPoint] (
    [Id]             INT IDENTITY (1, 1) NOT NULL,
    [CustomerId]     INT NOT NULL,
    [ContactPointId] INT NOT NULL,
    CONSTRAINT [PK_CustomerContactPoint] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CustomerContactPoint_ContactPoint] FOREIGN KEY ([ContactPointId]) REFERENCES [dbo].[ContactPoint] ([Id]),
    CONSTRAINT [FK_CustomerContactPoint_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]),
    CONSTRAINT [IX_CustomerContactPoint] UNIQUE NONCLUSTERED ([CustomerId] ASC, [ContactPointId] ASC)
);

