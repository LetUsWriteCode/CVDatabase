CREATE TABLE [dbo].[ResponsibilitySkillSet] (
    [ResponsibilitySkillSetID] SMALLINT IDENTITY (1, 1) NOT NULL,
    [SkillSetID]               TINYINT  NOT NULL,
    [ResponsibilityID]         SMALLINT NOT NULL,
    CONSTRAINT [PK_ResponsibilitySkillSet_ResponsibilitySkillSetID] PRIMARY KEY CLUSTERED ([ResponsibilitySkillSetID] ASC),
    CONSTRAINT [FK_ResponsbilitySkillSet_SkillSetID] FOREIGN KEY ([SkillSetID]) REFERENCES [Lookup].[SkillSet] ([SkillSetID]),
    CONSTRAINT [FK_ResponsibilitySkillSet_ResponsibilityID] FOREIGN KEY ([ResponsibilityID]) REFERENCES [dbo].[Responsibility] ([ResponsibilityID])
);

