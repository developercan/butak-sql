CREATE PROCEDURE GrupKisiler
(
@ID int
)

AS
BEGIN

Select * from Kisiler where grupID=@ID

END
