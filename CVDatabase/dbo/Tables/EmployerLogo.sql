CREATE TABLE [dbo].[EmployerLogo] (
    [EmployerLogoID] SMALLINT        IDENTITY (1, 1) NOT NULL,
    [EmployerID]     SMALLINT        NOT NULL,
    [LogoBLOB]       VARBINARY (MAX) NOT NULL,
    CONSTRAINT [PK_EmployerLogo_EmployerLogoID] PRIMARY KEY CLUSTERED ([EmployerLogoID] ASC),
    CONSTRAINT [FK_EmployerLogo_EmployerID] FOREIGN KEY ([EmployerID]) REFERENCES [dbo].[Employer] ([EmployerID])
);

