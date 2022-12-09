CREATE PROCEDURE SatilanParcaArama
(
@parcaNo nvarchar(50),
@veri nvarchar(50)
)

AS
BEGIN

Select ID,parcaNo as 'Parça No',parcaAd as 'Parça Ad',adet as 'Adet',satisFiyat as 'Satýþ Fiyat',satilanFiyat as 'Satýlan Fiyat',satisTarih as 'Satýþ Tarih' from Satis where parcaNo LIKE @parcaNo or parcaAd LIKE @veri

END