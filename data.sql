USE [QuanLyVatLieuXayDung]
GO
/****** Object:  Table [dbo].[ChiTietHD_Nhap]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHD_Nhap](
	[ID_Nhap] [varchar](50) NOT NULL,
	[MAHH] [varchar](50) NOT NULL,
	[MAHD_Nhap] [varchar](50) NULL,
	[SoLuong_Nhap] [int] NULL,
	[DonGia_Nhap] [float] NOT NULL,
	[Thanhtien] [float] NULL,
 CONSTRAINT [PK_ChiTietHD_Nhap_1] PRIMARY KEY CLUSTERED 
(
	[ID_Nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHD_Xuat]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHD_Xuat](
	[IDXuat] [varchar](50) NOT NULL,
	[IDKho] [int] NULL,
	[MAHD_Xuat] [varchar](50) NULL,
	[SoLuong_Xuat] [int] NULL,
	[DonGia_Xuat] [float] NULL,
	[ThanhTienXuat] [float] NULL,
 CONSTRAINT [PK_ChiTietHD_Xuat] PRIMARY KEY CLUSTERED 
(
	[IDXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCv] [varchar](50) NOT NULL,
	[TenCv] [nvarchar](50) NULL,
	[LCB] [float] NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [varchar](50) NOT NULL,
	[MaLoai] [nvarchar](50) NULL,
	[Duongdan] [nvarchar](max) NULL,
	[TenHH] [nvarchar](50) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[XuatXu] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon_Nhap]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon_Nhap](
	[MAHD_Nhap] [varchar](50) NOT NULL,
	[MaNC] [varchar](50) NULL,
	[MANV] [varchar](50) NULL,
	[NgayLapHD] [date] NULL,
	[TinhTrangNhap] [bit] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MAHD_Nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon_Xuat]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon_Xuat](
	[MAHD_Xuat] [varchar](50) NOT NULL,
	[MAKH] [varchar](50) NULL,
	[MANV] [varchar](50) NULL,
	[NgayLap_Xuat] [date] NULL,
	[TinhTrangXuat] [bit] NULL,
 CONSTRAINT [PK_HoaDon_Xuat] PRIMARY KEY CLUSTERED 
(
	[MAHD_Xuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kho](
	[IDKho] [int] IDENTITY(1,1) NOT NULL,
	[MAHH] [varchar](50) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[IDKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[DIENGIAI] [ntext] NULL,
	[TinhTrangHang] [bit] NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[UserName] [varchar](50) NOT NULL,
	[PassWord] [varchar](200) NULL,
	[Loai] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNC] [varchar](50) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [varchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[NgayVaoLam] [date] NOT NULL,
	[NgayKetThuc] [date] NULL,
	[MaCV] [varchar](50) NULL,
	[Luong] [float] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuanTriNguoiDung]    Script Date: 21/11/2019 7:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuanTriNguoiDung](
	[ID_I] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NULL,
	[MANV] [varchar](50) NULL,
	[MaCV] [varchar](50) NULL,
 CONSTRAINT [PK_QuanTriNguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID_I] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHD_Nhap] ([ID_Nhap], [MAHH], [MAHD_Nhap], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien]) VALUES (N'HDN002', N'HH003', N'HD001', 56, 200000, 11200000)
INSERT [dbo].[ChiTietHD_Nhap] ([ID_Nhap], [MAHH], [MAHD_Nhap], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien]) VALUES (N'HDN003', N'HH003', N'HD002', 3, 1111, 3333)
INSERT [dbo].[ChiTietHD_Nhap] ([ID_Nhap], [MAHH], [MAHD_Nhap], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien]) VALUES (N'HDN004', N'HH001', N'HD001', 3, 30000, 90000)
INSERT [dbo].[ChiTietHD_Nhap] ([ID_Nhap], [MAHH], [MAHD_Nhap], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien]) VALUES (N'HDN005', N'HH003', N'HD003', 30, 200000, 6000000)
INSERT [dbo].[ChiTietHD_Nhap] ([ID_Nhap], [MAHH], [MAHD_Nhap], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien]) VALUES (N'HDN006', N'HH006', N'HD001', 100, 300000, 30000000)
INSERT [dbo].[ChiTietHD_Nhap] ([ID_Nhap], [MAHH], [MAHD_Nhap], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien]) VALUES (N'HDN007', N'HH003', N'HD005', 30, 20000, 600000)
INSERT [dbo].[ChiTietHD_Nhap] ([ID_Nhap], [MAHH], [MAHD_Nhap], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien]) VALUES (N'HDN008', N'HH001', N'HD001', 100, 300000, 30000000)
INSERT [dbo].[ChiTietHD_Xuat] ([IDXuat], [IDKho], [MAHD_Xuat], [SoLuong_Xuat], [DonGia_Xuat], [ThanhTienXuat]) VALUES (N'PX_001', 9, N'HDX001', 3, 171000, 513000)
INSERT [dbo].[ChiTietHD_Xuat] ([IDXuat], [IDKho], [MAHD_Xuat], [SoLuong_Xuat], [DonGia_Xuat], [ThanhTienXuat]) VALUES (N'PX_002', 9, N'HDX001', 3, 172000, 516000)
INSERT [dbo].[ChiTietHD_Xuat] ([IDXuat], [IDKho], [MAHD_Xuat], [SoLuong_Xuat], [DonGia_Xuat], [ThanhTienXuat]) VALUES (N'PX_003', 14, N'HDX003', 100, 310000, 31000000)
INSERT [dbo].[ChucVu] ([MaCv], [TenCv], [LCB]) VALUES (N'CV001', N'Quản Lý', 130000)
INSERT [dbo].[ChucVu] ([MaCv], [TenCv], [LCB]) VALUES (N'CV002', N'Nhân Viên', 20000)
INSERT [dbo].[ChucVu] ([MaCv], [TenCv], [LCB]) VALUES (N'CV003', N'Admin', 3000)
INSERT [dbo].[HangHoa] ([MaHH], [MaLoai], [Duongdan], [TenHH], [DonViTinh], [XuatXu]) VALUES (N'HH001', N'LH001', N'thepcuonphi6.jpg', N'THÉP CUỘN PHI 6', N'Kg', N'Hà Tĩnh')
INSERT [dbo].[HangHoa] ([MaHH], [MaLoai], [Duongdan], [TenHH], [DonViTinh], [XuatXu]) VALUES (N'HH002', N'LH001', N'thepcuonphi8.jpg', N'Thép Cuộn PHi 8', N'Kg', N'Hà Giang')
INSERT [dbo].[HangHoa] ([MaHH], [MaLoai], [Duongdan], [TenHH], [DonViTinh], [XuatXu]) VALUES (N'HH003', N'LH001', N'thepphi16.jpg', N'Thép Phi 16', N'Cây', N'Tiền Giang')
INSERT [dbo].[HangHoa] ([MaHH], [MaLoai], [Duongdan], [TenHH], [DonViTinh], [XuatXu]) VALUES (N'HH004', N'LH002', N'dadd.jpg', N'ĐÁ 4X6 Đồng Nai', N'M3', N'Tây Ninh')
INSERT [dbo].[HangHoa] ([MaHH], [MaLoai], [Duongdan], [TenHH], [DonViTinh], [XuatXu]) VALUES (N'HH005', N'LH005', N'thepcuonphi6.jpg', N'Cát đá', N'KG', N'TT')
INSERT [dbo].[HangHoa] ([MaHH], [MaLoai], [Duongdan], [TenHH], [DonViTinh], [XuatXu]) VALUES (N'HH006', N'LH001', N'thepphi16.jpg', N'Thep ckkk', N'kg', N'')
INSERT [dbo].[HoaDon_Nhap] ([MAHD_Nhap], [MaNC], [MANV], [NgayLapHD], [TinhTrangNhap]) VALUES (N'HD001', N'NC001', N'NV003', CAST(0x66400B00 AS Date), 1)
INSERT [dbo].[HoaDon_Nhap] ([MAHD_Nhap], [MaNC], [MANV], [NgayLapHD], [TinhTrangNhap]) VALUES (N'HD002', N'NC002', N'NV003', CAST(0x67400B00 AS Date), 1)
INSERT [dbo].[HoaDon_Nhap] ([MAHD_Nhap], [MaNC], [MANV], [NgayLapHD], [TinhTrangNhap]) VALUES (N'HD003', N'NC002', N'NV003', CAST(0x66400B00 AS Date), 0)
INSERT [dbo].[HoaDon_Nhap] ([MAHD_Nhap], [MaNC], [MANV], [NgayLapHD], [TinhTrangNhap]) VALUES (N'HD004', N'NC003', N'NV004', CAST(0x67400B00 AS Date), 0)
INSERT [dbo].[HoaDon_Nhap] ([MAHD_Nhap], [MaNC], [MANV], [NgayLapHD], [TinhTrangNhap]) VALUES (N'HD005', N'NC001', N'NV006', CAST(0x67400B00 AS Date), 0)
INSERT [dbo].[HoaDon_Nhap] ([MAHD_Nhap], [MaNC], [MANV], [NgayLapHD], [TinhTrangNhap]) VALUES (N'HD006', N'NC001', N'NV006', CAST(0x67400B00 AS Date), 0)
INSERT [dbo].[HoaDon_Xuat] ([MAHD_Xuat], [MAKH], [MANV], [NgayLap_Xuat], [TinhTrangXuat]) VALUES (N'HDX001', N'KH002', N'NV003', CAST(0x66400B00 AS Date), 1)
INSERT [dbo].[HoaDon_Xuat] ([MAHD_Xuat], [MAKH], [MANV], [NgayLap_Xuat], [TinhTrangXuat]) VALUES (N'HDX002', N'KH001', N'NV003', CAST(0x66400B00 AS Date), 1)
INSERT [dbo].[HoaDon_Xuat] ([MAHD_Xuat], [MAKH], [MANV], [NgayLap_Xuat], [TinhTrangXuat]) VALUES (N'HDX003', N'KH001', N'NV002', CAST(0x67400B00 AS Date), 0)
INSERT [dbo].[HoaDon_Xuat] ([MAHD_Xuat], [MAKH], [MANV], [NgayLap_Xuat], [TinhTrangXuat]) VALUES (N'HDX004', N'KH001', N'NV004', CAST(0x62400B00 AS Date), 0)
INSERT [dbo].[HoaDon_Xuat] ([MAHD_Xuat], [MAKH], [MANV], [NgayLap_Xuat], [TinhTrangXuat]) VALUES (N'HDX005', N'KH001', N'NV003', CAST(0x67400B00 AS Date), 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'KH001', N'Lý Xuân Thành', N'Tp HCM', N'3339223')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'KH002', N'Nguyễn Ái Trân', N'Phú Thọ', N'09323231')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'KH003', N'Bùi Thị Nga', N'Long Tân', N'2323232')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'KH004', N'Thương Trọc', N'Chùa', N'093232323')
SET IDENTITY_INSERT [dbo].[Kho] ON 

INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (9, N'HH001', 97)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (10, N'HH002', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (11, N'HH003', 119)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (12, N'HH004', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (13, N'HH005', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (14, N'HH006', 0)
SET IDENTITY_INSERT [dbo].[Kho] OFF
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [DIENGIAI], [TinhTrangHang]) VALUES (N'LH001', N'Thép', N'Cứng Bền', 1)
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [DIENGIAI], [TinhTrangHang]) VALUES (N'LH002', N'Đá', N'Nhiều Hàng', 1)
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [DIENGIAI], [TinhTrangHang]) VALUES (N'LH003', N'Xi Măng', N'Nhiều Hàng', 1)
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [DIENGIAI], [TinhTrangHang]) VALUES (N'LH004', N'Gạch', N'Dễ Vỡ', 1)
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [DIENGIAI], [TinhTrangHang]) VALUES (N'LH005', N'Cát', N'Nặng Và Nhìu Loại', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [Loai], [Active]) VALUES (N'nhan', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'1', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [Loai], [Active]) VALUES (N'quanh', N'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', N'0', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [Loai], [Active]) VALUES (N'test', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', N'0', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [Loai], [Active]) VALUES (N'test2', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'1', 0)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [Loai], [Active]) VALUES (N'Thuong', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'2', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [Loai], [Active]) VALUES (N'triet', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'0', 1)
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT]) VALUES (N'NC001', N'Công Ty Hữu Hạn Thiết Nghệ', N'Tp Hồ Chí Minh', N'093232323')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT]) VALUES (N'NC002', N'Dựng Châu Long-Công Ty TNH', N'Vũng Tàu', N'0931122')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT]) VALUES (N'NC003', N'Hệ Thống Xây Dựng Châu Âu', N'Hà Nội', N'0971594488')
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [Luong], [TinhTrang]) VALUES (N'NV002', N'Quỳnh Xuân Trường', N'Nam', CAST(0x7B230B00 AS Date), N'Quỳnh Xuân Trường', N'0932497270', CAST(0x66400B00 AS Date), NULL, N'CV001', NULL, 1)
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [Luong], [TinhTrang]) VALUES (N'NV003', N'Nguyễn Thị Quanh', N'Nam', CAST(0x6F230B00 AS Date), N'Nguyễn Thị Quanh', N'0933332222', CAST(0x66400B00 AS Date), CAST(0x67400B00 AS Date), N'CV002', 20000, 1)
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [Luong], [TinhTrang]) VALUES (N'NV004', N'Admin', N'Nam', CAST(0x79230B00 AS Date), N'Admin', N'033333', CAST(0x69400B00 AS Date), NULL, N'CV003', NULL, 1)
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [Luong], [TinhTrang]) VALUES (N'NV006', N'Đặng Thương', N'Nam', CAST(0x79230B00 AS Date), N'Chùa', N'0932323', CAST(0x66400B00 AS Date), NULL, N'CV001', NULL, 1)
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [Luong], [TinhTrang]) VALUES (N'NV007', N'Test', N'Nam', CAST(0x7B230B00 AS Date), N'1233', N'1123', CAST(0x67400B00 AS Date), CAST(0x69400B00 AS Date), N'CV002', 40000, 0)
INSERT [dbo].[QuanTriNguoiDung] ([ID_I], [UserName], [MANV], [MaCV]) VALUES (N'ID_ND001', N'nhan', N'NV004', N'CV003')
INSERT [dbo].[QuanTriNguoiDung] ([ID_I], [UserName], [MANV], [MaCV]) VALUES (N'ID_ND002', N'quanh', N'NV003', N'CV002')
INSERT [dbo].[QuanTriNguoiDung] ([ID_I], [UserName], [MANV], [MaCV]) VALUES (N'ID_ND003', N'Thuong', N'NV006', N'CV001')
INSERT [dbo].[QuanTriNguoiDung] ([ID_I], [UserName], [MANV], [MaCV]) VALUES (N'ID_ND004', N'triet', N'NV002', N'CV001')
INSERT [dbo].[QuanTriNguoiDung] ([ID_I], [UserName], [MANV], [MaCV]) VALUES (N'ID_ND005', N'test', N'NV007', N'CV002')
ALTER TABLE [dbo].[ChiTietHD_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Nhap_HangHoa] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietHD_Nhap] CHECK CONSTRAINT [FK_ChiTietHD_Nhap_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHD_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Nhap_HoaDon_Nhap] FOREIGN KEY([MAHD_Nhap])
REFERENCES [dbo].[HoaDon_Nhap] ([MAHD_Nhap])
GO
ALTER TABLE [dbo].[ChiTietHD_Nhap] CHECK CONSTRAINT [FK_ChiTietHD_Nhap_HoaDon_Nhap]
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Xuat_HoaDon_Xuat] FOREIGN KEY([MAHD_Xuat])
REFERENCES [dbo].[HoaDon_Xuat] ([MAHD_Xuat])
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] CHECK CONSTRAINT [FK_ChiTietHD_Xuat_HoaDon_Xuat]
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Xuat_Kho] FOREIGN KEY([IDKho])
REFERENCES [dbo].[Kho] ([IDKho])
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] CHECK CONSTRAINT [FK_ChiTietHD_Xuat_Kho]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_LoaiHang] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiHang] ([MaLoai])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_LoaiHang]
GO
ALTER TABLE [dbo].[HoaDon_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Nhap_NhaCungCap] FOREIGN KEY([MaNC])
REFERENCES [dbo].[NhaCungCap] ([MaNC])
GO
ALTER TABLE [dbo].[HoaDon_Nhap] CHECK CONSTRAINT [FK_HoaDon_Nhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDon_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Nhap_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[HoaDon_Nhap] CHECK CONSTRAINT [FK_HoaDon_Nhap_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon_Xuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Xuat_KhachHang1] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon_Xuat] CHECK CONSTRAINT [FK_HoaDon_Xuat_KhachHang1]
GO
ALTER TABLE [dbo].[HoaDon_Xuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Xuat_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[HoaDon_Xuat] CHECK CONSTRAINT [FK_HoaDon_Xuat_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCv])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[QuanTriNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_QuanTriNguoiDung_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCv])
GO
ALTER TABLE [dbo].[QuanTriNguoiDung] CHECK CONSTRAINT [FK_QuanTriNguoiDung_ChucVu]
GO
ALTER TABLE [dbo].[QuanTriNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_QuanTriNguoiDung_NguoiDung] FOREIGN KEY([UserName])
REFERENCES [dbo].[NguoiDung] ([UserName])
GO
ALTER TABLE [dbo].[QuanTriNguoiDung] CHECK CONSTRAINT [FK_QuanTriNguoiDung_NguoiDung]
GO
ALTER TABLE [dbo].[QuanTriNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_QuanTriNguoiDung_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[QuanTriNguoiDung] CHECK CONSTRAINT [FK_QuanTriNguoiDung_NhanVien]
GO
