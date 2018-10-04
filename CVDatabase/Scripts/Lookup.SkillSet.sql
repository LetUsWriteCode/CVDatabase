CREATE TABLE #SkillSet (
	SkillSetName NVARCHAR(100)
	);

INSERT INTO #SkillSet
VALUES
	('SQL Server'),
	('SSIS'),
	('SSRS'),
	('SSAS'),
	('Tableau'),
	('Data Warehousing');

INSERT INTO Lookup.SkillSet (
	SkillSetName
	)
SELECT
	src.SkillSetName
FROM #SkillSet AS src
LEFT JOIN Lookup.SkillSet AS tgt
	ON src.SkillSetName = tgt.SkillSetName
WHERE tgt.SkillSetID IS NULL;