CREATE TABLE [dbo].[RoleAchievement] (
    [RoleAchievementID] SMALLINT IDENTITY (1, 1) NOT NULL,
    [RoleID]            SMALLINT NOT NULL,
    [AchievementID]     SMALLINT NOT NULL,
    CONSTRAINT [PK_RoleAchievement_RoleAchievementID] PRIMARY KEY CLUSTERED ([RoleAchievementID] ASC),
    CONSTRAINT [FK_RoleAchievement_AchievementID] FOREIGN KEY ([AchievementID]) REFERENCES [dbo].[Achievement] ([AchievementID]),
    CONSTRAINT [FK_RoleAchievement_RoleID] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Role] ([RoleID])
);

