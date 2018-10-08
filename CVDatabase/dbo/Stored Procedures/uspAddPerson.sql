/*****************************************************
Name			dbo.uspAddPerson
Object Type		Stored Procedure
Author			Mark W
Date			2018-10-08
Description		Adds a new person to the database
Modified		
Parameters		@Title - Person's Title
				@Forename - Person's Forename
				@MiddleName - Person's MiddleName (Optional)
				@Surname - Person's Surname
				@DOB - Person's Date Of Birth (Optional)
*****************************************************/
CREATE   PROCEDURE dbo.uspAddPerson
	@Title NVARCHAR(10),
	@Forename NVARCHAR(50),
	@MiddleName NVARCHAR(50) = NULL,
	@Surname NVARCHAR(50),
	@DOB DATE = NULL	

AS

BEGIN

	SET NOCOUNT ON;

	DECLARE
		@ErrMessage NVARCHAR(4000);

	BEGIN TRY

		INSERT INTO dbo.Subject (
			Title,
			Forename,
			MiddleName,
			Surname,
			DateOfBirth
			)
		VALUES
			(@Title, @Forename, @MiddleName, @Surname, @DOB);

	END TRY
	BEGIN CATCH
		
		SET @ErrMessage = ERROR_MESSAGE();

		THROW 50001, @ErrMessage, 1;

	END CATCH

END