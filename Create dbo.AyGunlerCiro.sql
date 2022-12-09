CREATE PROCEDURE AyGunlerCiro

AS
BEGIN

Select satisTarih,sum(satilanFiyat) as satilanFiyat from Satis where YEAR(satisTarih)=YEAR(GETDATE()) and MONTH(satisTarih)=MONTH(GETDATE()) Group By satisTarih

END
