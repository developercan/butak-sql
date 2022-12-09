CREATE PROCEDURE GrupGoruntuleme
(
@ID int
)

AS
BEGIN

Select * from Gruplar where ID NOT IN(@ID)

END
