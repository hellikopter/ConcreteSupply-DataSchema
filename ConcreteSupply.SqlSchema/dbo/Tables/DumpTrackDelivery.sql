CREATE TABLE [dbo].[DumpTrackDelivery] (
    [Id]                     INT            NOT NULL,
    [LoadingPostalAddressId] INT            NOT NULL,
    [Payload]                DECIMAL (3, 1) NOT NULL,
    CONSTRAINT [PK_DumpTrackDelivery] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_DumpTrackDelivery] CHECK ([dbo].[DumpTrackDeliveryReferentialIntegrityCheck]([Id],[LoadingPostalAddressId])=(1)),
    CONSTRAINT [FK_DumpTrackDelivery_Delivery] FOREIGN KEY ([Id]) REFERENCES [dbo].[Delivery] ([Id]),
    CONSTRAINT [FK_DumpTrackDelivery_PostalAddress] FOREIGN KEY ([LoadingPostalAddressId]) REFERENCES [dbo].[PostalAddress] ([Id])
);



