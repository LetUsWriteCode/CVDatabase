CREATE TABLE [Lookup].[SkillSet] (
    [SkillSetID]   TINYINT        IDENTITY (1, 1) NOT NULL,
    [SkillSetName] NVARCHAR (100) NOT NULL
    CONSTRAINT [PK_SkillSet_SkillSetID] PRIMARY KEY CLUSTERED ([SkillSetID] ASC)
);

