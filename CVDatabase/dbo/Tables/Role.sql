CREATE TABLE [dbo].[Role] (
    [RoleID]      SMALLINT       IDENTITY (1, 1) NOT NULL,
    [EmployerID]  SMALLINT       NOT NULL,
    [SubjectID]   SMALLINT       NOT NULL,
    [JobTitle]    NVARCHAR (100) NOT NULL,
    [StartDate]   DATE           CONSTRAINT [DF_Role_StartDate_Today] DEFAULT (CONVERT([date],getdate())) NOT NULL,
    [EndDate]     DATE           NULL,
    [CurrentRole] BIT            CONSTRAINT [DF_Role_CurrentRole_False] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Role_RoleID] PRIMARY KEY CLUSTERED ([RoleID] ASC),
    CONSTRAINT [FK_Role_EmployerID] FOREIGN KEY ([EmployerID]) REFERENCES [dbo].[Employer] ([EmployerID]),
    CONSTRAINT [FK_Role_SubjectID] FOREIGN KEY ([SubjectID]) REFERENCES [dbo].[Subject] ([SubjectID])
);

