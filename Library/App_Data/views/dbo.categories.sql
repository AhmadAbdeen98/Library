﻿CREATE VIEW [dbo].VW_CATEGORIES AS 
SELECT 
	c.ID,
	c.NAME,
	c.PARENT_ID,
	dbo.fn_category_name(c.PARENT_ID) PARENT_NAME
FROM
	CATEGORIES c