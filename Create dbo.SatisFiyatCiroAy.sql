USE [butak]
GO

/****** Object: SqlProcedure [dbo].[SatiSFiyatCiroAy] Script Date: 19.12.2017 19:32:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE SatisFiyatCiroAy
(
@yil nvarchar(50),
@ay nvarchar(50)
)

AS
BEGIN

Select sum(satisFiyat) satisFiyat,satisTarih from Satis where MONTH(satisTarih)=@ay and YEAR(satisTarih)=@yil GROUP BY satisTarih

END
