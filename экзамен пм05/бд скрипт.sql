USE [master]
GO
/****** Object:  Database [Абоненты]    Script Date: 20.12.2022 9:59:37 ******/
CREATE DATABASE [Абоненты]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Абоненты', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Абоненты.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Абоненты_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Абоненты_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Абоненты] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Абоненты].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Абоненты] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Абоненты] SET ARITHABORT OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Абоненты] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Абоненты] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Абоненты] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Абоненты] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Абоненты] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Абоненты] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Абоненты] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Абоненты] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Абоненты] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Абоненты] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Абоненты] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Абоненты] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Абоненты] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Абоненты] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Абоненты] SET RECOVERY FULL 
GO
ALTER DATABASE [Абоненты] SET  MULTI_USER 
GO
ALTER DATABASE [Абоненты] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Абоненты] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Абоненты] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Абоненты] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Абоненты] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Абоненты', N'ON'
GO
ALTER DATABASE [Абоненты] SET QUERY_STORE = OFF
GO
USE [Абоненты]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 20.12.2022 9:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[Номер
абонента] [int] NULL,
	[ФИО 
абонента] [nvarchar](50) NULL,
	[Адрес] [nvarchar](50) NULL,
	[ID Абонента] [int] NOT NULL,
 CONSTRAINT [PK_Абоненты] PRIMARY KEY CLUSTERED 
(
	[ID Абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры]    Script Date: 20.12.2022 9:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры](
	[№
разговора] [int] NULL,
	[Дата
разговора] [datetime] NOT NULL,
	[Время (продолжительность
(продолжительность)] [int] NOT NULL,
	[ID Разговора] [int] NOT NULL,
 CONSTRAINT [PK_Разговоры] PRIMARY KEY CLUSTERED 
(
	[ID Разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тарифы]    Script Date: 20.12.2022 9:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тарифы](
	[код
города] [int] NULL,
	[название
города] [nvarchar](50) NULL,
	[тариф
(стоимость 1 мин.)] [money] NULL,
	[П



ризнак 
оплаты] [nvarchar](50) NULL,
	[ID Тарифа] [int] NOT NULL,
 CONSTRAINT [PK_Тарифы] PRIMARY KEY CLUSTERED 
(
	[ID Тарифа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Телефон]    Script Date: 20.12.2022 9:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Телефон](
	[Номер телефона] [int] NULL,
	[Номер договора] [nchar](10) NULL,
	[Дата 
установки телефона] [nchar](10) NULL,
	[ID Телефона] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Телефон] PRIMARY KEY CLUSTERED 
(
	[ID Телефона] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абоненты] ([Номер
абонента], [ФИО 
абонента], [Адрес], [ID Абонента]) VALUES (4, N'Титова Александра Ивановна', N'г. Омск, ул. Ленина, 5,24



', 1)
INSERT [dbo].[Абоненты] ([Номер
абонента], [ФИО 
абонента], [Адрес], [ID Абонента]) VALUES (1, N'Орлов 
Сергей Борисович
', N'г.Омск, ул. Мира, 54,4', 2)
INSERT [dbo].[Абоненты] ([Номер
абонента], [ФИО 
абонента], [Адрес], [ID Абонента]) VALUES (3, N'Вавилов
Сергей Борисович
', N'Г. Омск, пр.Маркса, 34,23', 3)
GO
ALTER TABLE [dbo].[Разговоры]  WITH CHECK ADD  CONSTRAINT [FK_Разговоры_Тарифы] FOREIGN KEY([ID Разговора])
REFERENCES [dbo].[Тарифы] ([ID Тарифа])
GO
ALTER TABLE [dbo].[Разговоры] CHECK CONSTRAINT [FK_Разговоры_Тарифы]
GO
ALTER TABLE [dbo].[Тарифы]  WITH CHECK ADD  CONSTRAINT [FK_Тарифы_Телефон] FOREIGN KEY([название
города])
REFERENCES [dbo].[Телефон] ([ID Телефона])
GO
ALTER TABLE [dbo].[Тарифы] CHECK CONSTRAINT [FK_Тарифы_Телефон]
GO
ALTER TABLE [dbo].[Телефон]  WITH CHECK ADD  CONSTRAINT [FK_Телефон_Абоненты] FOREIGN KEY([Номер телефона])
REFERENCES [dbo].[Абоненты] ([ID Абонента])
GO
ALTER TABLE [dbo].[Телефон] CHECK CONSTRAINT [FK_Телефон_Абоненты]
GO
USE [master]
GO
ALTER DATABASE [Абоненты] SET  READ_WRITE 
GO
