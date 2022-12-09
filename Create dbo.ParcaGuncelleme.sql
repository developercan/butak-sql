CREATE PROCEDURE ParcaGuncelleme
(
@ID int,
@parcaNo nvarchar(50),
@markaNo nvarchar(50),
@oemNo nvarchar(50),
@parcaAd nvarchar(50),
@model nvarchar(50),
@yil nvarchar(50),
@tedarikci nvarchar(50),
@marka nvarchar(50),
@maliyet nvarchar(50),
@satisFiyat decimal(18,2),
@eklenmeTarih date,
@aciklama nvarchar(max),
@DepoaD nvarchar(50),
@rafNo nvarchar(50),
@adet int,
@kadet int,
@parcaID int
)

AS
BEGIN

TRANSACTION

Update Parcalar set parcaNo=@parcaNo,markaNo=@markaNo,oemNO=@oemNo,parcaAd=@parcaAd,model=@model,yil=@yil,tedarikci=@tedarikci where ID=@ID
Update ParcalarDetay set marka=@marka,maliyet=@maliyet,satisFiyat=@satisFiyat,eklenmeTarih=@eklenmeTarih,aciklama=@aciklama where parcaID=@parcaID
Update Lokasyon set depoAd=@DepoaD,rafNo=@rafNo,adet=@adet,kadet=@kadet where parcaID=@parcaID

COMMIT TRANSACTION
