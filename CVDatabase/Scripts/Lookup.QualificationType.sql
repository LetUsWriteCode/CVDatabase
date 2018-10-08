CREATE TABLE #QualificationType (
	QualificationType NVARCHAR(20) NOT NULL,
	SortOrder TINYINT NOT NULL,
	Professional BIT NOT NULL
	)

INSERT INTO #QualificationType (
	QualificationType,
	SortOrder,
	Professional
	)
VALUES
	('GCSE', 1, 0),
	('A-Levels', 2, 0),
	('Degree', 3, 0),
	('Masters', 4, 0),
	('PHD', 5, 0),
	('NVQ Level 2', 2, 0),
	('NVQ Level 3', 2, 0),
	('NVQ Level 4', 3, 0),
	('MCSA', 5, 0),
	('MCSE', 5, 0);

UPDATE Lookup.QualificationType
SET SortOrder = src.SortOrder,
	Professional = src.Professional
FROM #QualificationType AS src
INNER JOIN Lookup.QualificationType AS tgt
	ON src.QualificationType = tgt.QualificationType;

INSERT INTO Lookup.QualificationType (
	QualificationType,
	SortOrder,
	Professional
	)
SELECT
	src.QualificationType,
	src.SortOrder,
	src.Professional
FROM #QualificationType AS src
LEFT JOIN Lookup.QualificationType AS tgt
	ON src.QualificationType = tgt.QualificationType
WHERE tgt.QualificationTypeID IS NULL;

