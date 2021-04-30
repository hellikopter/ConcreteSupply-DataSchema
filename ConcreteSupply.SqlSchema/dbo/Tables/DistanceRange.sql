CREATE TABLE [dbo].[DistanceRange] (
    [Id]                       INT            IDENTITY (1, 1) NOT NULL,
    [MinimumInclusiveDistance] DECIMAL (8, 2) NOT NULL,
    [MaximumExclusiveDistance] DECIMAL (8, 2) NOT NULL,
    CONSTRAINT [PK_DistanceRange] PRIMARY KEY CLUSTERED ([Id] ASC)
);

