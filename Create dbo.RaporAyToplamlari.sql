CREATE PROCEDURE RaporAyToplamlari
(
@yil nvarchar(50),
@ay nvarchar(50)
)

AS
BEGIN

Select sum(adet) as topAdet,sum(adet*satisFiyat) as topSatisFiyat,sum(adet*satilanFiyat) as topSatilanFiyat from Satis where MONTH(satisTarih)=@ay and Year(satisTarih)=@yil

END
