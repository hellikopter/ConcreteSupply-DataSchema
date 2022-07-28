CREATE TABLE [dbo].[ConcreteMixerTrailer] (
    [Id]                    INT            NOT NULL,
    [ConcreteMixerTrailerCapacity] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_ConcreteMixerTrailer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConcreteMixerTrailer_Trailer] FOREIGN KEY ([Id]) REFERENCES [dbo].[Trailer] ([Id])
);

