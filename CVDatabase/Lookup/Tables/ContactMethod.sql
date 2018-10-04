CREATE TABLE [Lookup].[ContactMethod] (
    [ContactMethodID] TINYINT        IDENTITY (1, 1) NOT NULL,
    [ContactType]     NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_ContactMethod_ContactMethodID] PRIMARY KEY CLUSTERED ([ContactMethodID] ASC)
);

