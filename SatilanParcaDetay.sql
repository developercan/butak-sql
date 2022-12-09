CREATE PROCEDURE SatilanParcaDetay
(
@ID int
)

AS
BEGIN

Select parcaNo,parcaAd,adet,satisFiyat,satilanFiyat,musteriAd,seriASıraNo,musteriVD,vergiNo,duTarih,duSaat,sevkTarih
from Satis JOIN SatisMusteri  on Satis.MusteriID=SatisMusteri.ID where Satis.ID=@ID	
END