USE [master]
GO
/****** Object:  Database [gradilisteDw]    Script Date: 2/16/2018 2:21:26 PM ******/
CREATE DATABASE [gradilisteDwCopy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gradilisteDw', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\gradilisteDw.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gradilisteDw_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\gradilisteDw_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [gradilisteDw] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gradilisteDw].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gradilisteDw] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gradilisteDw] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gradilisteDw] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gradilisteDw] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gradilisteDw] SET ARITHABORT OFF 
GO
ALTER DATABASE [gradilisteDw] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gradilisteDw] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gradilisteDw] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gradilisteDw] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gradilisteDw] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gradilisteDw] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gradilisteDw] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gradilisteDw] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gradilisteDw] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gradilisteDw] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gradilisteDw] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gradilisteDw] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gradilisteDw] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gradilisteDw] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gradilisteDw] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gradilisteDw] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gradilisteDw] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gradilisteDw] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gradilisteDw] SET  MULTI_USER 
GO
ALTER DATABASE [gradilisteDw] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gradilisteDw] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gradilisteDw] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gradilisteDw] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [gradilisteDw] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [gradilisteDw] SET QUERY_STORE = OFF
GO
USE [gradilisteDw]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [gradilisteDw]
GO
/****** Object:  UserDefinedDataType [dbo].[IdGenerated]    Script Date: 2/16/2018 2:21:26 PM ******/
CREATE TYPE [dbo].[IdGenerated] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[IdNonGenerated]    Script Date: 2/16/2018 2:21:26 PM ******/
CREATE TYPE [dbo].[IdNonGenerated] FROM [int] NOT NULL
GO
/****** Object:  Table [dbo].[Dan]    Script Date: 2/16/2018 2:21:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dan](
	[IdDan] [dbo].[IdGenerated] IDENTITY(1,1) NOT NULL,
	[Datum] [date] NULL,
 CONSTRAINT [XPKDan] PRIMARY KEY CLUSTERED 
(
	[IdDan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distributer]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distributer](
	[PIB] [varchar](20) NOT NULL,
	[NazivFirme] [varchar](20) NULL,
 CONSTRAINT [XPKDistributer] PRIMARY KEY CLUSTERED 
(
	[PIB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lokacija]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lokacija](
	[IdLok] [dbo].[IdGenerated] IDENTITY(1,1) NOT NULL,
	[Opstina] [varchar](20) NULL,
	[Grad] [varchar](20) NULL,
	[Drzava] [varchar](20) NULL,
	[Ulica] [varchar](20) NULL,
	[Broj] [int] NULL,
 CONSTRAINT [XPKLokacija] PRIMARY KEY CLUSTERED 
(
	[IdLok] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materijal]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materijal](
	[IdMat] [dbo].[IdNonGenerated] NOT NULL,
	[Naziv] [varchar](20) NULL,
	[Tip] [varchar](20) NULL,
 CONSTRAINT [XPKMaterijal] PRIMARY KEY CLUSTERED 
(
	[IdMat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nabavke]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nabavke](
	[IdVre] [dbo].[IdGenerated] NOT NULL,
	[IdZM] [dbo].[IdNonGenerated] NOT NULL,
	[PIB] [varchar](20) NOT NULL,
	[Kolicina] [int] NULL,
	[Iznos] [float] NULL,
	[IdLokGra] [dbo].[IdGenerated] NOT NULL,
	[IdLokDist] [dbo].[IdGenerated] NOT NULL,
	[IdNab] [dbo].[IdNonGenerated] NOT NULL,
 CONSTRAINT [XPKNabavka] PRIMARY KEY CLUSTERED 
(
	[IdVre] ASC,
	[IdZM] ASC,
	[PIB] ASC,
	[IdLokGra] ASC,
	[IdLokDist] ASC,
	[IdNab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NabavkeVeze]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NabavkeVeze](
	[IdNab] [dbo].[IdNonGenerated] NOT NULL,
 CONSTRAINT [XPKNabavkeVeze] PRIMARY KEY CLUSTERED 
(
	[IdNab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Punjenje]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Punjenje](
	[PoslednjePunjenje] [datetime] NOT NULL,
 CONSTRAINT [XPKPunjenje] PRIMARY KEY CLUSTERED 
(
	[PoslednjePunjenje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StanjeMaterijali]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StanjeMaterijali](
	[Kolicina] [int] NULL,
	[IdZM] [dbo].[IdNonGenerated] NOT NULL,
	[IdDan] [dbo].[IdGenerated] NOT NULL,
	[IdMat] [dbo].[IdNonGenerated] NOT NULL,
	[IdLokGra] [dbo].[IdGenerated] NOT NULL,
 CONSTRAINT [XPKStanjeMaterijali] PRIMARY KEY CLUSTERED 
(
	[IdZM] ASC,
	[IdDan] ASC,
	[IdMat] ASC,
	[IdLokGra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vreme]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vreme](
	[IdVre] [dbo].[IdGenerated] IDENTITY(1,1) NOT NULL,
	[DatumVreme] [datetime] NULL,
 CONSTRAINT [XPKVreme] PRIMARY KEY CLUSTERED 
(
	[IdVre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zaposleni]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zaposleni](
	[JMBG] [varchar](20) NOT NULL,
	[Ime] [varchar](20) NULL,
	[Prezime] [varchar](20) NULL,
	[BrojTelefona] [varchar](20) NULL,
 CONSTRAINT [XPKZaposleni] PRIMARY KEY CLUSTERED 
(
	[JMBG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZaposleniBrojanje]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZaposleniBrojanje](
	[IdZM] [dbo].[IdNonGenerated] NOT NULL,
	[IdZps] [dbo].[IdNonGenerated] NOT NULL,
	[IdVre] [dbo].[IdGenerated] NOT NULL,
	[JMBG] [varchar](20) NOT NULL,
	[IdLokZap] [dbo].[IdGenerated] NOT NULL,
	[IdLokMag] [dbo].[IdGenerated] NOT NULL,
	[Doprinos] [int] NULL,
 CONSTRAINT [XPKZaposleniBrojanje] PRIMARY KEY CLUSTERED 
(
	[IdZM] ASC,
	[IdZps] ASC,
	[IdVre] ASC,
	[JMBG] ASC,
	[IdLokZap] ASC,
	[IdLokMag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zaposlenost]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zaposlenost](
	[IdZps] [dbo].[IdNonGenerated] NOT NULL,
	[Zaposljavanje] [varchar](20) NULL,
 CONSTRAINT [XPKZaposlenost] PRIMARY KEY CLUSTERED 
(
	[IdZps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZonaMagacina]    Script Date: 2/16/2018 2:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZonaMagacina](
	[IdZM] [dbo].[IdNonGenerated] NOT NULL,
	[NazivZone] [varchar](20) NULL,
	[RedniBrojUnutarMagacina] [int] NULL,
	[Kapacitet] [int] NULL,
	[NazivMagacina] [varchar](20) NULL,
	[NazivGradilista] [varchar](20) NULL,
 CONSTRAINT [XPKZonaMagacina] PRIMARY KEY CLUSTERED 
(
	[IdZM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Nabavke]  WITH CHECK ADD  CONSTRAINT [R_1] FOREIGN KEY([IdVre])
REFERENCES [dbo].[Vreme] ([IdVre])
GO
ALTER TABLE [dbo].[Nabavke] CHECK CONSTRAINT [R_1]
GO
ALTER TABLE [dbo].[Nabavke]  WITH CHECK ADD  CONSTRAINT [R_19] FOREIGN KEY([IdNab])
REFERENCES [dbo].[NabavkeVeze] ([IdNab])
GO
ALTER TABLE [dbo].[Nabavke] CHECK CONSTRAINT [R_19]
GO
ALTER TABLE [dbo].[Nabavke]  WITH CHECK ADD  CONSTRAINT [R_2] FOREIGN KEY([PIB])
REFERENCES [dbo].[Distributer] ([PIB])
GO
ALTER TABLE [dbo].[Nabavke] CHECK CONSTRAINT [R_2]
GO
ALTER TABLE [dbo].[Nabavke]  WITH CHECK ADD  CONSTRAINT [R_3] FOREIGN KEY([IdZM])
REFERENCES [dbo].[ZonaMagacina] ([IdZM])
GO
ALTER TABLE [dbo].[Nabavke] CHECK CONSTRAINT [R_3]
GO
ALTER TABLE [dbo].[Nabavke]  WITH CHECK ADD  CONSTRAINT [R_6] FOREIGN KEY([IdLokGra])
REFERENCES [dbo].[Lokacija] ([IdLok])
GO
ALTER TABLE [dbo].[Nabavke] CHECK CONSTRAINT [R_6]
GO
ALTER TABLE [dbo].[Nabavke]  WITH CHECK ADD  CONSTRAINT [R_7] FOREIGN KEY([IdLokDist])
REFERENCES [dbo].[Lokacija] ([IdLok])
GO
ALTER TABLE [dbo].[Nabavke] CHECK CONSTRAINT [R_7]
GO
ALTER TABLE [dbo].[StanjeMaterijali]  WITH CHECK ADD  CONSTRAINT [R_14] FOREIGN KEY([IdZM])
REFERENCES [dbo].[ZonaMagacina] ([IdZM])
GO
ALTER TABLE [dbo].[StanjeMaterijali] CHECK CONSTRAINT [R_14]
GO
ALTER TABLE [dbo].[StanjeMaterijali]  WITH CHECK ADD  CONSTRAINT [R_16] FOREIGN KEY([IdDan])
REFERENCES [dbo].[Dan] ([IdDan])
GO
ALTER TABLE [dbo].[StanjeMaterijali] CHECK CONSTRAINT [R_16]
GO
ALTER TABLE [dbo].[StanjeMaterijali]  WITH CHECK ADD  CONSTRAINT [R_17] FOREIGN KEY([IdMat])
REFERENCES [dbo].[Materijal] ([IdMat])
GO
ALTER TABLE [dbo].[StanjeMaterijali] CHECK CONSTRAINT [R_17]
GO
ALTER TABLE [dbo].[StanjeMaterijali]  WITH CHECK ADD  CONSTRAINT [R_18] FOREIGN KEY([IdLokGra])
REFERENCES [dbo].[Lokacija] ([IdLok])
GO
ALTER TABLE [dbo].[StanjeMaterijali] CHECK CONSTRAINT [R_18]
GO
ALTER TABLE [dbo].[ZaposleniBrojanje]  WITH CHECK ADD  CONSTRAINT [R_10] FOREIGN KEY([IdVre])
REFERENCES [dbo].[Vreme] ([IdVre])
GO
ALTER TABLE [dbo].[ZaposleniBrojanje] CHECK CONSTRAINT [R_10]
GO
ALTER TABLE [dbo].[ZaposleniBrojanje]  WITH CHECK ADD  CONSTRAINT [R_11] FOREIGN KEY([JMBG])
REFERENCES [dbo].[Zaposleni] ([JMBG])
GO
ALTER TABLE [dbo].[ZaposleniBrojanje] CHECK CONSTRAINT [R_11]
GO
ALTER TABLE [dbo].[ZaposleniBrojanje]  WITH CHECK ADD  CONSTRAINT [R_12] FOREIGN KEY([IdLokZap])
REFERENCES [dbo].[Lokacija] ([IdLok])
GO
ALTER TABLE [dbo].[ZaposleniBrojanje] CHECK CONSTRAINT [R_12]
GO
ALTER TABLE [dbo].[ZaposleniBrojanje]  WITH CHECK ADD  CONSTRAINT [R_13] FOREIGN KEY([IdLokMag])
REFERENCES [dbo].[Lokacija] ([IdLok])
GO
ALTER TABLE [dbo].[ZaposleniBrojanje] CHECK CONSTRAINT [R_13]
GO
ALTER TABLE [dbo].[ZaposleniBrojanje]  WITH CHECK ADD  CONSTRAINT [R_8] FOREIGN KEY([IdZM])
REFERENCES [dbo].[ZonaMagacina] ([IdZM])
GO
ALTER TABLE [dbo].[ZaposleniBrojanje] CHECK CONSTRAINT [R_8]
GO
ALTER TABLE [dbo].[ZaposleniBrojanje]  WITH CHECK ADD  CONSTRAINT [R_9] FOREIGN KEY([IdZps])
REFERENCES [dbo].[Zaposlenost] ([IdZps])
GO
ALTER TABLE [dbo].[ZaposleniBrojanje] CHECK CONSTRAINT [R_9]
GO
USE [master]
GO
ALTER DATABASE [gradilisteDw] SET  READ_WRITE 
GO
