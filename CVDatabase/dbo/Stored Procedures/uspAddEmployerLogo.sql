/*****************************************************
Name			dbo.uspAddEmployerLogo
Object Type		Stored Procedure
Author			Mark W
Date			2018-10-08
Description		Adds a employer logo to an employer in the
				database
Modified		
Parameters		@EmployerID - The EmployerID
				@ImageBLOB - The Byte Array of an image
*****************************************************/
CREATE   PROCEDURE dbo.uspAddEmployerLogo
	@EmployerID SMALLINT,
	@ImageBLOB VARBINARY(MAX)

AS

BEGIN

	SET NOCOUNT ON;

	DECLARE
		@ErrMessage NVARCHAR(4000);

	BEGIN TRY

		INSERT INTO dbo.EmployerLogo (
			EmployerID,
			LogoBLOB
			)
		VALUES
			(@EmployerID, @ImageBLOB);

	END TRY
	BEGIN CATCH
		
		SET @ErrMessage = ERROR_MESSAGE();

		THROW 50001, @ErrMessage, 1;

	END CATCH

END