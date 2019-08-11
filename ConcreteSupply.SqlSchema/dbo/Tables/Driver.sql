CREATE TABLE [dbo].[Driver] (
    [Id]        INT           NOT NULL,
    [FirstName] NVARCHAR (64) NOT NULL,
    [LastName]  NVARCHAR (64) NOT NULL,
    CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Driver_Operator] FOREIGN KEY ([Id]) REFERENCES [dbo].[Operator] ([Id])
);

