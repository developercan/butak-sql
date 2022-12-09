CREATE PROCEDURE TumParcalar

AS
BEGIN

Select Parcalar.ID,parcaNo as 'Parça No',parcaAd as 'Parça Ad',oemNo as 'OEM No',model as 'Model',yil as 'Yıl',tedarikci as 'Tedarikçi',satisFiyat as 'Satış Fiyatı'
from Parcalar JOIN ParcalarDetay on Parcalar.ID=ParcalarDetay.ParcaID 
JOIN Lokasyon on Parcalar.ID=Lokasyon.parcaID 

END
