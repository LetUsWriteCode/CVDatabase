CREATE TABLE [dbo].[Achievement] (
    [AchievementID]   SMALLINT        IDENTITY (1, 1) NOT NULL,
    [AchievementText] NVARCHAR (1000) NOT NULL,
    CONSTRAINT [PK_Responsibility_AchievementID] PRIMARY KEY CLUSTERED ([AchievementID] ASC)
);

