-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 05, 2022 lúc 04:16 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webjunee`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Túi xách Gucci'),
(7, 'Túi xách Givenchy'),
(8, 'Túi xách Gianni Versace'),
(9, 'Túi xách Dior'),
(10, 'Túi xách D &amp; G'),
(12, 'Túi xách Charles &amp; Keith'),
(13, 'Túi xách Celine'),
(14, 'Túi xách Burberry'),
(15, 'Túi xách Hermes'),
(16, 'Túi xách LVLouis Vuittion'),
(17, 'Túi xách MCM'),
(18, 'Túi xách PhillipLim'),
(19, 'Túi xách Drada'),
(20, 'Túi xách Savaltore'),
(21, 'Túi xách MK'),
(22, 'Túi xách Chanel');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 7, '0omn99jipm7namf6srjhj4kva2', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
(2, 7, 'up8l6ff347ik19fsoa18qff452', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(3, 7, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(4, 8, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'MÃ¡y tÃ­nh Dell A503', '10000000', 1, 'dbb417a309.jpg'),
(9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(13, 17, 'grfc2bmmrmga6mn5q7484i87f2', 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', '1099000', 1, '785e8d373d.jpg'),
(14, 19, '39p4lauudimhcb91i8mhna4bf2', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
(18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
(19, 19, 'hlkksgphiqn70b37sjg3u89unu', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg'),
(22, 22, 'ck5vja4tab39dnmcb5ic5m1cjf', 'Apple New For Mysql Server', '60000', 2, '643929ce40.jpg'),
(23, 18, 'nk8movlv5f9n93nocvci6ie1c9', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1, '32942e9470.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(15, 'Túi xách da'),
(16, 'Túi Bigsize cá tính'),
(17, 'Túi công sở thanh lịch'),
(18, 'Túi đeo chéo'),
(19, 'Balo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(2, 7, 44, 'Balo MCM AUthentic', '67000000', '3ce60f1bbd.jpg'),
(3, 7, 30, 'Túi Xách D & G Spain-Inspired Spring ', '34000000', '4c87944e7a.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Ng.Anh tu', '113 Láº¡c Long QuÃ¢n HCM', 'TPHCM', 'hcm', '700000', '099999123', 'thanhviendangki@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'vÃµ thá»‹ tháº£o nguyÃªn', '149 LÅ©y BÃ¡n BÃ­ch, phÆ°á»ng TÃ¢n Thá»›i HÃ²a, quáº­n TÃ¢n PhÃº, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Sin', '149 LÃ½ ThÃ¡i Tá»•', 'TPHCM', 'hcm', '700000', '0522525294', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Như', '78', 'HCM', 'hcm', '1223', '0943436737', 'phamthihuynhnhu2k@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'như', '81', 'HCM', 'hcm', '20000', '0943436737', 'nguoidung1@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(62, 26, 'Túi xách Luggage Celine', 7, 1, '12000000', '1268883853.jpg', 0, '2021-12-30 21:52:37'),
(63, 44, 'Balo MCM AUthentic', 7, 1, '67000000', '3ce60f1bbd.jpg', 0, '2021-12-30 21:52:37'),
(64, 45, 'Túi Xách 3.1 Phillip Lim Pashli Satchel', 7, 2, '48000000', '3887c9c21c.jpg', 0, '2021-12-30 22:22:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(23, 'Túi xách Burberry Canvas Story', '', '10', '0', '10', 18, 14, '<p>Chiếc t&uacute;i x&aacute;ch d&agrave;nh cho nữ của thương hiệu thời trang đ&igrave;nh đ&aacute;m Burberry được thiết kế ph&ugrave; hợp với những t&iacute;n đồ theo đuổi phong c&aacute;ch vintage khi được phối bởi 2 m&agrave;u be, n&acirc;u,đen. Thiết kế dễ d&agrave;ng lựa chọn đ&atilde; trở th&agrave;nh item y&ecirc;u th&iacute;ch của nhiều ng&ocirc;i sao.</p>', 1, '12000000', '5b723336c7.jpg'),
(24, 'Túi xách Burberry TB Bag', '', '10', '0', '10', 18, 14, '<p>Chiếc t&uacute;i x&aacute;ch d&agrave;nh cho nữ của thương hiệu thời trang đ&igrave;nh đ&aacute;m Burberry được thiết kế ph&ugrave; hợp với những t&iacute;n đồ theo đuổi phong c&aacute;ch vintage khi được phối bởi 2 m&agrave;u be, n&acirc;u,cam. Thiết kế dễ d&agrave;ng lựa chọn đ&atilde; trở th&agrave;nh item y&ecirc;u th&iacute;ch của nhiều ng&ocirc;i sao.</p>', 1, '14000000', '61d1b20174.jpg'),
(25, 'Túi xách Totte Celine', '', '12', '0', '12', 16, 13, '<p>Túi có form dáng vu&ocirc;ng, đơn giản, làm bằng ch&acirc;́t vải canvas khá dày dặn, và chắc chắn. Ph&acirc;̀n vi&ecirc;̀n túi, quai túi được là bằng da b&ecirc; cao c&acirc;́p. Đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t và cũng là đi&ecirc;̉m nh&acirc;́n của túi đó chính là dòng chữ Celine Paris màu đen được in đ&acirc;̣m tr&ecirc;n n&ecirc;̀n vải canvas.</p>', 1, '23000000', 'e0d329c818.jpg'),
(26, 'Túi xách Luggage Celine', '', '12', '0', '12', 16, 7, '<p>Túi có form dáng vu&ocirc;ng, đơn giản, làm bằng ch&acirc;́t vải canvas khá dày dặn, và chắc chắn. Ph&acirc;̀n vi&ecirc;̀n túi, quai túi được là bằng da b&ecirc; cao c&acirc;́p. Đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t và cũng là đi&ecirc;̉m nh&acirc;́n của túi đó chính là dòng chữ Celine Paris màu đen được in đ&acirc;̣m tr&ecirc;n n&ecirc;̀n vải canvas.</p>', 0, '12000000', '1268883853.jpg'),
(27, 'Túi xách Charles & Keith Woven Boxy', '', '8', '0', '8', 17, 12, '<p>Chiếc t&uacute;i được l&agrave;m từ chất liệu da nh&acirc;n tạo cao cấp, bền đẹp trong suốt qu&aacute; tr&igrave;nh sử dụng. Đường may của t&uacute;i v&ocirc; c&ugrave;ng tinh tế, tỉ mỉ h&agrave;i l&ograve;ng ngay cả với kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh.</p>', 0, '16000000', '25adf4c3b0.jpg'),
(28, 'Túi xách Charles & Keith Croc-Effer', '', '15', '0', '15', 18, 12, '<p>Chiếc t&uacute;i Charles &amp; Keith Croc-Effer được l&agrave;m từ chất liệu da nh&acirc;n tạo cao cấp, bền đẹp trong suốt qu&aacute; tr&igrave;nh sử dụng. Đường may của t&uacute;i v&ocirc; c&ugrave;ng tinh tế, tỉ mỉ h&agrave;i l&ograve;ng ngay cả với kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh.</p>', 1, '23000000', '3b5eb424d6.jpg'),
(29, 'Túi Xách D & G Snake Print Chain Strap Shoulder Bag', '', '12', '0', '12', 17, 10, '<p>Họa Tiết Da Rắn l&agrave; chiếc t&uacute;i x&aacute;ch nữ sang trọng, được thiết kế kiểu d&aacute;ng đeo vai trẻ trung hiện đại. Chiếc t&uacute;i&nbsp;D &amp; G được l&agrave;m từ chất liệu da nh&acirc;n tạo cao cấp bền đẹp trong suốt thời gian sử dụng.</p>\r\n<p>&nbsp;</p>', 1, '16000000', '66d42c7fc8.jpg'),
(30, 'Túi Xách D & G Spain-Inspired Spring ', '', '8', '0', '8', 15, 10, '<p>T&uacute;i X&aacute;ch D &amp; G Spain-Inspired Spring tương ứng với c&aacute;c m&ugrave;a, xu hướng hoặc giống thời tiết cụ thể; thay v&agrave;o đ&oacute;, họ lấp đầy c&aacute;c bộ sưu tập theo m&ugrave;a của m&igrave;nh bằng những chi tiết Địa Trung Hải phức tạp, đầy lịch sử m&agrave; họ lu&ocirc;n l&agrave;m, v&agrave; người ti&ecirc;u d&ugrave;ng sẽ ngấu nghiến n&oacute; giống như Dolce c&oacute; thể th&iacute;ch th&uacute; v&agrave; bỏ cuộc trước m&ugrave;a thu.</p>', 0, '34000000', '4c87944e7a.jpg'),
(31, 'Túi Dior Book Tote Oblique', '', '15', '0', '15', 16, 9, '<p>Dior Book Tote Oblique c&oacute; k&iacute;ch thước to tạo sự tiện dụng khi sử dụng v&agrave; được thiết kế với kiểu d&aacute;ng đơn giản nhưng kh&ocirc;ng k&eacute;m phần sang trọng. Book Tote Oblique được l&agrave;m từ vải canvas th&ecirc;u t&ecirc;n thương hiệu Dior dọc theo th&acirc;n t&uacute;i, kết hợp c&ugrave;ng d&ograve;ng chữ Christian Dior nổi bật giữa t&uacute;i tạo điểm nhấn.</p>', 1, '34000000', 'f89aad379e.jpg'),
(32, 'Túi Xách Lady Dior Lamskin', '', '10', '0', '10', 17, 9, '<p>Một t&aacute;c phẩm nghệ thuật vượt thời gian v&agrave; độc đ&aacute;o, chiếc t&uacute;i Lady Dior thấm đẫm tinh thần,văn h&oacute;a của Dior<br />T&uacute;i X&aacute;ch Lady Dior Lamskin, như một những mẩu t&uacute;i x&aacute;ch kinh điển, nhưng chưa bao giờ hạ nhiệt. Mẫu t&uacute;i với chất liệu da cừu mềm mại, tỉ mỉ đến từng mũi kh&acirc;u tay,</p>', 1, '95000000', '0aa0eb83e4.jpg'),
(33, 'Túi xách Gianni Versace Palazzo Empire', '', '10', '0', '10', 17, 8, '<p>Palazzo Empire lu&ocirc;n l&agrave; &ldquo;ng&ocirc;i sao&rdquo; trong d&ograve;ng t&uacute;i x&aacute;ch Palazzo của thương hiệu Versace. Mẫu t&uacute;i n&agrave;y thu h&uacute;t mọi &aacute;nh nh&igrave;n ngay từ lần đầu ti&ecirc;n bởi vẻ ngo&agrave;i sang trọng, đầy sự ki&ecirc;u h&atilde;nh. Phần nắp kh&oacute;a c&oacute; gắn biểu tượng đặc trưng của nh&agrave; mốt l&agrave; nữ thần đầu rắn Medusa, được l&agrave;m từ kim loại hoặc được sơn m&agrave;u đồng điệu với m&agrave;u t&uacute;i. B&ecirc;n cạnh da c&aacute; sấu, thiết kế cao cấp của &Yacute; c&ograve;n được chế t&aacute;c tinh xảo từ chất liệu thượng hạng như da b&ecirc; hay da trăn. Lớp l&oacute;t b&ecirc;n trong cũng được may cẩn thận bằng vải linen. Ngo&agrave;i ra, ở trong c&oacute; th&ecirc;m một t&uacute;i nhỏ đa năng để người d&ugrave;ng tiện sử dụng.</p>', 0, '28000000', '5e75979271.jpg'),
(34, 'Túi xách Gianni Versace Genti', '', '12', '0', '12', 17, 8, '<p>T&uacute;i x&aacute;ch nữ thời trang cao cấp Gianni Versace &ndash; Genti kiểu t&uacute;i d&aacute;ng hộp mang đến phong c&aacute;ch tươi trẻ.</p>', 1, '120000000', '239cd975f4.jpg'),
(35, 'Túi xách Givenchy Antigona', '', '10', '0', '10', 17, 7, '<p>D&ograve;ng t&uacute;i đẳng cấp Antigona của thương hiệu Givenchy&nbsp; Mẫu t&uacute;i c&oacute; kiểu d&aacute;ng đơn giản, thời thượng phom t&uacute;i rộng, ch&iacute;nh v&igrave; vậy n&oacute; đ&atilde; dễ d&agrave;ng \"chinh phục\" những qu&yacute; c&ocirc; v&agrave; được xếp v&agrave;o h&agrave;ng ngũ những chiếc It Bag kinh điển.</p>', 0, '14000000', '55c81ffbfe.jpg'),
(36, 'Túi xách Givenchy', '', '10', '0', '10', 18, 7, '<p>D&ograve;ng t&uacute;i đẳng cấp Antigona của thương hiệu Givenchy&nbsp; Mẫu t&uacute;i c&oacute; kiểu d&aacute;ng đơn giản, thời thượng phom t&uacute;i rộng, ch&iacute;nh v&igrave; vậy n&oacute; đ&atilde; dễ d&agrave;ng \"chinh phục\" những qu&yacute; c&ocirc; v&agrave; được xếp v&agrave;o h&agrave;ng ngũ những chiếc It Bag kinh điển.</p>', 1, '45000000', 'c3522eb36a.jpg'),
(37, 'Túi Xách Gucci Queen Margaret Bag', '', '10', '0', '10', 18, 6, '<p>Một thiết kế kinh điển kh&ocirc;ng thể bỏ qua của nh&agrave; mốt Gucci được nhiều bạn trẻ y&ecirc;u th&iacute;ch l&agrave; Gucci Queen Margaret Bag. Phong c&aacute;ch cổ điển, sang trọng pha lẫn n&eacute;t trẻ trung hiện đại đ&atilde; khiến mẫu t&uacute;i Gucci con ong n&agrave;y nhanh ch&oacute;ng thu h&uacute;t sự ch&uacute; &yacute; v&agrave; đam m&ecirc; của c&aacute;c t&iacute;n đồ h&agrave;ng hiệu tr&ecirc;n thế giới.</p>', 1, '79000000', '00bb8c75be.jpg'),
(38, 'Túi Xách Gucci Horsebit 1955 small shoulder bag', '', '10', '0', '10', 18, 6, '<p>D&ograve;ng t&uacute;i x&aacute;ch Gucci Horsebit 1955 hết sức đa dạng. Điểm tương đồng duy nhất c&aacute;c mẫu t&uacute;i x&aacute;ch Gucci Horsebit 1955 l&agrave; biểu tượng hàm thi&ecirc;́c ngựa (horsebit) ở mặt trước của t&uacute;i. Gucci cũng ra mắt nhiều mẫu phi&ecirc;n bản giới hạn cho d&ograve;ng t&uacute;i n&agrave;y. Đ&acirc;y sẽ l&agrave; những mẫu mang lại vẻ độc đ&aacute;o nhất cho bạn, khi kh&ocirc;ng được nhiều người sở hữu. Đồng thời c&oacute; gi&aacute; trị đầu tư v&agrave; chuyển nhượng cao nhất.</p>', 1, '49000000', 'b0e9124207.jpg'),
(39, 'Túi xách Hermes Shoho', '', '12', '0', '12', 16, 15, '<p>Hermes&nbsp; l&agrave; sản phẩm t&uacute;i x&aacute;ch được l&agrave;m bằng chất liệu da kết hợp với kim loại v&igrave; vậy để tạo ra được sản phẩm đẹp cần một người thợ l&agrave;nh nghề l&agrave;m trong khoảng v&agrave;i tuần mới ho&agrave;n th&agrave;nh được một c&aacute;i t&uacute;i x&aacute;ch. V&igrave; vậy khi sử dụng tui xach thoi trang Hermes sẽ l&agrave;m t&ocirc;n l&ecirc;n sự qu&yacute; ph&aacute;i cho bạn.</p>', 0, '120000000', '5a47e74f05.jpg'),
(40, 'Túi xách Hermes Binki', '', '10', '0', '10', 15, 15, '<p>Những chiếc t&uacute;i x&aacute;ch h&agrave;ng hiệu hermes chất liệu da cao cấp kh&ocirc;ng chỉ hạn chế b&aacute;m bẩn m&agrave; c&ograve;n rất sang trọng. Bởi bất cứ c&ocirc; g&aacute;i n&agrave;o, d&ugrave; ở độ tuổi n&agrave;o cũng đều muốn m&igrave;nh sở hữu được chiếc t&uacute;i x&aacute;ch nữ h&agrave;ng hiệu cao cấp cho bản th&acirc;n m&igrave;nh. V&agrave; với n&agrave;ng c&ocirc;ng sở, những kiểu t&uacute;i bản to lu&ocirc;n l&agrave; sự chọn lựa h&agrave;ng đầu bởi n&oacute; mới đủ rộng để đựng được mọi thứ. D&ugrave; bản to nhưng cũng kh&ocirc;ng l&agrave;m cho c&aacute;c chị em cảm thấy luộm thuộm, rườm r&agrave; m&agrave; thay v&agrave;o đ&oacute; lại khiến qu&yacute; c&ocirc; trở n&ecirc;n trẻ trung v&agrave; c&aacute; t&iacute;nh hơn rất nhiều.</p>', 1, '83000000', '61ac5cff29.jpg'),
(41, 'Túi xách LVLouis Vuittion Cannes', '', '8', '0', '8', 18, 0, '<p>T&uacute;i LV Cannes họa tiết monogram đặc trưng của Louis Vuitton l&agrave; sản phẩm được nhiều sao Việt y&ecirc;u th&iacute;ch. Thanh Hằng tậu ngay mẫu t&uacute;i c&oacute; gi&aacute; hơn 3 ngh&igrave;n đ&ocirc; để mix đồ.&nbsp;</p>', 1, '120000000', 'c3ed847c97.jpg'),
(42, 'Túi Xách Louis Vuitton Locky BB Monogram', '', '10', '0', '10', 18, 15, '<p>T&uacute;i X&aacute;ch Louis Vuitton Locky BB Monogram thiết kế kiểu d&aacute;ng hiện đại, trẻ trung đến từ thương hiệu Louis Vuitton nổi tiếng của Ph&aacute;p. T&uacute;i Louis Vuitton Locky BB l&agrave;m bằng da Epi c&oacute; thiết kế nhỏ gọn kết hợp với sự tinh tế c&ugrave;ng phong c&aacute;ch t&aacute;o bạo, nhờ một kh&oacute;a m&oacute;c LV bằng kim loại v&agrave;ng s&agrave;nh điệu</p>', 0, '16000000', 'e4009d93fc.jpg'),
(43, 'TÚI MCM MINI ANYA TOP ZIP SHOPPER - COGNAC', '', '12', '0', '12', 18, 17, '<p>H&atilde;ng đồ da của Đức MCM được s&aacute;ng lập từ năm 1976, chuy&ecirc;n sản xuất c&aacute;c mặt h&agrave;ng đồ da cao cấp. C&aacute;c thiết kế của MCM l&agrave; sự kết hợp tinh tế giữa t&iacute;nh tiện dụng v&agrave; sự t&agrave;i hoa của c&aacute;c người thợ thủ c&ocirc;ng. Đ&acirc;y cũng l&agrave; nh&atilde;n hiệu được c&aacute;c th&agrave;nh vi&ecirc;n ho&agrave;ng gia c&aacute;c nước cũng như đ&ocirc;ng đảo ng&ocirc;i sao nổi tiếng thế giới y&ecirc;u th&iacute;ch mặc d&ugrave; ch&uacute;ng c&oacute; c&aacute;i gi&aacute; kh&ocirc;ng hề rẻ. N&eacute;t đặc trưng nhất của MCM l&agrave; những thiết kế với m&agrave;u sắc của rượu Cognac. Hầu hết c&aacute;c sản phẩm bằng da, từ balo cho đến những chiếc vali đựng h&agrave;nh l&iacute; đều được thiết kế trong m&agrave;u sắc n&agrave;y. Loại da m&agrave;u Cognac độc đ&aacute;o kết hợp với những h&igrave;nh tượng vượt thời gian của MCM: logo của MCM, dải b&ocirc;ng nguyệt quế v&agrave; những họa tiết h&igrave;nh kim cương.</p>', 1, '7000000', 'f0127cf0c5.jpg'),
(44, 'Balo MCM AUthentic', '', '10', '0', '10', 19, 17, '<p>H&atilde;ng đồ da của Đức MCM được s&aacute;ng lập từ năm 1976, chuy&ecirc;n sản xuất c&aacute;c mặt h&agrave;ng đồ da cao cấp. C&aacute;c thiết kế của MCM l&agrave; sự kết hợp tinh tế giữa t&iacute;nh tiện dụng v&agrave; sự t&agrave;i hoa của c&aacute;c người thợ thủ c&ocirc;ng. Đ&acirc;y cũng l&agrave; nh&atilde;n hiệu được c&aacute;c th&agrave;nh vi&ecirc;n ho&agrave;ng gia c&aacute;c nước cũng như đ&ocirc;ng đảo ng&ocirc;i sao nổi tiếng thế giới y&ecirc;u th&iacute;ch mặc d&ugrave; ch&uacute;ng c&oacute; c&aacute;i gi&aacute; kh&ocirc;ng hề rẻ. N&eacute;t đặc trưng nhất của MCM l&agrave; những thiết kế với m&agrave;u sắc của rượu Cognac. Hầu hết c&aacute;c sản phẩm bằng da, từ balo cho đến những chiếc vali đựng h&agrave;nh l&iacute; đều được thiết kế trong m&agrave;u sắc n&agrave;y. Loại da m&agrave;u Cognac độc đ&aacute;o kết hợp với những h&igrave;nh tượng vượt thời gian của MCM: logo của MCM, dải b&ocirc;ng nguyệt quế v&agrave; những họa tiết h&igrave;nh kim cương.</p>', 0, '67000000', '3ce60f1bbd.jpg'),
(45, 'Túi Xách 3.1 Phillip Lim Pashli Satchel', '', '10', '0', '10', 18, 18, '<p>T&uacute;i X&aacute;ch 3.1 Phillip Lim Pashli Satchel được l&agrave;m từ chất liệu da cao cấp. Form t&uacute;i với c&aacute;c đường may v&ocirc; c&ugrave;ng tỉ mỉ v&agrave; chắc chắn h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng.</p>\r\n<p>Thiết kế kh&oacute;a đẩy gấp lại, phần d&acirc;y đeo thiết kế với mắt x&iacute;ch m&oacute;c nối t&ocirc;ng m&agrave;u v&agrave;ng nổi bật.</p>', 0, '24000000', '3887c9c21c.jpg'),
(46, 'Túi xách Prada CLEO', '', '10', '0', '10', 18, 19, '<p>Chiếc t&uacute;i h&igrave;nh tr&ograve;n tr&ograve;n, dẹp dẹp n&agrave;y ra mắt ở show Xu&acirc;n H&egrave; 2021 của Prada, Multiple Views. Được biết, chiếc t&uacute;i lấy cảm hứng từ một phom d&aacute;ng thịnh h&agrave;nh của Prada v&agrave;o thập ni&ecirc;n 1990. N&oacute; l&agrave; một trong những chiếc t&uacute;i x&aacute;ch đầu ti&ecirc;n ra đời dưới sự cộng t&aacute;c của Raf Simons v&agrave; Miuccia Prada.</p>', 1, '120000000', '820912be9a.jpg'),
(47, 'Túi xách nữ Super Vip túi Prada Sidonie', '', '10', '0', '10', 18, 19, '<p>Những chiếc t&uacute;i x&aacute;ch Prada n&agrave;y ng&agrave;y c&agrave;ng c&oacute; nhiều kiểu d&aacute;ng v&agrave; m&agrave;u sắc kh&aacute;c nhau để người ti&ecirc;u d&ugrave;ng chọn lựa. Đặc biệt Prada biết c&aacute;ch g&acirc;y ấn tượng với kh&aacute;ch h&agrave;ng nhờ kết hợp kiểu d&aacute;ng cổ điển v&agrave; hiện đại. B&ecirc;n cạnh đ&oacute;, tạo ra được đặc trưng ri&ecirc;ng của m&igrave;nh trong từng mẫu t&uacute;i. Cho d&ugrave; bạn l&agrave; ai, một c&ocirc; n&agrave;ng điệu đ&agrave;, hay c&aacute; t&iacute;nh s&agrave;nh điệu, bạn điều c&oacute; thể t&igrave;m ra chiếc t&uacute;i ph&ugrave; hợp nhất với phong c&aacute;ch của m&igrave;nh.&nbsp;</p>', 1, '120000000', '4712807812.jpg'),
(48, 'Túi xách SALVATORE FERRAGAMO LETTER LIGHT PINK LEATHER BAG', '', '10', '0', '10', 18, 20, '<p>Thiết kế t&uacute;i x&aacute;ch &ldquo;n&acirc;ng giấc&rdquo; cho những m&ocirc;ng mơ dịu d&agrave;ng, y&ecirc;u kiều của ph&aacute;i đẹp với kiểu d&aacute;ng nữ t&iacute;nh, tone hồng ngọt ng&agrave;o v&agrave; c&aacute;c chi tiết, đường n&eacute;t đều được t&aacute;i hiện một c&aacute;ch v&ocirc; c&ugrave;ng uyển chuyển v&agrave; duy&ecirc;n d&aacute;ng tr&ecirc;n nền da b&ecirc; mềm mại, sang trọng. Mẫu t&uacute;i với kh&ocirc;ng gian thoải m&aacute;i, tiện dụng để c&aacute;c n&agrave;ng đựng điện thoai, đồ trang điểm, thẻ hay tiền mặt,&hellip; th&ecirc;m nữa phần d&acirc;y đeo x&iacute;ch phối da c&oacute; thể th&aacute;o rời tiện dụng, linh hoạt với từng mục đ&iacute;ch sử dụng v&agrave; sự phối kết hợp trang phục của ph&aacute;i đẹp hiện đại &ndash; tinh tế, thanh lịch nhưng kh&ocirc;ng k&eacute;m phần trẻ trung, rạng ngời.</p>', 1, '16000000', 'a5a93e711f.jpg'),
(49, 'Túi Michael Kors Ava', '', '10', '0', '10', 18, 21, '<p>T&uacute;i Michael Kors Ava được chế t&aacute;c với chất liệu da Saffiano - da b&ecirc; cao cấp với phần cứng m&agrave;u v&agrave;ng tăng th&ecirc;m sự nổi bật v&agrave; sang trọng cho chiếc t&uacute;i.&nbsp;</p>', 1, '4000000', '769c7c631a.jpg'),
(50, 'Túi Michael Kors ', '', '10', '0', '10', 18, 21, '<p>&ndash; Kiểu d&aacute;ng h&igrave;nh hộp tr&ograve;n trẻ trung, ấn tượng<br />&ndash; Họa tiết thuyền v&agrave; biển được th&ecirc;u v&agrave; phối da kim tuyến<br />&ndash; C&aacute;c chi tiết kim loại s&aacute;ng b&oacute;ng, mạ chống rỉ v&agrave; dập logo h&atilde;ng<br />&ndash; C&oacute; d&acirc;y đeo cheo chắc chắn.</p>', 1, '65000000', 'f810b3b71a.jpg'),
(51, 'Túi Xách Chanel 21A Quilted Caviar Coco Handle Small Dark Beige', '', '10', '0', '10', 18, 22, '<p>T&uacute;i X&aacute;ch Chanel 21A Quilted Caviar Coco Handle Small Dark Beige l&agrave; chiếc t&uacute;i x&aacute;ch cao cấp đến từ thương hiệu Chanel nổi tiếng. Sở hữu thiết kế đẹp mắt, Chanel 21A Quilted Caviar Coco Handle Small Dark Beige mang đến cho người d&ugrave;ng vẻ sang trọng, s&agrave;nh điệu.</p>', 1, '98000000', '3cd68bf0eb.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(12, 'siler7', 'a1b07ad09d.jpg', 1),
(13, 'siler1', '8e62b6254d.jpg', 1),
(14, 'siler2', 'b93baaaebb.jpg', 1),
(15, 'siler3', 'b24cc06290.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2021-07-01 18:31:22'),
(2, 21, '10', '2021-06-30 18:32:03'),
(3, 21, '3', '2021-07-06 18:42:59'),
(4, 20, '5', '2021-07-07 18:51:40'),
(5, 1, '10', '2022-01-01 02:39:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(6, 7, 38, 'Túi Xách Gucci Horsebit 1955 small shoulder bag', '49000000', 'b0e9124207.jpg'),
(7, 7, 44, 'Balo MCM AUthentic', '67000000', '3ce60f1bbd.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
