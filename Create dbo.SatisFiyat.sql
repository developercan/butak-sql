CREATE PROCEDURE SatisFiyat
(
@ParcaID int
)

AS
BEGIN

select satisFiyat from ParcalarDetay where ParcaID=@ParcaID

END
