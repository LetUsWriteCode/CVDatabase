CREATE TABLE [dbo].[RoleResponsibility] (
    [RoleResponsibilityID] SMALLINT IDENTITY (1, 1) NOT NULL,
    [RoleID]               SMALLINT NOT NULL,
    [ResponsibilityID]     SMALLINT NOT NULL,
    CONSTRAINT [PK_RoleResponsibility_RoleResponsibilityID] PRIMARY KEY CLUSTERED ([RoleResponsibilityID] ASC),
    CONSTRAINT [FK_RoleResponsibility_ResponsibilityID] FOREIGN KEY ([ResponsibilityID]) REFERENCES [dbo].[Responsibility] ([ResponsibilityID]),
    CONSTRAINT [FK_RoleResponsibility_RoleID] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Role] ([RoleID])
);

