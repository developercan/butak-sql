USE [butak]
GO

/****** Object: SqlProcedure [dbo].[UrunSatis] Script Date: 10.12.2017 11:02:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UrunSatis
(
@musteriAd nvarchar(50),
@seriASıraNo nvarchar(50),
@musteriVD nvarchar(50),
@vergiNo nvarchar(50),
@duTarih nvarchar(50),
@duSaat nvarchar(50),
@sevkTarih nvarchar(50)
)

AS
BEGIN 

TRANSACTION

Insert into SatisMusteri (musteriAd,seriASıraNo,musteriVD,vergiNo,duTarih,duSaat,sevkTarih) values (@musteriAd,@seriASıraNo,@musteriVD,@vergiNo,@duTarih,@duSaat,@sevkTarih)

Insert into Satis (MusteriID,ParcaNo,parcaAd,adet,satisFiyat,satilanFiyat,satisTarih) 
Select (Select IDENT_CURRENT('SatisMusteri')),Parcalar.parcaNo, parcaAd, Sepet.adet,ParcalarDetay.satisFiyat * Sepet.adet, Sepet.fiyat * Sepet.adet, GETDATE() 
from Parcalar JOIN Sepet on Parcalar.ID=Sepet.ParcaID 
JOIN ParcalarDetay on Parcalar.ID=ParcalarDetay.ParcaID

Update Lokasyon set Lokasyon.adet = Lokasyon.adet -  Sepet.adet From Sepet INNER JOIN Lokasyon on Sepet.parcaID=Lokasyon.parcaID

Delete from Sepet

COMMIT TRANSACTION
