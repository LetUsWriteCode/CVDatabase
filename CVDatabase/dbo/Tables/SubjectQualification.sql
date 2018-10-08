CREATE TABLE [dbo].[SubjectQualification] (
    [SubjectQualificationID] SMALLINT       IDENTITY (1, 1) NOT NULL,
    [SubjectID]              SMALLINT       NOT NULL,
    [QualificationTypeID]    TINYINT        NOT NULL,
    [SubjectArea]            NVARCHAR (200) NOT NULL,
    [Grade]                  NVARCHAR (10)  NULL,
    [DateAchieved]           DATE           NOT NULL,
    [AwardingBody]           NVARCHAR (50)  NULL,
    [Institution]            NVARCHAR (200) NULL,
    CONSTRAINT [PK_SubjectQualification_SubjectQualificationID] PRIMARY KEY CLUSTERED ([SubjectQualificationID] ASC),
    CONSTRAINT [FK_SubjectQualification_QualificationTypeID] FOREIGN KEY ([QualificationTypeID]) REFERENCES [Lookup].[QualificationType] ([QualificationTypeID]),
    CONSTRAINT [FK_SubjectQualification_SubjectID] FOREIGN KEY ([SubjectID]) REFERENCES [dbo].[Subject] ([SubjectID])
);

