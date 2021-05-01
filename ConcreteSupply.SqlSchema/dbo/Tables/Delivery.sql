CREATE TABLE [dbo].[Delivery] (
    [Id]                      INT                IDENTITY (1, 1) NOT NULL,
    [DeliveryDate]            DATETIMEOFFSET (0) NOT NULL,
    [DeliveryReference]       NVARCHAR (64)      NOT NULL,
    [DeliveryDistance]        DECIMAL (5, 2)     NOT NULL,
    [DeliveryCapacity]        DECIMAL (5, 2)     NULL,
    [DeliveryPayload]         DECIMAL (5, 2)     NULL,
    [DeliveryArrivalTime]     DATETIMEOFFSET (0) NULL,
    [DeliveryWorkStart]       DATETIMEOFFSET (0) NULL,
    [DeliveryWorkEnd]         DATETIMEOFFSET (0) NULL,
    [DeliveryHasProduct]      INT                NOT NULL,
    [DeliveryHasVehicle]      INT                NOT NULL,
    [DeliveryHasDriver]       INT                NOT NULL,
    [DeliveryHasCustomer]     INT                NOT NULL,
    CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Delivery_Customer] FOREIGN KEY ([DeliveryHasCustomer]) REFERENCES [dbo].[Customer] ([Id]),
    CONSTRAINT [FK_Delivery_Driver] FOREIGN KEY ([DeliveryHasDriver]) REFERENCES [dbo].[Driver] ([Id]),
    CONSTRAINT [FK_Delivery_Product] FOREIGN KEY ([DeliveryHasProduct]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_Delivery_Vehicle] FOREIGN KEY ([DeliveryHasVehicle]) REFERENCES [dbo].[Vehicle] ([Id])
);

