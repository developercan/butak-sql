CREATE PROCEDURE RaporAylikSatis
(
@yil nvarchar(50),
@ay nvarchar(50)
)

AS
BEGIN

Select parcaNo,parcaAd,adet,satisFiyat,satilanFiyat,satisTarih from Satis where MONTH(satisTarih)=@ay and Year(satisTarih)=@yil

END
