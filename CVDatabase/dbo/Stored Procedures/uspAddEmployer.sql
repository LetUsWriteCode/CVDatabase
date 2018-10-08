/*****************************************************
Name			dbo.uspAddEmployer
Object Type		Stored Procedure
Author			Mark W
Date			2018-10-08
Description		Adds a new employer to the database
Modified		
Parameters		@CompanyName - Name of the Company
				@Website - Company Website URL
				@Desc - Short Description of the company
*****************************************************/
CREATE   PROCEDURE dbo.uspAddEmployer
	@CompanyName NVARCHAR(100),
	@Website NVARCHAR(256) = NULL,
	@Desc NVARCHAR (1000) = NULL

AS

BEGIN

	SET NOCOUNT ON;

	DECLARE
		@ErrMessage NVARCHAR(4000);

	BEGIN TRY

		INSERT INTO dbo.Employer (
			CompanyName,
			Website,
			CompanyDescription
			)
		VALUES
			(@CompanyName, @Website, @Desc);

	END TRY
	BEGIN CATCH
		
		SET @ErrMessage = ERROR_MESSAGE();

		THROW 50001, @ErrMessage, 1;

	END CATCH

END