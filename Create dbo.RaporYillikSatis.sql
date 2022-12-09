CREATE PROCEDURE RaporYillikSatis
(
@yil nvarchar(50)
)

AS
BEGIN

Select parcaNo,parcaAd,adet,satisFiyat,satilanFiyat,satisTarih from Satis where Year(satisTarih)=@yil

END
