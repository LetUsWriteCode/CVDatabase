CREATE TABLE [dbo].[Subject] (
    [SubjectID]   SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Title]       NVARCHAR (10) NOT NULL,
    [Forename]    NVARCHAR (50) NOT NULL,
    [MiddleName]  NVARCHAR (50) NULL,
    [Surname]     NVARCHAR (50) NOT NULL,
    [DateOfBirth] DATE          NULL,
    CONSTRAINT [PK_Subject_SubjectID] PRIMARY KEY CLUSTERED ([SubjectID] ASC)
);

