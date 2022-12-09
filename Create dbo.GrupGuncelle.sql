CREATE PROCEDURE GrupGuncelle
(
@ID int,
@grupAd nvarchar(50)
)

AS
BEGIN

Update Gruplar set grupAd=@grupAd where ID=@ID

END
