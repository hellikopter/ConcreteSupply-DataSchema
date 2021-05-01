CREATE TABLE [dbo].[DistanceRange] (
    [Id]                       INT            IDENTITY (1, 1) NOT NULL,
    [MinimumInclusiveDistance] DECIMAL (5, 2) NOT NULL,
    [MaximumExclusiveDistance] DECIMAL (5, 2) NOT NULL,
    CONSTRAINT [PK_DistanceRange] PRIMARY KEY CLUSTERED ([Id] ASC)
);

