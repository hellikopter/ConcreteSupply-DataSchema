CREATE TABLE [dbo].[PostalAddress] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [ContactPointId] INT           NOT NULL,
    [AddressLine1]   NVARCHAR (64) NOT NULL,
    [AddressLine2]   NVARCHAR (64) NULL,
    [AddressLine3]   NVARCHAR (64) NULL,
    [AddressLine4]   NVARCHAR (64) NULL,
    [AddressLine5]   NVARCHAR (64) NULL,
    [PostCode]       NVARCHAR (64) NULL,
    [RdfLocalId]     NVARCHAR (36) NOT NULL,
    CONSTRAINT [PK_PostalAddress] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PostalAddress_ContactPoint] FOREIGN KEY ([ContactPointId]) REFERENCES [dbo].[ContactPoint] ([Id])
);



