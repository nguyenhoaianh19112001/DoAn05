USE [DoAn5]
GO
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdonhang](
	[machitietdh] [int] NOT NULL,
	[madonhang] [int] IDENTITY(1,1) NOT NULL,
	[masp] [int] NOT NULL,
	[soluong] [int] NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[machitietdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chitiethoadonnhap]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadonnhap](
	[machitiethdn] [int] NOT NULL,
	[mahoadonnhap] [int] IDENTITY(1,1) NOT NULL,
	[soluong] [int] NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_chitiethoadonnhap] PRIMARY KEY CLUSTERED 
(
	[machitiethdn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[donhang]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donhang](
	[madonhang] [int] NOT NULL,
	[makh] [int] NOT NULL,
	[diachi] [nvarchar](max) NULL,
	[sodienthoai] [nchar](10) NULL,
	[ngaydat] [nvarchar](50) NULL,
	[trangthaidon] [nvarchar](max) NULL,
	[tongtien] [int] NULL,
	[manv] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](255) NULL,
	[ghichu] [nvarchar](max) NULL,
 CONSTRAINT [PK_donhang] PRIMARY KEY CLUSTERED 
(
	[madonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giohang]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohang](
	[magiohang] [int] NOT NULL,
	[ngaymua] [nvarchar](255) NULL,
	[tongtien] [int] NULL,
	[diachi] [nvarchar](300) NULL,
	[makh] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_giohang] PRIMARY KEY CLUSTERED 
(
	[magiohang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadonnhap]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadonnhap](
	[mahoadonnhap] [int] NOT NULL,
	[mancc] [int] NOT NULL,
	[ngaynhap] [nvarchar](255) NULL,
	[tongtien] [int] NULL,
	[manv] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_hoadonnhap] PRIMARY KEY CLUSTERED 
(
	[mahoadonnhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khachhang](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](255) NULL,
	[diachi] [nvarchar](max) NULL,
	[sodienthoai] [varchar](10) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loaisp]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisp](
	[maloai] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaisp] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[mancc] [int] IDENTITY(1,1) NOT NULL,
	[tenncc] [nvarchar](250) NULL,
	[diachi] [nvarchar](250) NULL,
	[dienthoai] [varchar](10) NULL,
 CONSTRAINT [PK_nhacungcap] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manv] [int] IDENTITY(1,1) NOT NULL,
	[tennv] [nvarchar](250) NULL,
	[sodienthoai] [varchar](10) NULL,
	[diachi] [nvarchar](255) NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masp] [int] IDENTITY(1,1) NOT NULL,
	[tensp] [nvarchar](max) NULL,
	[maloai] [int] NOT NULL,
	[soluong] [int] NULL,
	[anh] [nvarchar](250) NULL,
	[mota] [nvarchar](1000) NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 3/17/2023 4:49:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[tendangnhap] [varchar](100) NULL,
	[matkhau] [varchar](100) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[donhang] ON 

INSERT [dbo].[donhang] ([madonhang], [makh], [diachi], [sodienthoai], [ngaydat], [trangthaidon], [tongtien], [manv], [tenkh], [ghichu]) VALUES (1, 1, N'Hưng Yên', N'036233462 ', NULL, N'done', 12000, 18, N'Hoài Hoài', N'Dễ vỡ')
INSERT [dbo].[donhang] ([madonhang], [makh], [diachi], [sodienthoai], [ngaydat], [trangthaidon], [tongtien], [manv], [tenkh], [ghichu]) VALUES (2, 2, N'Khoái Châu', N'0537999789', NULL, N'done', 32000, 19, N'Hoài Anh', N'nhẹ tay')
SET IDENTITY_INSERT [dbo].[donhang] OFF
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([makh], [tenkh], [diachi], [sodienthoai]) VALUES (1, N'Đặng Thị Lan Anh', N'Tân Việt', N'0294820452')
INSERT [dbo].[khachhang] ([makh], [tenkh], [diachi], [sodienthoai]) VALUES (2, N'Nguyễn Hải Nam', N'khoái châu', N'0192834124')
INSERT [dbo].[khachhang] ([makh], [tenkh], [diachi], [sodienthoai]) VALUES (4, N'Nguyễn Hoài Nam', N'Hưng Yên', N'0193958769')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
SET IDENTITY_INSERT [dbo].[loaisp] ON 

