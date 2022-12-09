CREATE PROCEDURE SepetToplam

AS
BEGIN

Select sum(Sepet.adet * Sepet.fiyat) as topfiyat from Sepet

END
