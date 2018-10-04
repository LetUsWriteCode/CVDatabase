CREATE TABLE [dbo].[SubjectContact] (
    [SubjectContactID] SMALLINT IDENTITY (1, 1) NOT NULL,
    [SubjectID]        SMALLINT NOT NULL,
    [ContactMethodID]  TINYINT  NOT NULL,
    [DateAdded]        DATETIME CONSTRAINT [DF_SubjectContact_DateAdded_Now] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SubjectContact_SubjectContactID] PRIMARY KEY CLUSTERED ([SubjectContactID] ASC),
    CONSTRAINT [FK_SubjectContact_ContactMethodID] FOREIGN KEY ([ContactMethodID]) REFERENCES [Lookup].[ContactMethod] ([ContactMethodID]),
    CONSTRAINT [FK_SubjectContact_SubjectID] FOREIGN KEY ([SubjectID]) REFERENCES [dbo].[Subject] ([SubjectID])
);

