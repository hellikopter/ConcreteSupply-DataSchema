CREATE TABLE [dbo].[ConcreteMixerDelivery] (
    [Id]        INT                NOT NULL,
    [StartTime] DATETIMEOFFSET (0) NOT NULL,
    [EndTime]   DATETIMEOFFSET (0) NULL,
    [Capacity]  DECIMAL (4, 2)     NOT NULL,
    CONSTRAINT [PK_ConcreteMixerDelivery] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcreteMixerDelivery_Delivery] FOREIGN KEY ([Id]) REFERENCES [dbo].[Delivery] ([Id])
);



