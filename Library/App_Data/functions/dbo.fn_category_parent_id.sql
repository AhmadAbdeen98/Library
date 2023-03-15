CREATE FUNCTION [dbo].fn_category_parent_id (@id int) RETURNS VARCHAR
AS BEGIN
	DECLARE @result VARCHAR(250);

	SELECT @result = NAME
	FROM CATEGORIES
	WHERE ID = @id;

	RETURN @result;
END;