CREATE PROCEDURE SepetVeri

AS
BEGIN

Select  Sepet.ID,parcaNo,parcaAd,fiyat,Sepet.adet from Parcalar 
JOIN Sepet on Parcalar.ID=Sepet.parcaID 
JOIN ParcalarDetay on Parcalar.ID=ParcalarDetay.parcaID

END
