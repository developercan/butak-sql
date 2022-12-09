CREATE TABLE [dbo].[Aylar] (
    [ID] INT           IDENTITY (1, 1) NOT NULL,
    [Ay] NVARCHAR (50) NULL
);




CREATE TABLE [dbo].[Gruplar] (
    [Id]     INT           IDENTITY (1, 1) NOT NULL,
    [grupAd] NVARCHAR (50) NULL
);




CREATE TABLE [dbo].[Kisiler] (
    [ID]     INT           IDENTITY (1, 1) NOT NULL,
    [grupID] INT           NULL,
    [ad]     NVARCHAR (50) NULL,
    [soyad]  NVARCHAR (50) NULL,
    [tel]    NVARCHAR (50) NULL,
    [eposta] NVARCHAR (50) NULL
);




CREATE TABLE [dbo].[Lokasyon] (
    [ID]      INT           IDENTITY (1, 1) NOT NULL,
    [parcaID] INT           NOT NULL,
    [depoAd]  NVARCHAR (50) NULL,
    [rafNo]   NVARCHAR (50) NULL,
    [adet]    INT           NULL,
    [kadet]   INT           NULL
);




CREATE TABLE [dbo].[Parcalar] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [parcaNo]   NVARCHAR (50) NOT NULL,
    [markaNo]   NVARCHAR (50) NULL,
    [oemNo]     NVARCHAR (50) NOT NULL,
    [parcaAd]   NVARCHAR (50) NOT NULL,
    [model]     NVARCHAR (50) NOT NULL,
    [yil]       NVARCHAR (50) NOT NULL,
    [tedarikci] NVARCHAR (50) NOT NULL
);




CREATE TABLE [dbo].[ParcalarDetay] (
    [ID]           INT             IDENTITY (1, 1) NOT NULL,
    [parcaID]      INT             NOT NULL,
    [marka]        NVARCHAR (50)   NULL,
    [maliyet]      DECIMAL (18, 2) NULL,
    [satisFiyat]   DECIMAL (18, 2) NULL,
    [eklenmeTarih] DATE            NULL,
    [aciklama]     NVARCHAR (MAX)  NULL
);




CREATE TABLE [dbo].[Satis] (
    [ID]           INT             IDENTITY (1, 1) NOT NULL,
    [musteriID]    INT             NULL,
    [ParcaNo]      NVARCHAR (50)   NULL,
    [parcaAd]      NVARCHAR (50)   NULL,
    [adet]         INT             NULL,
    [satisFiyat]   DECIMAL (18, 2) NULL,
    [satilanFiyat] DECIMAL (18, 2) NULL,
    [satisTarih]   DATE            NULL
);




CREATE TABLE [dbo].[SatisMusteri] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [musteriAd]   NVARCHAR (50) NULL,
    [seriASıraNo] NVARCHAR (50) NULL,
    [musteriVD]   NVARCHAR (50) NULL,
    [vergiNo]     NVARCHAR (50) NULL,
    [duTarih]     NVARCHAR (50) NULL,
    [duSaat]      NVARCHAR (50) NULL,
    [sevkTarih]   NVARCHAR (50) NULL
);




CREATE TABLE [dbo].[Sepet] (
    [ID]      INT             IDENTITY (1, 1) NOT NULL,
    [parcaID] INT             NULL,
    [adet]    INT             NULL,
    [fiyat]   DECIMAL (18, 2) NULL
);


