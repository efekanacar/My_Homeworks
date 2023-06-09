USE [Otel]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 17.12.2021 22:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriNo] [char](10) NOT NULL,
	[Ad] [varchar](50) NOT NULL,
	[Soyad] [varchar](50) NOT NULL,
	[Yas] [char](10) NOT NULL,
	[Meslek] [varchar](50) NOT NULL,
	[Adres] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odalar]    Script Date: 17.12.2021 22:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odalar](
	[OdaNo] [int] NOT NULL,
	[OdaCephesi] [varchar](50) NOT NULL,
	[OdaAlanı] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[OdaNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervasyonlar]    Script Date: 17.12.2021 22:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyonlar](
	[RezervasyonNo] [int] NULL,
	[MusteriId] [char](10) NULL,
	[KalmaGunu] [varchar](50) NULL,
	[OdaNo] [int] NULL,
	[GirisTarihi] [char](10) NULL
) ON [PRIMARY]
GO

