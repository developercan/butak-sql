CREATE PROCEDURE ParcaSilme
(
@ID int
)

AS
BEGIN 

TRANSACTION
Delete  from ParcalarDetay where parcaID=@ID;
Delete  from Lokasyon where parcaID=@ID;
Delete  from Parcalar where ID=@ID;
COMMIT
