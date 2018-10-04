CREATE TABLE [Lookup].[StatementType] (
    [StatementTypeID] TINYINT        IDENTITY (1, 1) NOT NULL,
    [StatementType]   NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_StatementType_StatementTypeID] PRIMARY KEY CLUSTERED ([StatementTypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UIX_StatementType_StatementType]
    ON [Lookup].[StatementType]([StatementType] ASC);

