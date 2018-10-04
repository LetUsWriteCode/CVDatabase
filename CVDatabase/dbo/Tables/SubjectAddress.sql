CREATE TABLE [dbo].[SubjectAddress] (
    [SubjectAddressID] SMALLINT IDENTITY (1, 1) NOT NULL,
    [SubjectID]        SMALLINT NOT NULL,
    [AddressID]        SMALLINT NOT NULL,
    [DateAdded]        DATETIME CONSTRAINT [DF_SubjectAddress_DateAdded_Now] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SubjectAddress_SubjectAddressID] PRIMARY KEY CLUSTERED ([SubjectAddressID] ASC),
    CONSTRAINT [FK_SubjectAddress_AddressID] FOREIGN KEY ([AddressID]) REFERENCES [dbo].[Address] ([AddressID]),
    CONSTRAINT [FK_SubjectAddress_SubjectID] FOREIGN KEY ([SubjectID]) REFERENCES [dbo].[Subject] ([SubjectID])
);

