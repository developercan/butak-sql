CREATE PROCEDURE KisiArama
(
@arama nvarchar(50)
)

AS
BEGIN

Select * from Kisiler where 
 ad LIKE '%' + @arama + '%' 
or soyad LIKE '%' + @arama + '%'
or tel LIKE '%' + @arama + '%' 
or eposta LIKE '%' + @arama + '%'

END
