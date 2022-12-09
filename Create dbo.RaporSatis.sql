CREATE PROCEDURE RaporSatis

AS
BEGIN

Select parcaNo,aciklama,adet,fiyat,fiyat * adet as tutar from
Sepet JOIN Parcalar on Sepet.parcaID = Parcalar.ID 
JOIN ParcalarDetay on Parcalar.ID = ParcalarDetay.parcaID

END
