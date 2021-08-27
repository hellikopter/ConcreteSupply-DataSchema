CREATE TABLE [dbo].[UserRole] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [UserName]     NVARCHAR (128) NOT NULL,
    [UserRoleName] NVARCHAR (16)  NOT NULL,
    CONSTRAINT [IX_UserRole] UNIQUE NONCLUSTERED ([UserName] ASC)
);

