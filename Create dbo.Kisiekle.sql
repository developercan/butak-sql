CREATE PROCEDURE [Kisiekle]
(
@grupID int,
@ad nvarchar(50),
@soyad nvarchar(50),
@tel nvarchar(50),
@eposta nvarchar(50)
)

AS
BEGIN

Insert into Kisiler (grupID,ad,soyad,tel,eposta) values (@grupID,@ad,@soyad,@tel,@eposta)

END
