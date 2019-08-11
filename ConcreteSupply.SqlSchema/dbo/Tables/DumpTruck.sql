CREATE TABLE [dbo].[DumpTruck] (
    [Id]      INT            NOT NULL,
    [Payload] DECIMAL (3, 1) NULL,
    CONSTRAINT [PK_DumpTruck] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DumpTruck_Vehicle] FOREIGN KEY ([Id]) REFERENCES [dbo].[Vehicle] ([Id])
);

