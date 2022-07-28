CREATE TABLE [dbo].[DumpTrailer] (
    [Id]               INT            NOT NULL,
    [DumpTrailerPayload] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_DumpTrailer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DumpTrailer_Trailer] FOREIGN KEY ([Id]) REFERENCES [dbo].[Trailer] ([Id])
);

