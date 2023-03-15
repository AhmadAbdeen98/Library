CREATE VIEW [dbo].vw_authors_books AS 
SELECT 
	ab.AUTHOR_ID,
	a.NAME AUTHOR_NAME,
	ab.BOOK_ID,
	b.TITLE BOOK_TITLE
FROM 
	AUTHORS a inner join AUTHORS_BOOKS ab on a.ID = ab.AUTHOR_ID
	inner join BOOKS b on ab.BOOK_ID = b.ID