CREATE TABLE #StatementType (
	StatementType NVARCHAR(100)
	);

INSERT INTO #StatementType
VALUES
	('Personal Statement');

INSERT INTO #StatementType (
	StatementType
	)
SELECT
	src.StatementType
FROM #StatementType AS src
LEFT JOIN Lookup.StatementType AS tgt
	ON src.StatementType = tgt.StatementType
WHERE tgt.StatementTypeId IS NULL;