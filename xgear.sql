USE [master]
GO
/****** Object:  Database [Xgear_Database]    Script Date: 09/01/2021 15:53:19 PM ******/
CREATE DATABASE [Xgear_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Xgear_Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Xgear_Database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Xgear_Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Xgear_Database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Xgear_Database] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Xgear_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Xgear_Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Xgear_Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Xgear_Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Xgear_Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Xgear_Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Xgear_Database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Xgear_Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Xgear_Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Xgear_Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Xgear_Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Xgear_Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Xgear_Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Xgear_Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Xgear_Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Xgear_Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Xgear_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Xgear_Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Xgear_Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Xgear_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Xgear_Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Xgear_Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Xgear_Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Xgear_Database] SET RECOVERY FULL 
GO
ALTER DATABASE [Xgear_Database] SET  MULTI_USER 
GO
ALTER DATABASE [Xgear_Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Xgear_Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Xgear_Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Xgear_Database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Xgear_Database] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Xgear_Database] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Xgear_Database', N'ON'
GO
ALTER DATABASE [Xgear_Database] SET QUERY_STORE = OFF
GO
USE [Xgear_Database]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 09/01/2021 15:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[buydate] [date] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__Bill__3213E83F1345ABEE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillItem]    Script Date: 09/01/2021 15:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[bill_id] [int] NOT NULL,
 CONSTRAINT [PK__BillItea__3213E83F5BC2319C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 09/01/2021 15:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09/01/2021 15:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09/01/2021 15:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[price] [int] NOT NULL,
	[cate_id] [int] NOT NULL,
	[des] [nvarchar](2000) NOT NULL,
	[image] [nvarchar](250) NOT NULL,
	[discount] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[brandid] [int] NOT NULL,
 CONSTRAINT [PK__Product__3213E83F532863C8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/01/2021 15:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[avatar] [nvarchar](50) NULL,
	[admin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([id], [userid], [buydate], [status]) VALUES (1, 1, CAST(N'2020-12-13' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillItem] ON 

INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (1, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[BillItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([id], [name]) VALUES (1, N'MSI')
INSERT [dbo].[Brand] ([id], [name]) VALUES (2, N'Asus')
INSERT [dbo].[Brand] ([id], [name]) VALUES (3, N'Acer')
INSERT [dbo].[Brand] ([id], [name]) VALUES (4, N'Gigabyte')
INSERT [dbo].[Brand] ([id], [name]) VALUES (5, N'PNY')
INSERT [dbo].[Brand] ([id], [name]) VALUES (6, N'Intel')
INSERT [dbo].[Brand] ([id], [name]) VALUES (7, N'AMD')
INSERT [dbo].[Brand] ([id], [name]) VALUES (8, N'Kingston')
INSERT [dbo].[Brand] ([id], [name]) VALUES (9, N'Gskill')
INSERT [dbo].[Brand] ([id], [name]) VALUES (10, N'Colorful')
INSERT [dbo].[Brand] ([id], [name]) VALUES (11, N'NVidia')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Mainboard')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'CPU')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'RAM')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'VGA')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Nguồn')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Ổ Cứng')
INSERT [dbo].[Category] ([id], [name]) VALUES (7, N'Case')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (2, N'B460M Bủh Bủh', 1790000, 1, N'Mainboard', N'images/products/msi_b460m_pro.png', 50, 19, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (3, N'MSI B460M Pro diss', 1790000, 1, N'MainBoard PC', N'images/products/msi_b460m_pro.png', 5, 15, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (4, N'MSI B460M Pro MSI B460M Pro MSI B460M Pro MSI B460M Pro MSI B460M Pro', 1790000, 1, N'MainBoard PC', N'images/products/msi_b460m_pro.png', 10, 15, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (5, N'MSI B460M Pro', 1790000, 1, N'MainBoard PC', N'images/products/msi_b460m_pro.png', 15, 15, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (6, N'MSI B460M Pro', 1790000, 1, N'MainBoard PC', N'images/products/msi_b460m_pro.png', 20, 15, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (22, N'MSI B460M Pro', 1790000, 1, N'MainBoard PC', N'images/products/msi_b460m_pro.png', 25, 15, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (24, N'Intel Core i3 10100F', 1950000, 2, N'CPU cua tui ne', N'images/products/i3_10100f.png', 30, 10, 6)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (25, N'Minh Chiến Đặng', 10000000, 1, N'ahihi', N'images/products/msi_b460m_pro.png', 35, 0, 5)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (27, N'New', 1234856, 4, N'ah', N'images/products/vaycongso.jpg', 25, 1, 7)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (29, N'New cpu', 0, 1, N'des
', N'images/products/Untitled-1-01-3.png', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [email], [username], [password], [avatar], [admin]) VALUES (1, N'dangminhchien1302@gmail.com', N'chien', N'123', NULL, 1)
INSERT [dbo].[Users] ([id], [email], [username], [password], [avatar], [admin]) VALUES (2, N'dangminhchien132@gmail.com', N'chien2', N'123', NULL, 0)
INSERT [dbo].[Users] ([id], [email], [username], [password], [avatar], [admin]) VALUES (14, N'dangminhchien1302@gmail.com', N'chien3', N'123', NULL, 0)
INSERT [dbo].[Users] ([id], [email], [username], [password], [avatar], [admin]) VALUES (15, N'', N'chien 2', N'123', NULL, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_User] FOREIGN KEY([userid])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_User]
GO
ALTER TABLE [dbo].[BillItem]  WITH CHECK ADD  CONSTRAINT [FK_BillIteam_Bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[Bill] ([id])
GO
ALTER TABLE [dbo].[BillItem] CHECK CONSTRAINT [FK_BillIteam_Bill]
GO
ALTER TABLE [dbo].[BillItem]  WITH CHECK ADD  CONSTRAINT [FK_BillIteam_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[BillItem] CHECK CONSTRAINT [FK_BillIteam_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([brandid])
REFERENCES [dbo].[Brand] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [Xgear_Database] SET  READ_WRITE 
GO
