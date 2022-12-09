CREATE PROCEDURE SatisAyYil
(
@yil nvarchar(50)
)

AS
BEGIN

Select DISTINCT MONTH(satisTarih) as ayNo,ay from Satis JOIN Aylar on MONTH(satisTarih)=Aylar.ID where YEAR(satisTarih)=@yil

END
