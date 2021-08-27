CREATE TABLE [dbo].[SpecialRouteDelivery] (
    [Id]                      INT                NOT NULL,
    [SpecialRouteDeliveryHasSpecialRoute]            INT  NOT NULL
    CONSTRAINT [PK_SpecialRouteDelivery] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SpecialRouteDelivery_SpecialRoute] FOREIGN KEY ([SpecialRouteDeliveryHasSpecialRoute]) REFERENCES [dbo].[SpecialRoute] ([Id]),
    CONSTRAINT [FK_SpecialRouteDelivery_Delivery] FOREIGN KEY ([Id]) REFERENCES [dbo].[Delivery] ([Id])
);

