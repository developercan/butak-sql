CREATE PROCEDURE KisiAktarma
(
@grupID int,
@grupID2 int
)

AS
BEGIN

Update Kisiler set grupID=@grupID where grupID=@grupID2

END
