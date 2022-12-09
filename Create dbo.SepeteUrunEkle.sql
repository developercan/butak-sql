CREATE PROCEDURE SepeteUrunEkle
(
@ParcaID int,
@adet int,
@fiyat decimal(18,2)
)

AS
BEGIN 

Insert into Sepet (ParcaID,adet,fiyat) values (@ParcaID,@adet,@fiyat)
END
