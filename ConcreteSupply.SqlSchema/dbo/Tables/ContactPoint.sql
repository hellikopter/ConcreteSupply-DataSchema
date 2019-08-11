CREATE TABLE [dbo].[ContactPoint] (
    [Id]                INT           IDENTITY (1, 1) NOT NULL,
    [Label]             NVARCHAR (64) NOT NULL,
    [Email]             NVARCHAR (64) NULL,
    [PhoneNumber]       NVARCHAR (16) NULL,
    [MobilePhoneNumber] NVARCHAR (16) NULL,
    CONSTRAINT [PK_ContactPoint] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IX_ContactPoint] UNIQUE NONCLUSTERED ([Label] ASC)
);

