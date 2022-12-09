CREATE PROCEDURE RaporBetweenToplamlari
(
@ilkTarih date,
@sonTarih date
)

AS
BEGIN

Select sum(adet) as topAdet,sum(adet*satisFiyat) as topSatisFiyat,sum(adet*satilanFiyat) as topSatilanFiyat from Satis where satisTarih BETWEEN @ilkTarih and @sonTarih

END
