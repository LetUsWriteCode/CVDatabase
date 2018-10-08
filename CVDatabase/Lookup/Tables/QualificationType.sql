CREATE TABLE [Lookup].[QualificationType] (
    [QualificationTypeID] TINYINT       IDENTITY (1, 1) NOT NULL,
    [QualificationType]   NVARCHAR (20) NOT NULL,
    [Professional]        BIT           CONSTRAINT [DF_QualificationType_Professional] DEFAULT ((0)) NOT NULL,
    [SortOrder]           TINYINT       NOT NULL,
    CONSTRAINT [PK_Qualification_QualificationTypeId] PRIMARY KEY CLUSTERED ([QualificationTypeID] ASC)
);