INSERT [dbo].[loaisp] ([maloai], [tenloai]) VALUES (3, N'Đầm')
INSERT [dbo].[loaisp] ([maloai], [tenloai]) VALUES (15, N'Áo')
INSERT [dbo].[loaisp] ([maloai], [tenloai]) VALUES (18, N'Quần')
INSERT [dbo].[loaisp] ([maloai], [tenloai]) VALUES (19, N'Chân Váy')
SET IDENTITY_INSERT [dbo].[loaisp] OFF
SET IDENTITY_INSERT [dbo].[nhacungcap] ON 

INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [dienthoai]) VALUES (9, N'Nguyễn Việt Anh', N'Hưng yên', N'0193995326')
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [dienthoai]) VALUES (10, N'Nguyễn Thị Hoạt', N'Văn Lâm', N'0193958689')
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [dienthoai]) VALUES (11, N'Nguyễn Văn Tuyến', N'Thanh Long', N'0929385976')
SET IDENTITY_INSERT [dbo].[nhacungcap] OFF
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([manv], [tennv], [sodienthoai], [diachi]) VALUES (1, N'Nguyễn Thị Giang', N'0193859385', N'Yên mỹ')
INSERT [dbo].[nhanvien] ([manv], [tennv], [sodienthoai], [diachi]) VALUES (4, N'Đoàn Việt Anh', N'0284996849', N'Yên Mỹ')
INSERT [dbo].[nhanvien] ([manv], [tennv], [sodienthoai], [diachi]) VALUES (5, N'Nguyễn Thị Lan ', N'0294858392', N'Khoái Châu')
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (1, N'Đầm Body Rút', 15, 13, N'2.3.png', N'<p>Được sản xuất tại Quảng Ch&acirc;u với chất thun cotton co gi&atilde;n si&ecirc;u đẹp si&ecirc;u nhẹ co gi&atilde;n thoải m&aacute;i cực kỳ m&aacute;t d&agrave;y dặn, iwhidsff</p>', 160000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (2, N'Áo Tanktop The Non Chữ Ngực', 15, 7, N'5.png', N'Được sản xuất tại Việt Nam với chất liệu Tixi, free size ', 90000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (3, N'Chân Váy Xếp Ly Ngắn 2 Tầng', 19, 6, N'2.2.png', N'Xuất xứ tại Việt Nam với kiểu váy xếp ly, chiều dài váy mini phù hợp mặc hằng ngày hoặc các dịp đi chơi', 107000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (4, N'Chân Váy Ngắn Lưng Cao Đuôi Cá', 19, 11, N'9.2.png', N'Chân váy đuôi cá dài qua gối, xẻ tà,lưng cao điệu đà, nữ tính, kết hợp với áo phông đơn giản hoặc tank top sẽ cho ra một set đồ thú vị. Ngoài đi làm ra, bạn cũng có thể sử dụng chân váy để đi chơi, để đi tiệc. Rất nhiều người chọn kiểu chân váy đuôi cá bởi tính lịch sự và mẫu mực mà chiếc váy này mang lại.', 155000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (5, N'Quần Jean Ống Rộng Rách Gối', 18, 15, N'2.4.png', N'Với chất liệu Jeans suông không giãn lưng cao là mẫu quần có ống quần thẳng, tương đối rộng rãi. Kiểu quần này rất nên có bởi vừa mang lại cảm giác thoải mái, vừa che khuyết điểm bắp chân to, chân cong rất hiệu quả. ', 350000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (6, N'Quần Jean Nữ Ống Rộng Cạp Cao', 18, 12, N'5.4.png', N'Xuất xứ tại Việt Nam với chất liệu Jean cùng với đó là màu xanh nhạt, kiểu dáng quần rộng ống suông cạp cao giúp tôn dáng người mặc.', 128000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (7, N'Đầm Body Cổ Đắp Chéo', 3, 12, N'3.3.png', N'Xuất xứ tại Việt Nam mang phong cách Hàn Quốc, sexy.Thích hợp mặc đi chơi và dạo phố cùng bạn bè  ', 500000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (8, N'Áo Croptop Ôm Body Tay Ngắn', 15, 5, N'2.1.png', N'Style cá tính, năng động, trẻ trung, nhanh gọn lẹ. Chất liệu vải là voan, áo này mix quần jeans, kaki hay chân váy đều đẹp.', 180000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (9, N'Áo Croptop Cổ Áo Sơ Mi Xinh', 15, 9, N'3.1.png', N'Chất mềm mại, siu mát ...form rộng, dáng chuẩn sexy đẹp eo con kiến lun. Cổ sơ mi polo thời thượng cực trendy cá tính. Chất liệu là cotton  + sợi polyester + khác', 120000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (10, N'Áo Vest Nữ Tay Lỡ Trắng', 15, 4, N'7.1.png', N'Vest thiết kế tay dài thanh lịch với dáng áo cài 1 nút, vai đệm mút mỏng. Chất liệu vải Cotton + Polyester 97,8% Đàn hồi Polyurethane, dễ mặc trong mọi điều kiện thời thiết', 750000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (12, N'Quần ống loe dài', 18, 7, N'9.4.png', N'<p>Chất VẢI H&Agrave;N ĐẸP kh&ocirc;ng như mấy loại vải xấu đ&acirc;u ạ. V&igrave; chất c&oacute; co gi&atilde;n nha chị em 😍😍 g&acirc;n tăm rất sang chảnh 📍Ko l&agrave;m vải rẻ tiền dễ bai d&atilde;o</p>', 200000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (16, N'Váy Đầm Tacta Nơ Lưng Trễ Vai', 3, 5, N'6.3.png', N'✅Một e váy xuất sắc sang-xịn-mịn hợp đi chơi đi tiệc nè các nàng ơi.Mà chất tacta lên form đứng dáng lắm ạ.Diện cứ phải gọi là xinh xỉu ấy.Hơi chếch chi mà lại vô cùng chanh xả.', 175000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (17, N'Áo Dạ Kẻ Cổ Đứng Phối Tay Trắng hàng Quảng Châu', 15, 16, N'11.1.png', N'<p>&Aacute;O KHO&Aacute;C Dạ TWEED Mua được z&aacute; zẻ m&agrave; c&oacute; ngay chiếu &aacute;o xịn x&ograve; như n&agrave;y c&ograve;n chờ g&igrave; nữa. &Aacute;o mặc kho&aacute;c ngo&agrave;i, &Aacute;O D&Aacute;NG Croptop Chất liệu: Dạ tweed d&agrave;y dặn Size: S( dưới 48kg) M(dưới 54kg) L(53-58kg) XL(57-64kg) xuất xứ: Trung Quốc</p>', 252000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (18, N'Áo cardigan nữ bàn cờ form rộng', 15, 10, N'12.1.png', N'<p>- Thương hiệu: anashop9x - Kiểu cổ &aacute;o/ kiểu tay: &aacute;o kho&aacute;c ngo&agrave;i cardigan - Chất nỉ cotton, d&agrave;y dặn, mặc thu đ&ocirc;ng - Form d&aacute;ng/ kiểu &aacute;o: form rộng dưới 60kg mặc vừa ạaaaa - M&agrave;u sắc:&Aacute;o kho&aacute;c nữ họa tiết caro đen trắng - Xuất xứ: Việt Nam</p>', 140000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (20, N'Áo trễ vai bèo tay phồng rộng', 15, 10, N'6.1.png', N'<p>Chất Liệu Vải :&Aacute;o trễ vai chất kate silk mềm d&agrave;y mịn Vải kate silk / ch&eacute;o d&agrave;y mềm &ndash; m&aacute;t n&ecirc;n lu&ocirc;n mang lại cảm gi&aacute;c dễ chịu cho người mặc. Vải cực kỳ &iacute;t nhăn n&ecirc;n việc giặt ủi cũng dễ d&agrave;ng v&agrave; tiết kiệm thời gian hơn rất nhiều. Độ bền m&agrave;u rất tốt, rất kh&oacute; bị phai m&agrave;u theo thời gian d&ugrave; cho bạn giặt m&aacute;y. ✪Chiều d&agrave;i &aacute;o : 52- 56 cm ✪Chiều d&agrave;i tay &aacute;o : 16cm ✪ Free size từ: 45kg - 55kg bầu b&iacute; bon chen được ạ</p>', 70000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (21, N'Đầm Dự Tiệc Cổ Vuông Chất Ren Hoa Tay Bồng Dáng Váy Ngắn Dễ Thương ', 3, 11, N'10.3.png', N'<p>- Xuất xứ: Việt Nam - Chất liệu: - Họa tiết: ren - M&agrave;u sắc: Trắng - K&iacute;ch thước: S, M, L, XL + Size XS: 83 - 63 -84 (dưới 40kg) + Size S: 84 - 66 - 88 (40-46kg) + Size M: 88 - 70 - 92 (47-53kg) + Size L: 92 - 74 - 96 (54 - 60kg) + Size XL: 96 - 78 -100 (tr&ecirc;n 60kg)</p>', 138000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (22, N'Sét váy nữ trắng gấm xốp tay bồng tiểu thư, áo cộc tay phối khuy ngọc chân váy xòe dễ thương', 19, 10, N'10.2.png', N'Xuất xứ: Quảng Châu Chất liệu: Vải gấm xốp tổ ong  Màu Sắc: Màu trắng Trắng  Size S <48kg Chiều dài: 38cm,  Vai 29cm,  Dài Tay 26cm, Ngực 88cm Chân váy: Eo 64 Dài 37cm ( có chun co dãn tới 74)  Size M < 57kg: Dài 40cm, Vai 32cm, Dài  Tay 28cm, Ngực 94cm Chân váy: Eo 68 Dài 39cm ( có chun co dãn tới 78)', 219000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (24, N'Áo Khoác Nữ, Áo Khoác Lông Cừu Logo ONS Unisex Dáng Rộng', 15, 4, N'12.2.png', N'<p>Chất liệu vải quần &aacute;o: Xuất sứ: VN Đặc điểm quần &aacute;o: Mềm mại v&agrave; thoải m&aacute;i, nhẹ v&agrave; tho&aacute;ng kh&iacute; Form &aacute;o: Váy Free Size &lt; 67kg</p>', 180000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (25, N'Quần ống suông rộng nữ culottes cạp siêu cao 2 khuy khóa trước ', 18, 7, N'12.4.png', N'<p>quần ống rộng nữ su&ocirc;ng culottes cạp si&ecirc;u cao 2 khuy kh&oacute;a trước: 📌📌Quần thiết kế bản cạp 6,5cm cạp mặc ngang eo ( tr&ecirc;n rốn tầm 3-5cm tuỳ phom người ) Thiết kế basic với 2 t&uacute;i cong ch&eacute;o điệu đ&agrave; C&oacute; đỉa đeo đai lưng Chiều d&agrave;i quần : 95cm Chất liệu tuyết mưa vitex</p>', 95000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (27, N'Quần bò jean nữ ống loe co giãn đứng jeans cạp cao cao cấp style', 18, 14, N'11.4.png', N'<div class="VYmrqq"><label class="zgeHL-">Xuất xứ: </label>Việt Nam</div>
<div class="VYmrqq"><label class="zgeHL-">Mẫu : </label>Trơn</div>
<div class="VYmrqq"><label class="zgeHL-">Chất liệu : </label>Jean co d&atilde;n</div>
<div class="VYmrqq"><label class="zgeHL-">Kiểu d&aacute;ng quần: </label>Ống loe</div>
<div class="VYmrqq"><label class="zgeHL-">Chiều d&agrave;i quần :</label>Xẻ gấu</div>', 129000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (28, N'Quần Suông Cạp Cao Gen Bụng Khóa Trước, Quần Ống Rộng Cạp Cao', 18, 19, N'13.4.png', N'<div class="VYmrqq"><label class="zgeHL-">Phong c&aacute;ch: </label>Cơ bản</div>
<div class="VYmrqq"><label class="zgeHL-">Bản eo: </label>Bản to</div>
<div class="VYmrqq"><label class="zgeHL-">Kiểu d&aacute;ng quần: </label>Ống rộng</div>
<div class="VYmrqq"><label class="zgeHL-">Rất lớn: </label>C&oacute;</div>
<div class="VYmrqq"><label class="zgeHL-">Petite: </label>Kh&ocirc;ng</div>
<div class="VYmrqq"><label class="zgeHL-">Chiều d&agrave;i quần: </label>Chiều d&agrave;i đầy đủ</div>
<div class="VYmrqq"><label class="zgeHL-">Kiểu quần : </label>Quần Culottes</div>
<div class="VYmrqq"><label class="zgeHL-">Dịp: </label>Hằng Ng&agrave;y</div>
<div class="VYmrqq"><label class="zgeHL-">Xuất xứ : </label>Việt Nam</div>
<div class="VYmrqq"><label class="zgeHL-">Mẫu : </label>Trơn</div>
<div class="VYmrqq"><label class="zgeHL-">Chất liệu: </label>Tuyết mưa</div>
<div class="VYmrqq"><label class="zgeHL-">M&ugrave;a: </label>C&Aacute;C M&Ugrave;A</div>', 85000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (29, N'Chân Váy Jeans Lưng Cao Thời Trang Hàn Quốc', 19, 0, N'11.2.png', N'<div class="VYmrqq"><label class="zgeHL-">Chất liệu: </label>Denim</div>
<div class="VYmrqq"><label class="zgeHL-">Rất lớn: </label>C&oacute;</div>
<div class="VYmrqq"><label class="zgeHL-">Bản eo: </label>Bản to</div>
<div class="VYmrqq"><label class="zgeHL-">M&ugrave;a: </label>M&ugrave;a h&egrave;</div>
<div class="VYmrqq"><label class="zgeHL-">Petite: </label>Kh&ocirc;ng</div>
<div class="VYmrqq"><label class="zgeHL-">Xuất xứ: </label>Trung Quốc</div>
<div class="VYmrqq"><label class="zgeHL-">Mẫu: </label>Trơn</div>', 158000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (30, N'Chân Váy Nhung Tăm Phối Vạt Lệch 3 Cúc', 19, 20, N'15.2.png', N'<p>1. M&Ocirc; TẢ: Quần Short giả v&aacute;y Chất Nhung Tăm Mịn Cạp Lưng Xếp Lệch - Chất liệu: Chất da loại đẹp căng đ&eacute;t ^^ - ĐẢM BẢO! - Kiểu d&aacute;ng: Quần giả v&aacute;y chất nhung ph&ugrave; hợp mặc m&ugrave;a đ&ocirc;ng, d&aacute;ng short ngắn thiết kế theo phong cách chân váy A nên cực kì dễ mix đồ, mùa hè mix với sơ mi, áo thun, mùa đông mix với ghi lê bao xinh - M&agrave;u sắc: ĐEN/N&Acirc;U</p>', 130000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (31, N'Chân váy da chữ a', 19, 20, N'13.2.png', N'<div class="VYmrqq"><label class="zgeHL-">Phong c&aacute;ch : </label>Cơ bản</div>
<div class="VYmrqq"><label class="zgeHL-">Bản eo : </label>Bản to</div>
<div class="VYmrqq"><label class="zgeHL-">Chất liệu: </label>Da</div>
<div class="VYmrqq"><label class="zgeHL-">Rất lớn : </label>Kh&ocirc;ng</div>', 149000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (32, N'Chân Váy Da Thiết Kế xẻ tà lưng cao cho nữ', 19, 34, N'14.2.png', N'<p>Ch&acirc;n v&aacute;y da đẹp thiết kế xẻ t&agrave;, lưng cao t&ocirc;n d&aacute;ng cho nữ chất liệu da pu - mịn, sang chảnh. V&aacute;y c&oacute; quần trong, mặc đi l&agrave;m, đi chơi, m&ugrave;a thu, đ&ocirc;ng, xu&acirc;n, hạ đều đẹp.</p>', 119000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (33, N'Chân váy chữ A LOZADO chân váy ngắn dạ nhung kim tuyến phối cúc sang chảnh', 19, 13, N'1.22.png', N'<div class="VYmrqq"><label class="zgeHL-">Xuất xứ : </label>Việt Nam</div>
<div class="VYmrqq"><label class="zgeHL-">Mẫu : </label>Sọc caro</div>
<div class="VYmrqq"><label class="zgeHL-">Kiểu v&aacute;y : </label>v&aacute;y chữ A</div>
<div class="VYmrqq"><label class="zgeHL-">Chiều d&agrave;i v&aacute;y : </label>Mini</div>
<div class="VYmrqq"><label class="zgeHL-">Chất liệu : </label>Dạ nhung kim tuyến</div>', 120000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (34, N'Đầm xòe xếp ly chiết eo tay bồng cổ V màu trắng đen, Váy nữ tiểu thư ulzzang dễ thương kiểu hàn LADY', 3, 23, N'12.3.png', N'<p>Xuất xứ: Quảng Ch&acirc;u</p>
<p>&nbsp;Ki&ecirc;̉u Dáng: Váy,Đ&acirc;̀m Chữ A,</p>
<p>Đu&ocirc;i cá M&agrave;u Sắc: Trắng</p>
<p>Ch&acirc;́t vải: Vải x&ocirc;́p v&acirc;n n&ocirc;̉i</p>', 189000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (35, N'Đầm dự tiệc Bigsize 55-90kg tay bồng cổ vuông hack dáng', 3, 14, N'11.3.png', N'<div class="VYmrqq"><label class="zgeHL-">Chiều d&agrave;i tay &aacute;o: </label>D&agrave;i tay</div>
<div class="VYmrqq"><label class="zgeHL-">Dịp: </label>Buổi tiệc</div>
<div class="VYmrqq"><label class="zgeHL-">Kiểu v&aacute;y: </label>v&aacute;y chữ A</div>
<div class="VYmrqq"><label class="zgeHL-">Chiều d&agrave;i v&aacute;y: </label>Mini</div>
<div class="VYmrqq"><label class="zgeHL-">Mẫu : </label>Trơn</div>', 280000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (36, N'Váy đầm đen cổ sơ mi tay dài dáng ngắn ly eo cách điệu phong cách Hàn Quốc', 3, 23, N'14.3.png', N'<p>V&aacute;y đầm đen cổ sơ mi tay d&agrave;i d&aacute;ng ngắn ly eo c&aacute;ch điệu phong c&aacute;ch H&agrave;n Quốc MS679 - Chất vải: Vải mềm - Form set đồ co d&atilde;n, dễ mặc, kh&ocirc;ng k&eacute;n d&aacute;ng</p>', 169000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (37, N'Váy đầm đen cổ sơ mi cách điệu thắt dây eo dáng dài phong cách Hàn Quốc', 3, 6, N'13.3.png', N'<p>TH&Ocirc;NG TIN SẢN PHẨM V&aacute;y đầm đen cổ sơ mi c&aacute;ch điệu thắt d&acirc;y eo d&aacute;ng d&agrave;i phong c&aacute;ch H&agrave;n Quốc - Chất vải: Vải xoắn mềm - Form set đồ co d&atilde;n, dễ mặc, kh&ocirc;ng k&eacute;n d&aacute;ng</p>', 199000)
INSERT [dbo].[sanpham] ([masp], [tensp], [maloai], [soluong], [anh], [mota], [dongia]) VALUES (38, N'fgdfg', 15, 5, N'8.3.png', N'', 460001)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_chitietdonhang_donhang] FOREIGN KEY([madonhang])
REFERENCES [dbo].[donhang] ([madonhang])
GO
ALTER TABLE [dbo].[chitietdonhang] CHECK CONSTRAINT [FK_chitietdonhang_donhang]
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_chitietdonhang_sanpham] FOREIGN KEY([masp])
REFERENCES [dbo].[sanpham] ([masp])
GO
ALTER TABLE [dbo].[chitietdonhang] CHECK CONSTRAINT [FK_chitietdonhang_sanpham]
GO
ALTER TABLE [dbo].[chitiethoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadonnhap_hoadonnhap] FOREIGN KEY([mahoadonnhap])
REFERENCES [dbo].[hoadonnhap] ([mahoadonnhap])
GO
ALTER TABLE [dbo].[chitiethoadonnhap] CHECK CONSTRAINT [FK_chitiethoadonnhap_hoadonnhap]
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD  CONSTRAINT [FK_donhang_khachhang] FOREIGN KEY([makh])
REFERENCES [dbo].[khachhang] ([makh])
GO
ALTER TABLE [dbo].[donhang] CHECK CONSTRAINT [FK_donhang_khachhang]
GO
ALTER TABLE [dbo].[giohang]  WITH CHECK ADD  CONSTRAINT [FK_giohang_khachhang] FOREIGN KEY([makh])
REFERENCES [dbo].[khachhang] ([makh])
GO
ALTER TABLE [dbo].[giohang] CHECK CONSTRAINT [FK_giohang_khachhang]
GO
ALTER TABLE [dbo].[hoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_hoadonnhap_nhacungcap] FOREIGN KEY([mancc])
REFERENCES [dbo].[nhacungcap] ([mancc])
GO
ALTER TABLE [dbo].[hoadonnhap] CHECK CONSTRAINT [FK_hoadonnhap_nhacungcap]
GO
ALTER TABLE [dbo].[hoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_hoadonnhap_nhanvien] FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
ALTER TABLE [dbo].[hoadonnhap] CHECK CONSTRAINT [FK_hoadonnhap_nhanvien]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_loaisp] FOREIGN KEY([maloai])
REFERENCES [dbo].[loaisp] ([maloai])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_loaisp]
GO
