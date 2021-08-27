CREATE TABLE [dbo].[AddressedDelivery] (
    [Id]                      INT                NOT NULL,
    [AddressedDeliveryHasOrigin]            INT  NOT NULL,
    [AddressedDeliveryHasDestination] INT        NOT NULL
    CONSTRAINT [PK_AddressedDelivery] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Delivery_PostalAddressOrigin] FOREIGN KEY ([AddressedDeliveryHasOrigin]) REFERENCES [dbo].[PostalAddress] ([Id]),
    CONSTRAINT [FK_Delivery_PostalAddressDestination] FOREIGN KEY ([AddressedDeliveryHasDestination]) REFERENCES [dbo].[PostalAddress] ([Id]),
    CONSTRAINT [FK_AddressedDelivery_Delivery] FOREIGN KEY ([Id]) REFERENCES [dbo].[Delivery] ([Id])
);

