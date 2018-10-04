CREATE TABLE [dbo].[Responsibility] (
    [ResponsibilityID]   SMALLINT        IDENTITY (1, 1) NOT NULL,
    [ResponsibilityText] NVARCHAR (1000) NOT NULL,
    CONSTRAINT [PK_Responsibility_ResponsibilityID] PRIMARY KEY CLUSTERED ([ResponsibilityID] ASC)
);

