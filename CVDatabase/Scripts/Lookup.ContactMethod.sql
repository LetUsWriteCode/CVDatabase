CREATE TABLE #ContactMethod (
	ContactType NVARCHAR(100)
	);

INSERT INTO #ContactMethod
VALUES
	('Telephone'),
	('Mobile'),
	('Email'),
	('GitHub'),
	('StackOverflow'),
	('Twitter');


INSERT INTO Lookup.ContactMethod (
	ContactType
	)
SELECT
	src.ContactType
FROM #ContactMethod AS src
LEFT JOIN Lookup.ContactMethod AS tgt
	ON src.ContactType = tgt.ContactType
WHERE ContactMethodID IS NULL;