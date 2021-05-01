CREATE TABLE [dbo].[DumpTruck] (
    [Id]               INT            NOT NULL,
    [DumpTruckPayload] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_DumpTruck] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DumpTruck_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

