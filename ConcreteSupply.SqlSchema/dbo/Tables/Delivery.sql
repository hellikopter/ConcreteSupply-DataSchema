CREATE TABLE [dbo].[Delivery] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [PostalAddressId]    INT            NOT NULL,
    [VehicleId]          INT            NOT NULL,
    [DriverId]           INT            NOT NULL,
    [DeliveryReference]  NVARCHAR (32)  NOT NULL,
    [Distance]           DECIMAL (4, 2) NOT NULL,
    [PreviousDeliveryId] INT            NULL,
    CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Delivery_Delivery] FOREIGN KEY ([PreviousDeliveryId]) REFERENCES [dbo].[Delivery] ([Id]),
    CONSTRAINT [FK_Delivery_Driver] FOREIGN KEY ([DriverId]) REFERENCES [dbo].[Driver] ([Id]),
    CONSTRAINT [FK_Delivery_PostalAddress] FOREIGN KEY ([PostalAddressId]) REFERENCES [dbo].[PostalAddress] ([Id]),
    CONSTRAINT [FK_Delivery_Vehicle] FOREIGN KEY ([VehicleId]) REFERENCES [dbo].[Vehicle] ([Id]),
    CONSTRAINT [IX_Delivery_1] UNIQUE NONCLUSTERED ([DeliveryReference] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Delivery_2]
    ON [dbo].[Delivery]([PreviousDeliveryId] ASC) WHERE ([PreviousDeliveryId] IS NOT NULL);

