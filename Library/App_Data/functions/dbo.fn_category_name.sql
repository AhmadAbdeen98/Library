CREATE FUNCTION [dbo].fn_category_name (@id int) RETURNS VARCHAR(250)
AS BEGIN
	DECLARE @result VARCHAR(250);

	SELECT @result = NAME
	FROM CATEGORIES
	WHERE ID = @id;

	RETURN @result;
END;