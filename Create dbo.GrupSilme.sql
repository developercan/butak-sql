CREATE PROCEDURE GrupSilme
(
@ID int
)

AS
BEGIN 

Delete  from Gruplar where ID=@ID

END
