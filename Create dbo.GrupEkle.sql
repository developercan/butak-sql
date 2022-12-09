CREATE PROCEDURE GrupEkle
(
@grupAd nvarchar(50)
)

AS
BEGIN

Insert into Gruplar (grupAd) values (@grupAd)

END
