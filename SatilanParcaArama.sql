CREATE PROCEDURE SatilanParcaArama
(
@parcaNo nvarchar(50),
@veri nvarchar(50)
)

AS
BEGIN

Select ID,parcaNo as 'Par�a No',parcaAd as 'Par�a Ad',adet as 'Adet',satisFiyat as 'Sat�� Fiyat',satilanFiyat as 'Sat�lan Fiyat',satisTarih as 'Sat�� Tarih' from Satis where parcaNo LIKE @parcaNo or parcaAd LIKE @veri

END