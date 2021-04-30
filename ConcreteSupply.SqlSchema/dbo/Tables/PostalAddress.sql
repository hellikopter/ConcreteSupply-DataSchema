CREATE TABLE [dbo].[PostalAddress] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [PostalAddressLine1]    NVARCHAR (64) NOT NULL,
    [PostalAddressLine2]    NVARCHAR (64) NULL,
    [PostalAddressLine3]    NVARCHAR (64) NULL,
    [PostalAddressLine4]    NVARCHAR (64) NULL,
    [PostalAddressLine5]    NVARCHAR (64) NULL,
    [PostalAddressPostCode] NVARCHAR (16) NULL,
    CONSTRAINT [PK_PostalAddress] PRIMARY KEY CLUSTERED ([Id] ASC)
);





