CREATE TABLE [dbo].[Statement] (
    [StatementID]     TINYINT         IDENTITY (1, 1) NOT NULL,
    [SubjectID]       SMALLINT        NOT NULL,
    [StatementTypeID] TINYINT         NOT NULL,
    [StatementText]   NVARCHAR (1000) NOT NULL,
    [IsCurrent]       BIT             CONSTRAINT [DF_Statement_IsCurrent_True] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Statement_StatementID] PRIMARY KEY CLUSTERED ([StatementID] ASC),
    CONSTRAINT [FK_Statement_StatementType] FOREIGN KEY ([StatementTypeID]) REFERENCES [Lookup].[StatementType] ([StatementTypeID]),
    CONSTRAINT [FK_Statement_SubjectID] FOREIGN KEY ([SubjectID]) REFERENCES [dbo].[Subject] ([SubjectID])
);

