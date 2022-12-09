 CREATE PROCEDURE SatisFiyatCiroGun
 (
 @tarih date
 )

 AS
 BEGIN

 SELECT parcaAd,satisFiyat FROM satis where Satis.satisTarih=@tarih

 END