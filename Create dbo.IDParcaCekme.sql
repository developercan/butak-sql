CREATE PROCEDURE IDParcaCekme
(
@ID int
)

AS
BEGIN

Select * from Parcalar 
JOIN ParcalarDetay on Parcalar.ID=ParcalarDetay.ParcaID 
JOIN Lokasyon on Parcalar.ID=Lokasyon.parcaID 
where Parcalar.ID=@ID

END
