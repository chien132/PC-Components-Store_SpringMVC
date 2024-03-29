USE [master]
GO
/****** Object:  Database [Xgear_Database]    Script Date: 12/01/2021 13:21:44 PM ******/
CREATE DATABASE [Xgear_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Xgear_Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Xgear_Database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Xgear_Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Xgear_Database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
EXEC sys.sp_db_vardecimal_storage_format N'Xgear_Database', N'ON'
GO
USE [Xgear_Database]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 12/01/2021 13:21:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[buydate] [date] NULL,
	[paid] [bit] NOT NULL,
	[done] [bit] NOT NULL,
 CONSTRAINT [PK__Bill__3213E83F1345ABEE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillItem]    Script Date: 12/01/2021 13:21:44 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 12/01/2021 13:21:44 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/01/2021 13:21:44 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/01/2021 13:21:44 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/01/2021 13:21:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[avatar] [nvarchar](200) NULL,
	[admin] [bit] NOT NULL,
	[fullname] [nvarchar](50) NULL,
 CONSTRAINT [PK__User__3213E83F4EA9EFA6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([id], [userid], [buydate], [paid], [done]) VALUES (43, 21, CAST(N'2021-01-11' AS Date), 1, 1)
INSERT [dbo].[Bill] ([id], [userid], [buydate], [paid], [done]) VALUES (44, 21, CAST(N'2021-01-11' AS Date), 1, 1)
INSERT [dbo].[Bill] ([id], [userid], [buydate], [paid], [done]) VALUES (45, 21, CAST(N'2021-01-12' AS Date), 1, 1)
INSERT [dbo].[Bill] ([id], [userid], [buydate], [paid], [done]) VALUES (46, 21, CAST(N'2021-01-03' AS Date), 1, 1)
INSERT [dbo].[Bill] ([id], [userid], [buydate], [paid], [done]) VALUES (52, 21, CAST(N'2021-01-12' AS Date), 1, 0)
INSERT [dbo].[Bill] ([id], [userid], [buydate], [paid], [done]) VALUES (53, 21, CAST(N'2021-01-12' AS Date), 1, 0)
INSERT [dbo].[Bill] ([id], [userid], [buydate], [paid], [done]) VALUES (54, 21, CAST(N'2021-01-12' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillItem] ON 

INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (158, 5, 1062, 43)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (160, 1, 1062, 44)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (161, 1, 24, 44)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (162, 1, 1078, 44)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (163, 1, 1082, 44)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (164, 1, 1074, 44)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (165, 1, 1085, 44)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (166, 1, 1071, 44)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (167, 2, 1083, 46)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (168, 1, 1068, 45)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (179, 1, 1074, 52)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (180, 1, 1074, 53)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (182, 1, 1074, 54)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (184, 13, 1093, 54)
INSERT [dbo].[BillItem] ([id], [amount], [product_id], [bill_id]) VALUES (185, 200, 1063, 54)
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
INSERT [dbo].[Brand] ([id], [name]) VALUES (10, N'Dell')
INSERT [dbo].[Brand] ([id], [name]) VALUES (11, N'NVidia')
INSERT [dbo].[Brand] ([id], [name]) VALUES (13, N'DareU')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1012, N'Asrock')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1013, N'Corsair')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1014, N'Adata')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1015, N'Samsung')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1016, N'Western Digital')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1017, N'NZXT')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1018, N'Antec')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1019, N'Xigmatek')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1020, N'Thermaltake')
INSERT [dbo].[Brand] ([id], [name]) VALUES (1021, N'Cooler Master')
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
INSERT [dbo].[Category] ([id], [name]) VALUES (10, N'Tản nhiệt')
INSERT [dbo].[Category] ([id], [name]) VALUES (1008, N'Laptop')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (24, N'Intel Core i3 10100F', 1990000, 2, N'Thông số sản phẩm
Dòng Core i3 thế hệ thứ 10 dành cho máy bàn của Intel
4 nhân & 8 luồng
Xung nhịp: 3.6GHz (Cơ bản) / 4.3GHz (Boost)
Socket: LGA1200
Đã kèm sẵn tản nhiệt từ hãng
Không kèm sẵn iGPU, cần sử dụng cùng VGA rời', N'images/products/i3_10100f.png', 5, 0, 6)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (45, N'MSI B460M Pro', 1999000, 1, N'Thông số sản phẩm
Kích thước: M-ATX
Socket: LGA 1200
Chipset: B460
Khe RAM tối đa: 2
Loại RAM hỗ trợ: DDR4', N'images/products/msi_b460m_pro.png', 5, 14, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1062, N'Kingston HyperX Fury 8GB Bus 2666 DDR4', 1090000, 3, N'Thông số sản phẩm
Dòng sản phẩm cơ bản của Kingston
Dung lượng: 1 x 8GB
Thế hệ: DDR4
Bus: 2666MHz', N'images/products/hyperx.jpg', 5, 19, 8)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1063, N'Xeon Platinum 8274', 399099000, 2, N'Thông số sản phẩm
Dòng sản phẩm chuyên biệt dành cho server/máy trạm
24 nhân & 48 luồng
Xung nhịp: 3.2GHz (Cơ bản) / 4.0GHz (Boost)
Socket: LGA 3647
Hỗ trợ RAM ECC
Không kèm quạt tản nhiệt từ hãng
Không tích hợp sẵn iGPU', N'images/products/49360_hnc_intel_xeon_platium_right_facing_850x850.jpg', 5, 0, 6)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1064, N'Core i5-10600K Avengers Edition', 7299000, 2, N'Thông số sản phẩm
Phiên bản đặc biệt với vỏ hộp Avengers từ Marvel
6 nhân & 12 luồng
Xung nhịp: 4.1GHz (Cơ bản) / 4.8GHz (Boost)
Socket: LGA1200
Đã tích hợp sẵn iGPU
Đã mở khóa hệ số nhân
Không đi kèm tản nhiệt', N'images/products/54635_i5_10600k_avengers_850x850_2.jpg', 5, 40, 6)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1065, N'Intel Core i9-10850K', 12899000, 2, N'Thông số sản phẩm
Phiên bản rút gọn của 10900K - Lược bỏ công nghệ vPro
10 nhân & 20 luồng
Xung nhịp: 3.6GHz (Cơ bản) / 5.2GHz (Boost)
Socket: LGA1200
Không kèm sẵn tản nhiệt từ hãng
Đã tích hợp sẵn iGPU
Đã mở khóa sẵn hệ số nhân - Sẵn sàng ép xung', N'images/products/54171_intel_core_i9_10850k.jpg', 5, 20, 6)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1066, N'AMD Ryzen 5 5600X', 7999000, 2, N'Thông số sản phẩm
CPU Ryzen 5 5600X
Kiến trúc Zen 3 mới nhất của AMD
Số nhân: 6
Số luồng: 12
Xung nhịp CPU: 3.7 - 4.6Ghz (Boost Clock)
TDP: 65W', N'images/products/56282_cpu_amd_ryzen_5_5600x.jpg', 10, 24, 7)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1067, N'AMD Ryzen 7 2700X', 6899000, 2, N'CPU AMD Ryzen 7 2700X (3.7GHz turbo up to 4.3GHz, 8 nhân 16 luồng, 16MB Cache, 105W) - Socket AMD AM4', N'images/products/42104_hnc_ryzen_7_2700x_right_facing_850x850.jpg', 20, 45, 7)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1068, N'Gigabyte B550M AORUS ELITE', 2999000, 1, N'Thông số sản phẩm
Kích thước: M-ATX
Socket: AM4
Chipset: B550
Khe RAM tối đa: 4
Loại RAM hỗ trợ: DDR4', N'images/products/56631_mainboard_gigabyte_b550m_aorus_elite_1.jpg', 5, 23, 4)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1069, N'ASUS TUF GAMING B550-PLUS', 4099000, 1, N'Thông số sản phẩm
Kích thước: ATX
Socket: AM4
Chipset: B550
Khe RAM tối đa: 4
Loại RAM hỗ trợ: DDR4', N'images/products/53324_tuf_b550_plus_gaming_1.jpg', 10, 12, 2)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1070, N'MSI MPG Z490 GAMING CARBON WIFI', 7199000, 1, N'Thông số sản phẩm
Chuẩn mainboard: ATX
Socket: 1200, Chipset: Z490
Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
Lưu trữ: 2 x M.2 NVMe, 6 x SATA 3 6Gb/s
Cổng xuất hình: 1 x HDMI, 1 x Display Port', N'images/products/52309_mainboard_msi_mpg_z490_gaming_carbon_wifi_intel_z490_socket_1200_atx_4_khe_ram_ddr4_0002_3.jpg', 12, 99, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1071, N'Mainboard ASROCK Z490 EXTREME 4', 4699000, 1, N'Thông số sản phẩm
Chuẩn mainboard: ATX
Socket: 1200, Chipset: Z490
Hỗ trợ RAM: 4 khe DDR4, tối đa 128GB
Lưu trữ: 2 x M.2 NVMe, 6 x SATA 3 6Gb/s
Cổng xuất hình: 1 x HDMI, 1 x Display Port', N'images/products/52440_asrock_z490_extreme_4.jpg', 0, 4, 1012)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1072, N'Gskill Trident Z Royal (2x8GB)', 3099000, 3, N'Thông số sản phẩm
Dòng sản phẩm Gskill Trident Z nổi tiếng của Gskill
Dung lượng: 2 x 8GB
Thế hệ: DDR4
Bus: 3000MHz', N'images/products/45021_gskill_trident_z_royal_gold_2.jpg', 5, 50, 9)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1073, N'Corsair Vengeance Pro RGB 16GB (2x8GB)', 2399000, 3, N'Thông số sản phẩm
Dòng sản phẩm cao cấp của Corsair
Dung lượng: 2 x 8GB
Thế hệ: DDR4
Bus: 3000MHz', N'images/products/47008_corsair_vengeance_pro_rgb.jpg', 5, 14, 1013)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1074, N'Adata XPG SPECTRIX S40G RGB 512GB', 2299000, 6, N'Thông số sản phẩm
Chỉnh màu RGB tùy ý theo cách của bạn
Tốc độ vô song
Theo đuổi sự Hiệu quả
Tính vẹn toàn và Bảo mật Dữ liệu
Bảo hành 5 năm', N'images/products/47873_sd_adata_xpg_spectrix_s40g_rgb_512gb_m_2_2280_pcie_nvme.jpg', 5, 22, 1014)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1075, N'SSD Samsung 970 EVO Plus 250GB', 2289000, 6, N'Thông số sản phẩm
SSD cao cấp của Samsung dành cho người dùng chuyên nghiệp
Dung lượng: 250GB
Kích thước: M.2
Kết nối: M.2 NVMe
NAND: V-NAND
Tốc độ đọc / ghi (tối đa): 3500MB/s / 2300M', N'images/products/45849_ssd_samsung_970_evo_plus_250gb_m_2_pcie_nvme_3x4.jpg', 10, 23, 1015)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1076, N'HDD Western Caviar Blue 1TB', 939000, 6, N'Thông số sản phẩm
Dung lượng: 1TB
Tốc độ vòng quay: 7200rpm
Bộ nhớ đệm: 64MB Cache
Kích thước: 3.5”
Chuẩn kết nối: SATA 3', N'images/products/50317_____c___ng_hdd_western_caviar_blue_1tb (1).jpg', 5, 21, 1016)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1077, N'Asus ROG STRIX RTX3070-O8G-GAMING', 20699000, 4, N'Thông số sản phẩm
Phiên bản RTX 3070 cao cấp nhất của Asus
Xung nhịp tối đa:
Số lõi Cuda: 5888
Bộ nhớ 8GB DDR6', N'images/products/56115_01_rog_strix_rtx3070_o8g_gaming.jpg', 10, 123, 2)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1078, N'GIGABYTE RTX 2080 Super AORUS-8G', 22599000, 4, N'Thông số sản phẩm
Dung lượng bộ nhớ: 8GB GDDR6
Core Clock: 1860 MHz (Reference Card: 1815 MHz)
Băng thông: 256 bit
Kết nối: DisplayPort 1.4 *3, HDMI 2.0b *3, USB Type-C™(support VirtualLink™) *1
Nguồn yêu cầu: 650W', N'images/products/48271_igabyte_rtx_2080_super_aorus___8gc_01.jpg', 5, 20, 4)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1079, N'RX 5500 XT MECH OC', 5799000, 4, N'Thông số sản phẩm
Dung lượng bộ nhớ: 8GB GDDR6
Boost: Tối đa 1845 MHz
Băng thông: 128-bit
Nguồn phụ: 1 x 8pin', N'images/products/51712_vo_hop_card_man_hinh_msi_rx_5500_xt_mech_oc___8g.jpg', 30, 3, 7)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1080, N'GeForce RTX 3080', 27699000, 4, N'NVidia GeForce RTX 3080 Founders Edition !!!!!!!!!!!!!!', N'images/products/geforce-rtx-3080-shop-630-d@2x.png', 10, 4, 11)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1081, N'Corsair SF Series SF600 600W 80+ Gold', 3099000, 5, N'Nguồn Corsair SF Series SF600 600W (80 Plus Gold Certified High Performance SFX/Màu Đen)', N'images/products/35292_corsair_sf_series_sf600_600w_80_plus_gold_certified_high_performance_sfx_0007_8.jpg', 10, 12, 1013)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1082, N'Asus ROG Thor 850W RGB 850W 80+ Platinum', 5689000, 5, N'Nguồn Asus ROG Thor 850W Platinum - RGB 850W 80 Plus Platinum Full Modular
', N'images/products/45769_rog_thor_850p_box_vga_color.jpg', 10, 11, 2)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1083, N'Antec Torque Unique Masterpiece', 7999000, 7, N'Thông số sản phẩm
Thiết kế độc đáo với phần mainboard hướng về phía trước.
Đường nét mạnh mẽ và nhiều tính năng được thiết kế cho các cỗ máy cao cấp.
Các tấm nhôm cắt tinh xảo mang lại cảm giác cao cấp cho máy tính để bàn của bạn.
Đặc biệt phù hợp với các hệ thống modding và watercooling.', N'images/products/45108_case_antec_torque___unique_masterpiece_0007_1__1_.jpg', 25, 12, 1018)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1084, N'Xigmatek Gemini Queen', 749000, 7, N'Thông số sản phẩm
Màu hồng độc đáo phù hợp với các game thủ nữ hoặc nam yêu màu hồng
Khu vực nguồn phía dưới rộng rãi hỗ trợ che dây
Hỗ trợ tối đa 6 quạt giúp tăng khả năng tản nhiệt
Hỗ trợ radiator 120mm mặt sau', N'images/products/48997_case_xigmatek_gemini_queen_en43835_1.png', 10, 10, 1019)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1085, N'NZXT H510 MATTE', 1839000, 7, N'Với USB 3.1 Gen 2 USB-C mặt trước, dễ dàng hơn để kết nối điện thoại, thiết bị lưu trữ tốc độ cao hoặc các thiết bị ngoại vi mới nhất cho máy tính của bạn
Thiết kế tối giản, hiện tại, khu vực đi dây mẫu mực và thiết kế mặt kính xuyên suốt giúp khoe trọn bộ hệ thống của bạn
Việc đi dây luôn rất tốn thời gian, chúng tôi đã thiết kế các rãnh với dây thít tích hợp sẵn để tối giản công sức cho việc này
Với 2 quạt Aer F120mm đi kèm giúp tối ưu luồng gió cùng mặt trước và nguồn đi kèm lọc bụi có thể tháo rời. Ngoài ra khay gắn mặt trước hỗ trợ radiator tới 280mm giúp đơn giản hóa việc lắp đặt tản nước all in one hoặc custom', N'images/products/47660_case_nzxt_h510_matte_white_0002_1__4_.jpg', 5, 24, 1017)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1086, N'MSI Gaming GL65 Leopard 10SEK', 36389000, 1008, N'Laptop MSI Gaming GL65 Leopard 10SEK (235VN) (i7-10750H/16GB RAM/1TBSSD/RTX 2060 6G/15.6 inch FHD 144Hz/Win 10/Đen) (2020)', N'images/products/52786_msi_nb_gl65__8_.jpg', 5, 24, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1087, N'Thermaltake Floe Riing 280 RGB', 3699000, 10, N'Tản nhiệt CPU Thermaltake Floe Riing 280 RGB (CL-W167-PL14SW-A)', N'images/products/42495_tan_nhiet_cpu_thermaltake_floe_riing_280_rgb_cl_w167_pl14sw_a_0000_1__2_.jpg', 10, 31, 1020)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1088, N'Thermaltake Pure Plus 12 RGB', 1389000, 10, N'Fan Case Thermaltake Pure Plus 12 RGB (3-Fan Pack)', N'images/products/43249_fan_case_thermaltake_pure_plus_12_rgb_3_fan_pack_0000_1__6_.jpg', 0, 21, 1020)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1089, N'Cooler Master MasterLiquid ML240R RGB', 2399000, 10, N'Tản nhiệt nước CPU Cooler Master MasterLiquid ML240R RGB', N'images/products/42170_tan_nhiet_nuoc_cpu_cooler_master_masterliquid_ml240r_rgb_0007_1.jpg', 10, 12, 1021)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1090, N'GIGABYTE AORUS ATC700 RGB', 2099000, 10, N'Tản nhiệt CPU GIGABYTE AORUS ATC700 RGB', N'images/products/42755_tan_nhiet_cpu_gigabyte_aorus_atc700_rgb_0004_1.jpg', 5, 6, 4)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1091, N'MSI Gaming GE66 Raider 10SFS', 56289000, 1008, N'Laptop MSI Gaming GE66 Raider 10SFS (474VN) (i7 10875H/32GB RAM/1TB SSD/ RTX 2070 Super 8G/15.6 inch FHD 300Hz / Win10/Xám bạc)
', N'images/products/54516_msi_nb_ge66_raider__9_.jpg', 10, 31, 1)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1092, N'Acer Gaming Nitro 5 AN515-55-5304 ', 21699000, 1008, N'Laptop Acer Gaming Nitro 5 AN515-55-5304 (NH.Q7NSV.002) (i5 10300H/ 8GBRam/ 512GB SSD/ GTX1650Ti 4G/15.6 inch FHD IPS/Win 10)', N'images/products/52626_690.jpg', 5, 0, 3)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1093, N'Asus TUF FA506IV-HN202T', 30999000, 1008, N'Laptop Gaming Asus TUF FA506IV-HN202T (R7 4800H/16GB RAM/1TB SSD/15.6 FHD 144Ghz/RTX 2060 6GB/Win10/Balo/Xám)', N'images/products/52709_asus_gaming_tuf_fa506iv_hn202t__9_.jpg', 10, 17, 2)
INSERT [dbo].[Product] ([id], [name], [price], [cate_id], [des], [image], [discount], [quantity], [brandid]) VALUES (1094, N'Dell Gaming G3 15 G3500B', 30999000, 1008, N'Laptop Dell Gaming G3 15 G3500B (P89F002G3500B) (i7 10750H/16GB RAM/512GB SSD/15.6 inch FHD 120Hz/GTX1660Ti 6G/Win10/Đen) (2020)', N'images/products/55227_g3__4_.png', 10, 21, 10)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [email], [username], [password], [avatar], [admin], [fullname]) VALUES (21, N'dangminhchien1302@gmail.com', N'chien', N'123', N'images/avatar/52626_690.jpg', 1, N'Đặng Minh Chiến')
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
