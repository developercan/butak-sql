CREATE PROCEDURE KisiSilme
(
@ID int
)

AS
BEGIN 

Delete from Kisiler where ID=@ID

END
