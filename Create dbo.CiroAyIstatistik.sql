CREATE PROCEDURE CiroAyIstatistik
(
@yil nvarchar(50),
@ay nvarchar(50)
)

AS
BEGIN

Select sum(satisFiyat) as'toplamSatis', sum(satilanFiyat) as'toplamSatilan', sum(satilanFiyat*0.18) as'kdv', sum(adet) as'topAdet', sum(satilanFiyat - (satilanFiyat * 0.18)) as 'kar' from Satis where MONTH(satisTarih)=@ay and YEAR(satisTarih)=@yil

END