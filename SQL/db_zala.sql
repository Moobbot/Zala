-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 04:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_zala`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuahang`
--

CREATE TABLE `cuahang` (
  `macuahang` int(11) NOT NULL,
  `tencuahang` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `mataikhoan` int(11) DEFAULT NULL,
  `dienthoai` varchar(50) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuahang`
--

INSERT INTO `cuahang` (`macuahang`, `tencuahang`, `diachi`, `mataikhoan`, `dienthoai`, `img`) VALUES
(1, 'Giặt là Eco Green', 'Cơ sở 1: Số 9 Đặng Văn Ngữ, Đống Đa, Hà Nội  ; Cơ sở 2: 22 Nguyễn Thượng Hiền, Hà Nội;  Cơ sở 3: GH5 CT17 Việt Hưng, Long Biên, Hà Nội', 2, '0888 482 868 & 0868 008 898', '[value-6]'),
(2, 'Japan Laundry', 'Cơ sở 1: 22/52 Tô Ngọc Vân, Quảng An, Tây Hồ, Hà Nội; Cơ sở 2: Tòa nhà E1 Ciputra, Hà Nội', 3, '0936 486 958 & 024 6291 16161', '[value-6]'),
(3, 'Công ty giặt là Bảo Tâm', 'số 104 Phố Thái Thịnh, Đống Đa, Hà Nội', 4, '0989 097 830 & 024 3537 1075 & 0933 266 698', '[value-6]'),
(4, 'Tiệm Giặt Xanh', 'Cơ sở 1: 257 Khương Trung, Thanh Xuân, Hà Nội ; Cơ sở 2: 290 Nguyễn Huy Tưởng, Thanh Xuân, Hà Nội', 5, '0903 386 933 & 0396 968 933', '[value-6]'),
(5, 'Giặt là Thu Hương', 'Ngõ 201 Đường Phúc Lợi, Phúc Lợi, Long Biên, Hà Nội', 6, '0366 446 262', '[value-6]');

-- --------------------------------------------------------

--
-- Table structure for table `dichvule`
--

CREATE TABLE `dichvule` (
  `madichvu` int(11) NOT NULL,
  `tendichvu` varchar(255) DEFAULT 'Dịch vụ theo cân',
  `macuahang` int(11) NOT NULL,
  `giatien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dichvule`
--

INSERT INTO `dichvule` (`madichvu`, `tendichvu`, `macuahang`, `giatien`) VALUES
(1, 'Dịch vụ theo cân', 3, 5000),
(2, 'Dịch vụ theo cân', 1, 8000),
(3, 'Dịch vụ theo cân', 5, 8800),
(4, 'Dịch vụ theo cân', 2, 9000),
(5, 'Dịch vụ theo cân', 4, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `goidichvu`
--

CREATE TABLE `goidichvu` (
  `magoidichvu` int(11) NOT NULL,
  `tengoidichvu` varchar(255) NOT NULL,
  `dacdiem` text NOT NULL,
  `giatien` int(11) DEFAULT NULL,
  `tinhuuvviet` text DEFAULT NULL,
  `cauchuyen` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goidichvu`
--

INSERT INTO `goidichvu` (`magoidichvu`, `tengoidichvu`, `dacdiem`, `giatien`, `tinhuuvviet`, `cauchuyen`) VALUES
(1, 'BASIC 1', '\"🔹 Giặt sấy tối đa 5 lần/tháng\r\n🔹 Số lượng: Tối đa 10kg/ gói/tháng\r\n🔹 Chỉ 130.000đ/gói\r\n🔹 Giảm 30% phí vận chuyển cho lần đầu mua gói\"', NULL, '- Giao nhận hàng tận nơi\r\n- Kiểm soát tiến trình giao - giặt - nhận\r\n- Giặt sấy, đóng gói', 'Độc thân \"quyến rũ\", lo gì chuyện \"giặt giũ\". Quần áo mặc xong treo đó, để ZALA lo'),
(2, 'BASIC 2', '\"🔹 Giặt sấy tối đa 8 lần/tháng 🔹 Số lượng: Tối đa 30kg/ gói/tháng 🔹 Chỉ 360.000đ/gói 🔹 Giảm 50% phí vận chuyển\"', NULL, '- Giao nhận hàng tận nơi\n- Kiểm soát tiến trình giao - giặt - nhận\n- Giặt sấy, đóng gói\n', 'Cả ngày làm mệt, về nhà bừa bộn, quần áo chất đống nhìn muốn buông xuôi. Hãy để ZALA giúp các mẹ 1 tay chăm sóc gia đình. Yêu bản thân là yêu chính gia đình mình.'),
(3, 'PREMIUM', '\"🔹 Giặt theo yêu cầu tối đa 8 lần/tháng 🔹 Số lượng: 50kg/ gói/tháng 🔹 Chỉ 600.000đ/gói 🔹 Giảm 50% phí vận chuyển\"', NULL, '- Giao nhận hàng tận nơi\n- Kiểm soát tiến trình giao - giặt - nhận\n- Lọc sản phẩm giặt\n- Giặt đa công nghệ (giặt khô, giặt sấy...)\n- Nhận các sản phẩm vải gia dụng: thảm, rèm cửa ...', 'Spa kỹ hơn cho các \"cục cưng\". Nhà không có gì ngoài quần áo \"hịn\" nhưng lại không biết cách chăm sóc, ZALA kiếm chuyên gia cho.');

-- --------------------------------------------------------

--
-- Table structure for table `loaigoi`
--

CREATE TABLE `loaigoi` (
  `maloaiigoi` int(11) NOT NULL,
  `tenloaigoi` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giatien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `manguoidung` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `mataikhoan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`manguoidung`, `hoten`, `diachi`, `mataikhoan`) VALUES
(1, 'Nguyễn Văn Một', 'Hà Nam', 7),
(2, 'Nguyễn Văn Hai', 'Nam Định', 8),
(3, 'Lương Văn Ba', 'Quảng Nam', 9);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `Mataikhoan` int(11) NOT NULL,
  `Tentaikhoan` varchar(255) NOT NULL,
  `Matkhau` varchar(255) NOT NULL,
  `Ngaytao` date DEFAULT NULL,
  `Capdo` tinyint(4) NOT NULL,
  `Trangthai` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`Mataikhoan`, `Tentaikhoan`, `Matkhau`, `Ngaytao`, `Capdo`, `Trangthai`) VALUES
(1, 'admin', '123', '2022-02-21', 1, b'1'),
(2, 'ct01', '123456', '2022-01-09', 2, b'1'),
(3, 'ct02', '123456', '2022-01-09', 2, b'1'),
(4, 'ct03', '123456', '2022-01-09', 2, b'1'),
(5, 'ct04', '123456', '2022-01-09', 2, b'1'),
(6, 'ct05', '123456', '2022-01-09', 2, b'1'),
(7, 'kh01', '123456', '2022-01-09', 3, b'1'),
(8, 'kh02', '123456', '2022-01-09', 3, b'1'),
(9, 'kh03', '123456', '2022-01-09', 3, b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuahang`
--
ALTER TABLE `cuahang`
  ADD PRIMARY KEY (`macuahang`),
  ADD UNIQUE KEY `tencuahang` (`tencuahang`),
  ADD KEY `mataikhoan` (`mataikhoan`);

--
-- Indexes for table `dichvule`
--
ALTER TABLE `dichvule`
  ADD PRIMARY KEY (`madichvu`),
  ADD KEY `macuahang` (`macuahang`);

--
-- Indexes for table `goidichvu`
--
ALTER TABLE `goidichvu`
  ADD PRIMARY KEY (`magoidichvu`),
  ADD UNIQUE KEY `tengoidichvu` (`tengoidichvu`);

--
-- Indexes for table `loaigoi`
--
ALTER TABLE `loaigoi`
  ADD PRIMARY KEY (`maloaiigoi`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`manguoidung`),
  ADD UNIQUE KEY `hoten` (`hoten`),
  ADD KEY `mataikhoan` (`mataikhoan`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`Mataikhoan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuahang`
--
ALTER TABLE `cuahang`
  MODIFY `macuahang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dichvule`
--
ALTER TABLE `dichvule`
  MODIFY `madichvu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `goidichvu`
--
ALTER TABLE `goidichvu`
  MODIFY `magoidichvu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loaigoi`
--
ALTER TABLE `loaigoi`
  MODIFY `maloaiigoi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `manguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `Mataikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuahang`
--
ALTER TABLE `cuahang`
  ADD CONSTRAINT `cuahang_ibfk_1` FOREIGN KEY (`mataikhoan`) REFERENCES `taikhoan` (`Mataikhoan`);

--
-- Constraints for table `dichvule`
--
ALTER TABLE `dichvule`
  ADD CONSTRAINT `dichvule_ibfk_1` FOREIGN KEY (`macuahang`) REFERENCES `cuahang` (`macuahang`);

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`mataikhoan`) REFERENCES `taikhoan` (`Mataikhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

