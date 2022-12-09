CREATE PROCEDURE StokSorgulama
(
@parcaID int
)

AS
BEGIN

Select adet from Lokasyon where parcaID=@parcaID

END
