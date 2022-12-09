CREATE PROCEDURE RaporGunlukSatis
(
@tarih date
)

AS
BEGIN

Select parcaNo,parcaAd,adet,satisFiyat,satilanFiyat,satisTarih from Satis where satisTarih=@tarih

END
