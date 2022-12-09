CREATE PROCEDURE KisiBilgileri
(
@ID int
)

AS
BEGIN

Select ad,soyad,tel,eposta from Kisiler where ID=@ID

END
