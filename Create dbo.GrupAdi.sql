CREATE PROCEDURE GrupAdi
(
@ID int
)

AS
BEGIN

Select grupAd from Gruplar where ID=@ID

END
