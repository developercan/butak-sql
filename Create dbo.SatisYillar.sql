CREATE PROCEDURE SatisYillar

AS 
BEGIN

Select DISTINCT YEAR(satisTarih) as yil from Satis

END
