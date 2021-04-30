CREATE TABLE [dbo].[ConcretePumpJobCard] (
    [Id]                     INT NOT NULL,
    [ConcretePumpHoursStart] INT NOT NULL,
    [ConcretePumpHoursEnd]   INT NOT NULL,
    CONSTRAINT [PK_ConcretePumpJobCard] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcretePumpJobCard_VehicleJobCard] FOREIGN KEY ([Id]) REFERENCES [dbo].[VehicleJobCard] ([Id])
);

