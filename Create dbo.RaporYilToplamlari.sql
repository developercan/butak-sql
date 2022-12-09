CREATE PROCEDURE RaporYilToplamlari
(
@yil nvarchar(4)
)

AS
BEGIN

Select sum(adet) as topAdet,sum(adet*satisFiyat) as topSatisFiyat,sum(adet*satilanFiyat) as topSatilanFiyat from Satis where Year(satisTarih)=@yil

END
