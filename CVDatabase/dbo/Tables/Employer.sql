CREATE TABLE [dbo].[Employer] (
    [EmployerID]         SMALLINT        IDENTITY (1, 1) NOT NULL,
    [CompanyName]        NVARCHAR (100)  NOT NULL,
    [Website]            NVARCHAR (256)  NULL,
    [CompanyDescription] NVARCHAR (1000) NULL,
    CONSTRAINT [PK_Employer_EmployerID] PRIMARY KEY CLUSTERED ([EmployerID] ASC)
);

