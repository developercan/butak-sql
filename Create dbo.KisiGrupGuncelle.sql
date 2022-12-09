CREATE PROCEDURE KisiGrupGuncelle
(
@ID int,
@grupID int
)

AS
BEGIN

Update Kisiler set grupID=@grupID where ID=@ID

END
