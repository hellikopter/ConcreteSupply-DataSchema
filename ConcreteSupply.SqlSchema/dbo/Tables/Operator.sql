CREATE TABLE [dbo].[Operator] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [UserName]     NVARCHAR (64)   NOT NULL,
    [UserPassword] NVARCHAR (1024) NOT NULL,
    [RdfLocalId]   NVARCHAR (36)   NOT NULL,
    CONSTRAINT [PK_Operator] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IX_Operator] UNIQUE NONCLUSTERED ([UserName] ASC)
);



