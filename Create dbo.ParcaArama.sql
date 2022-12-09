CREATE PROCEDURE [ParcaArama]
(
@temizArama nvarchar(50),
@arama nvarchar(50)
)

AS
BEGIN

Select Parcalar.ID,parcaNo as 'Parça No',oemNo as 'OEM No',parcaAd as 'Parça Ad',model as 'Model',yil as 'Yıl',tedarikci as 'Tedarikçi',satisFiyat as 'Satış Fiyatı'
from Parcalar JOIN ParcalarDetay on Parcalar.ID=ParcalarDetay.ParcaID 
JOIN Lokasyon on Parcalar.ID=Lokasyon.parcaID 
where parcaNo LIKE @temizArama
or parcaAd LIKE @arama
or oemno LIKE @arama 
or model LIKE @arama    
or yil LIKE @arama 
or tedarikci LIKE @arama 
or marka LIKE @arama
or maliyet LIKE @arama 
or satisFiyat LIKE @arama
or aciklama LIKE @arama   
or depoAd LIKE @arama  
or rafNo LIKE @arama  
or adet LIKE @arama 

END
