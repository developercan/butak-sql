CREATE PROCEDURE RaporBetweenSatis
(
@ilkTarih date,
@sonTarih date
)

AS
BEGIN

Select parcaNo,parcaAd,adet,satisFiyat,satilanFiyat,satisTarih from Satis where satisTarih BETWEEN @ilkTarih and @sonTarih

END
