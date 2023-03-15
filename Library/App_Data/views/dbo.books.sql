﻿CREATE VIEW [dbo].vw_books AS 
SELECT
	b.ID,
	b.TITLE,
	c.PARENT_ID CATEGORY_ID,
	dbo.FN_CATEGORY_NAME(c.PARENT_ID) CATEGORY_NAME,
	c.ID SUB_CATEGORY_ID,
	c.NAME SUB_CATEGORY_NAME,
	b.DESCRIPTION
FROM
	BOOKS b inner join CATEGORIES c on b.CATEGORY_ID = c.ID