CREATE PROCEDURE ParcaEkleme
(
@parcaNo nvarchar(50),
@markaNo nvarchar(50),
@parcaAd nvarchar(50),
@oemNo nvarchar(50),
@model nvarchar(50),
@yil nvarchar(50),
@tedarikci nvarchar(50),
@marka nvarchar(50),
@maliyet decimal(18,2),
@satisFiyat decimal(18,2),
@eklenmeTarih date,
@aciklama nvarchar(MAX),
@depoAd nvarchar(50),
@rafNo nvarchar(50),
@adet int,
@kadet int
)

AS
BEGIN

TRANSACTION
INSERT INTO Parcalar (parcaNo,markaNo,oemNo,parcaAd,model,yil,tedarikci) values (@parcaNo,@markaNo,@oemNo,@parcaAd,@model,@yil,@tedarikci)
INSERT INTO ParcalarDetay (parcaID,marka,maliyet,satisFiyat,eklenmeTarih,aciklama) values ((Select IDENT_CURRENT('Parcalar')),@marka,@maliyet,@satisFiyat,@eklenmeTarih,@aciklama)
INSERT INTO Lokasyon (parcaID,depoAd,rafNo,adet,kadet) values ((Select IDENT_CURRENT('Parcalar')),@depoAd,@rafNo,@adet,@kadet)
COMMIT
