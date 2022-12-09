CREATE PROCEDURE DisAktarmaVeri

AS
BEGIN

Select parcaNo as 'Parça No',markaNo as 'Marka No',oemNo as 'Oem No',parcaAd as 'Parça Ad',model as 'Model',marka as 'Marka',yil as 'Yıl',tedarikci as 'Tedarikçi',maliyet as 'Maliyet',satisFiyat as 'Satış Fiyatı',eklenmeTarih as 'Eklenme Tarihi',aciklama as 'Açıklama',adet as 'Adet',RafNo as 'Raf No',depoAd as 'Depo Adı',kadet as 'Kritik Adet' from 
Parcalar JOIN ParcalarDetay on Parcalar.ID=ParcalarDetay.ParcaID 
JOIN Lokasyon on Parcalar.ID=Lokasyon.parcaID 

END
