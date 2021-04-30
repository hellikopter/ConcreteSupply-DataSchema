CREATE TABLE [dbo].[SpecialRoute] (
    [Id]                         INT IDENTITY (1, 1) NOT NULL,
    [SpecialRouteHasOrigin]      INT NOT NULL,
    [SpecialRouteHasDestination] INT NOT NULL,
    CONSTRAINT [PK_SpecialRoute] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SpecialRoute_PostalAddress_Destination] FOREIGN KEY ([SpecialRouteHasDestination]) REFERENCES [dbo].[PostalAddress] ([Id]),
    CONSTRAINT [FK_SpecialRoute_PostalAddress_Origin] FOREIGN KEY ([SpecialRouteHasOrigin]) REFERENCES [dbo].[PostalAddress] ([Id])
);

