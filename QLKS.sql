USE [Quan_ly_khach_san]
GO
/****** Object:  Table [dbo].[datphong]    Script Date: 5/6/2023 5:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datphong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_kh] [int] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaytra] [datetime] NULL,
	[Songaythuco] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dichvu]    Script Date: 5/6/2023 5:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dichvu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[gia] [int] NULL,
	[deleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dtphong_ct]    Script Date: 5/6/2023 5:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dtphong_ct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_dp] [int] NULL,
	[id_p] [int] NULL,
	[songayo] [int] NULL,
	[dongia] [int] NULL,
	[thanhtien] [int] NULL,
	[ngay] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dtphong_dv]    Script Date: 5/6/2023 5:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dtphong_dv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_dp] [int] NULL,
	[id_p] [int] NULL,
	[id_dv] [int] NULL,
	[soluong] [int] NULL,
	[dongia] [int] NULL,
	[thanhtien] [int] NULL,
	[ngay] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 5/6/2023 5:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[cccd] [nvarchar](50) NULL,
	[deleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 5/6/2023 5:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](30) NULL,
	[songuoi] [int] NULL,
	[sogiuong] [int] NULL,
	[dongia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong]    Script Date: 5/6/2023 5:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_l] [int] NULL,
	[tenphong] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[deleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/6/2023 5:35:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[giotinh] [nvarchar](10) NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[chucvu] [nvarchar](50) NULL,
	[cccd] [nvarchar](20) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[datphong] ON 

INSERT [dbo].[datphong] ([id], [id_kh], [Ngaydat], [Ngaytra], [Songaythuco], [created_at], [updated_at]) VALUES (1, 1, CAST(N'2023-05-04T00:00:00.000' AS DateTime), CAST(N'2023-05-06T00:00:00.000' AS DateTime), 2, CAST(N'2023-05-04T00:00:00.000' AS DateTime), CAST(N'2023-05-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[datphong] OFF
GO
SET IDENTITY_INSERT [dbo].[dichvu] ON 

INSERT [dbo].[dichvu] ([id], [ten], [gia], [deleted]) VALUES (1, N'giặt là', 40000, 0)
INSERT [dbo].[dichvu] ([id], [ten], [gia], [deleted]) VALUES (2, N'bar', 800000, 1)
SET IDENTITY_INSERT [dbo].[dichvu] OFF
GO
SET IDENTITY_INSERT [dbo].[dtphong_ct] ON 

INSERT [dbo].[dtphong_ct] ([id], [id_dp], [id_p], [songayo], [dongia], [thanhtien], [ngay]) VALUES (1, 1, 1, 2, 1000000, 2000000, CAST(N'2023-05-04T10:20:30.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[dtphong_ct] OFF
GO
SET IDENTITY_INSERT [dbo].[dtphong_dv] ON 

INSERT [dbo].[dtphong_dv] ([id], [id_dp], [id_p], [id_dv], [soluong], [dongia], [thanhtien], [ngay]) VALUES (1, 1, 1, 1, 2, 50000, 100000, CAST(N'2023-05-04T19:50:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[dtphong_dv] OFF
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([id], [hoten], [SDT], [diachi], [cccd], [deleted]) VALUES (1, N'Bùi Anh Hào', N'0934235277', N'Cầu Giấy', N'030201007930', 0)
INSERT [dbo].[khachhang] ([id], [hoten], [SDT], [diachi], [cccd], [deleted]) VALUES (2, N'Nguyễn Đình Quân', N'0915335515', N'Hà Đông', N'030201007444', 0)
INSERT [dbo].[khachhang] ([id], [hoten], [SDT], [diachi], [cccd], [deleted]) VALUES (3, N'Trần Thị Hoài Thu', N'0917363465', N'Cổ Bản, Hà Đông', N'030201007542', 1)
INSERT [dbo].[khachhang] ([id], [hoten], [SDT], [diachi], [cccd], [deleted]) VALUES (4, NULL, NULL, NULL, N'', 1)
SET IDENTITY_INSERT [dbo].[khachhang] OFF
GO
SET IDENTITY_INSERT [dbo].[loaiphong] ON 

INSERT [dbo].[loaiphong] ([id], [tenloai], [songuoi], [sogiuong], [dongia]) VALUES (1, N'vip', 2, 1, 1000000)
INSERT [dbo].[loaiphong] ([id], [tenloai], [songuoi], [sogiuong], [dongia]) VALUES (2, N'thường', 2, 1, 500000)
SET IDENTITY_INSERT [dbo].[loaiphong] OFF
GO
SET IDENTITY_INSERT [dbo].[phong] ON 

INSERT [dbo].[phong] ([id], [id_l], [tenphong], [status], [deleted]) VALUES (1, 1, N'P305', N'trống', 0)
INSERT [dbo].[phong] ([id], [id_l], [tenphong], [status], [deleted]) VALUES (2, 2, N'P101', N'trống', 1)
SET IDENTITY_INSERT [dbo].[phong] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [hoten], [giotinh], [diachi], [sdt], [chucvu], [cccd], [username], [password]) VALUES (1, N'Đào Trọng Phúc', N'Nam', N'Hà Đông', N'0963991723', N'quản lý', N'030201001235', N'phucdt', N'123456')
INSERT [dbo].[users] ([id], [hoten], [giotinh], [diachi], [sdt], [chucvu], [cccd], [username], [password]) VALUES (2, N'Trần Vũ Minh Quý', N'Nam', N'Hà Đông', N'0342939269', N'nhân viên', N'030201007931', N'', N'')
INSERT [dbo].[users] ([id], [hoten], [giotinh], [diachi], [sdt], [chucvu], [cccd], [username], [password]) VALUES (3, N'Nguyễn Hoàng Việt', N'Nam', N'Hà Đông', N'0917555163', N'nhân viên', N'030201005642', N'', N'')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[datphong]  WITH CHECK ADD FOREIGN KEY([id_kh])
REFERENCES [dbo].[khachhang] ([id])
GO
ALTER TABLE [dbo].[dtphong_ct]  WITH CHECK ADD FOREIGN KEY([id_dp])
REFERENCES [dbo].[datphong] ([id])
GO
ALTER TABLE [dbo].[dtphong_ct]  WITH CHECK ADD FOREIGN KEY([id_p])
REFERENCES [dbo].[phong] ([id])
GO
ALTER TABLE [dbo].[dtphong_dv]  WITH CHECK ADD FOREIGN KEY([id_dp])
REFERENCES [dbo].[datphong] ([id])
GO
ALTER TABLE [dbo].[dtphong_dv]  WITH CHECK ADD FOREIGN KEY([id_dv])
REFERENCES [dbo].[dichvu] ([id])
GO
ALTER TABLE [dbo].[dtphong_dv]  WITH CHECK ADD FOREIGN KEY([id_p])
REFERENCES [dbo].[phong] ([id])
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD FOREIGN KEY([id_l])
REFERENCES [dbo].[loaiphong] ([id])
GO
