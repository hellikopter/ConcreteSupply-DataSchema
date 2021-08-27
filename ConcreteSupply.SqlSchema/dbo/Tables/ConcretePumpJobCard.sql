CREATE TABLE [dbo].[ConcretePumpJobCard] (
    [Id]                     INT            NOT NULL,
    [ConcretePumpHoursStart] DECIMAL (8, 2) NOT NULL,
    [ConcretePumpHoursEnd]   DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_ConcretePumpJobCard] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcretePumpJobCard_VehicleJobCard] FOREIGN KEY ([Id]) REFERENCES [dbo].[VehicleJobCard] ([Id])
);

