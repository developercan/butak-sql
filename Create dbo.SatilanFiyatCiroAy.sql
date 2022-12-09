USE [butak]
GO

/****** Object: SqlProcedure [dbo].[SatilanFiyatCiroAy] Script Date: 19.12.2017 19:16:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SatilanFiyatCiroAy
(
@yil nvarchar(50),
@ay nvarchar(50)
)

AS
BEGIN

Select sum(satilanFiyat) as satilanFiyat,satisTarih from Satis where MONTH(satisTarih)=@ay and YEAR(satisTarih)=@yil GROUP BY satisTarih

END
