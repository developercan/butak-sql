CREATE PROCEDURE KritikParcalar

AS
BEGIN

Select Parcalar.ID,parcaNo as 'Parça No',oemNo as 'OEM No',parcaAd as 'Parça Ad',model as 'Model',yil as 'Yıl',tedarikci as 'Tedarikçi',satisFiyat as 'Satış Fiyatı',adet as 'Adet',kadet as 'Kritik Adet'
from Parcalar JOIN ParcalarDetay on Parcalar.ID=ParcalarDetay.ParcaID 
JOIN Lokasyon on Parcalar.ID=Lokasyon.parcaID 
where adet<=kadet

END
