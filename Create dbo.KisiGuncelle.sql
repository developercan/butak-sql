CREATE PROCEDURE KisiGuncelle
(
@ID int,
@ad nvarchar (50),
@soyad nvarchar (50),
@tel nvarchar (50),
@eposta nvarchar (50)
)

AS
BEGIN

Update Kisiler set ad=@ad,soyad=@soyad,tel=@tel,eposta=@eposta where ID=@ID

END
