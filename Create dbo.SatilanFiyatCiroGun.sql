CREATE PROCEDURE SatilanFiyatCiroGun
(
@tarih date
)

AS
BEGIN

 SELECT parcaAd,satilanFiyat FROM satis where Satis.satisTarih=@tarih

END
