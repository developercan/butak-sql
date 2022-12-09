CREATE PROCEDURE CiroGunIstatistik
(
@tarih date
)

AS
BEGIN

Select sum(satisFiyat) as'toplamSatis', sum(satilanFiyat) as'toplamSatilan', sum(satilanFiyat*0.18) as'kdv', sum(adet) as'topAdet', sum(satilanFiyat - (satilanFiyat * 0.18)) as 'kar' from Satis where satisTarih=@tarih

END