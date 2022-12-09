CREATE PROCEDURE SepetFiyatGuncelleme
(
@ID int,
@fiyat decimal(18,2)
)

AS
BEGIN

Update Sepet set fiyat=@fiyat / adet where ID=@ID

END
