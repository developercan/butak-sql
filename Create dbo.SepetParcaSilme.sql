CREATE PROCEDURE SepetParcaSilme
(
@ID int
)

AS
BEGIN 

Delete from Sepet where ID=@ID

END
