-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 05:36 PM
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
-- Database: `zozo_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `component_id`
--

CREATE TABLE `component_id` (
  `comp_id` int(11) NOT NULL,
  `comp_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `component_id`
--

INSERT INTO `component_id` (`comp_id`, `comp_name`) VALUES
(1, 'cpu'),
(2, 'cpu_cooler'),
(3, 'graphics_card'),
(4, 'memory'),
(5, 'motherboard'),
(6, 'pc_case'),
(7, 'psu'),
(8, 'storage');

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `image`, `name`, `price`, `details`) VALUES
(2, 'https://www.amd.com/system/files/2022-04/1268900-ryzen-5000-series-pib-1260x709_0.png', 'AMD Ryzen 7 5800X3D', 90000, 'Family-name=AMD Ryzenâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIe 4.0;Default Tdp=105W'),
(3, 'https://cdn.mos.cms.futurecdn.net/rzYAhaR8kdhkruVRLuEBjc-1200-80.jpg', 'AMD Ryzen 9 5900 (OEM Only)', 150000, 'Family-name=AMD Ryzenâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIe 4.0;Default Tdp=65W'),
(5, '', 'AMD Ryzen Threadripper PRO 3995WX', 300000, 'Family-name=AMD Ryzenâ„¢ PRO Processors;Cpu Socket=sWRX8;PciE Version=PCIe 4.0;Default Tdp=280W'),
(6, '', 'AMD Ryzen Threadripper PRO 3975WX', 280000, 'Family-name=AMD Ryzenâ„¢ PRO Processors;Cpu Socket=sWRX8;PciE Version=PCIe 4.0;Default Tdp=280W'),
(7, '', 'AMD Ryzen Threadripper PRO 3955WX', 335000, 'Family-name=AMD Ryzenâ„¢ PRO Processors;Cpu Socket=sWRX8;PciE Version=PCIe 4.0;Default Tdp=280W'),
(8, '', 'AMD Ryzen 7 5700GE', 180000, 'Family-name=AMD Ryzenâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=35W'),
(9, '', 'AMD Ryzen 5 5600GE', 210000, 'Family-name=AMD Ryzenâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=35W'),
(10, '', 'AMD Athlon 320GE', 20000, 'Family-name=AMD Athlonâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=35W'),
(11, '', 'AMD Athlon 300GE', 30000, 'Family-name=AMD Athlonâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=35W'),
(12, '', 'AMD Ryzen 5 2600E', 15000, 'Family-name=AMD Ryzenâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIe 3.0;Default Tdp=45W'),
(13, '', 'AMD Ryzen 5 2500X', 20000, 'Family-name=AMD Ryzenâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIe 3.0;Default Tdp=65W'),
(14, '', 'AMD Ryzen 9 PRO 3900', 90000, 'Family-name=AMD Ryzenâ„¢ PRO Processors;Cpu Socket=AM4;PciE Version=PCIe 4.0;Default Tdp=65W'),
(15, '', 'AMD Ryzen 7 PRO 3700', 70000, 'Family-name=AMD Ryzenâ„¢ PRO Processors;Cpu Socket=AM4;PciE Version=PCIe 4.0;Default Tdp=65W'),
(16, '', 'AMD Ryzen 3 PRO 1300', 9000, 'Family-name=AMD Ryzenâ„¢ PRO Processors;Cpu Socket=AM4;PciE Version=PCIe 3.0 x16;Default Tdp=65W'),
(17, '', 'AMD Ryzen 3 PRO 1200', 8500, 'Family-name=AMD Ryzenâ„¢ PRO Processors;Cpu Socket=AM4;PciE Version=PCIe 3.0 x16;Default Tdp=65W'),
(18, '', 'AMD Ryzen 5 PRO 3400G', 25000, 'Family-name=AMD Ryzenâ„¢ PRO Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=65W'),
(19, '', 'AMD Ryzen 7 4700G (OEM Only)', 55000, 'Family-name=AMD Ryzenâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=65W'),
(20, '', 'AMD Athlon Gold 3150GE (OEM Only)', 30000, 'Family-name=AMD Athlonâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=35W'),
(21, '', 'AMD Athlon Gold 3150G (OEM Only)', 32000, 'Family-name=AMD Athlonâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=65W'),
(22, '', 'AMD Athlon 320GE', 23000, 'Family-name=AMD Athlonâ„¢ Processors;Cpu Socket=AM4;PciE Version=PCIeÂ® 3.0;Default Tdp=35W'),
(23, '', 'E-2386G', 22000, 'Family-name=Intel® Xeon® E Processor;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=95 W'),
(24, '', 'E-2388G', 22000, 'Family-name=Intel® Xeon® E Processor;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=95 W'),
(25, '', 'E-2378G', 21000, 'Family-name=Intel® Xeon® E Processor;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=80 W'),
(26, '', 'E-2374G', 21500, 'Family-name=Intel® Xeon® E Processor;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=80 W'),
(27, '', 'E-2356G', 19000, 'Family-name=Intel® Xeon® E Processor;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=80 W'),
(28, '', 'i9-12900', 120000, 'Family-name=12th Generation Intel® Core™ i9 Processors;Cpu Socket=FCLGA1700;PciE Version=5.0 and 4.0;Default Tdp=202 W'),
(29, '', 'i9-11900K', 100000, 'Family-name=11th Generation Intel® Core™ i9 Processors;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=125 W'),
(30, '', 'i9-9900KS', 95000, 'Family-name=9th Generation Intel® Core™ i9 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=127 W'),
(31, '', 'i7-12700', 80000, 'Family-name=12th Generation Intel® Core™ i7 Processors;Cpu Socket=FCLGA1700;PciE Version=5.0 and 4.0;Default Tdp=180 W'),
(32, '', 'i7-11700K', 75000, 'Family-name=11th Generation Intel® Core™ i7 Processors;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=125 W'),
(33, '', 'i7-9700', 66000, 'Family-name=9th Generation Intel® Core™ i7 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(34, '', 'i7-8700', 50000, 'Family-name=8th Generation Intel® Core™ i7 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(35, '', 'i7-6700', 48000, 'Family-name=6th Generation Intel® Core™ i7 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(36, '', 'i7-5775R', 41000, 'Family-name=5th Generation Intel® Core™ i7 Processors;Cpu Socket=FCBGA1364;PciE Version=3.0;Default Tdp=65 W'),
(37, '', 'i7-4790K', 30000, 'Family-name=4th Generation Intel® Core™ i7 Processors;Cpu Socket=FCLGA1150;PciE Version=3.0;Default Tdp=88 W'),
(38, '', 'i5-12400', 44000, 'Family-name=12th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1700;PciE Version=5.0 and 4.0;Default Tdp=117 W'),
(39, '', 'i5-12600', 40000, 'Family-name=12th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1700;PciE Version=5.0 and 4.0;Default Tdp=117 W'),
(40, '', 'i5-11400', 40000, 'Family-name=11th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=65 W'),
(41, '', 'i5-10505', 25000, 'Family-name=10th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1200;PciE Version=3.0;Default Tdp=65 W'),
(42, '', 'i5-9600', 38000, 'Family-name=9th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(43, '', 'i5-9500', 37000, 'Family-name=9th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(44, '', 'i5-11600T', 33000, 'Family-name=11th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=35 W'),
(45, '', 'i5-11400', 35000, 'Family-name=11th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1200;PciE Version=4.0;Default Tdp=65 W'),
(46, '', 'i5-9600', 31000, 'Family-name=9th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(47, '', 'i5-9500', 32000, 'Family-name=9th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(48, '', 'i5-9400', 30000, 'Family-name=9th Generation Intel® Core™ i5 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(49, '', 'i3-12100T', 25000, 'Family-name=12th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1700;PciE Version=5.0 and 4.0;Default Tdp=69 W'),
(50, '', 'i3-12300T', 26000, 'Family-name=12th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1700;PciE Version=5.0 and 4.0;Default Tdp=69 W'),
(51, '', 'i3-12100', 24500, 'Family-name=12th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1700;PciE Version=5.0 and 4.0;Default Tdp=89 W'),
(52, '', 'i3-10325', 20000, 'Family-name=10th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1200;PciE Version=3.0;Default Tdp=65 W'),
(53, '', 'i3-10305', 21000, 'Family-name=10th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1200;PciE Version=3.0;Default Tdp=65 W'),
(54, '', 'i3-10105', 19000, 'Family-name=10th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1200;PciE Version=3.0;Default Tdp=65 W'),
(55, '', 'i3-9320', 18000, 'Family-name=9th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=62 W'),
(56, '', 'i3-9100', 18000, 'Family-name=9th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=65 W'),
(57, '', 'i3-9300', 17500, 'Family-name=9th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=62 W'),
(58, '', 'i3-8300', 17000, 'Family-name=8th Generation Intel® Core™ i3 Processors;Cpu Socket=FCLGA1151;PciE Version=3.0;Default Tdp=62 W');

-- --------------------------------------------------------

--
-- Table structure for table `cpu_cooler`
--

CREATE TABLE `cpu_cooler` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cpu_cooler`
--

INSERT INTO `cpu_cooler` (`id`, `image`, `name`, `price`, `details`) VALUES
(103, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-50-tr.jpg', 'Freezer 50 TR', 20000, 'Brand=Arctic;Height=165mm;Width=149.5mm;Depth=147.8mm;AMD AM4=No;AMD TR4=Yes;AMD SP3=Yes;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(104, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-7-x.jpg', 'Freezer 7 X', 42000, 'Brand=Arctic;Height=132.5mm;Width=74.3mm;Depth=110.5mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No'),
(105, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-7-x-co-e1590298381511.jpg', 'Freezer 7 X CO', 28000, 'Brand=Arctic;Height=132.5mm;Width=74.3mm;Depth=110.5mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No'),
(106, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-34.jpg', 'Freezer 34', 20000, 'Brand=Arctic;Height=157mm;Width=124mm;Depth=86mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(107, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-34-co-e1590298326183.jpg', 'Freezer 34 CO', 44000, 'Brand=Arctic;Height=157mm;Width=124mm;Depth=86mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(108, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-34-esports-duo.jpg', 'Freezer 34 eSports DUO', 10000, 'Brand=Arctic;Height=157mm;Width=124mm;Depth=103mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(109, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-34-esports.jpg', 'Freezer 34 eSports', 2000, 'Brand=Arctic;Height=157mm;Width=124mm;Depth=88mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(110, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-34-esports-one.jpg', 'Freezer 34 eSports ONE', 10000, 'Brand=Arctic;Height=150mm;Width=123mm;Depth=88mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(111, 'http://thegamingstuff.com/wp-content/uploads/2020/05/arctic-freezer-12-e1590298168487.jpg', 'Freezer 12', 24000, 'Brand=Arctic;Height=130mm;Width=108mm;Depth=90mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(112, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-dark-rock-pro-4.jpg', 'Dark Rock Pro 4', 16000, 'Brand=be quiet!;Height=162.8mm;Width=136mm;Depth=145.7mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(113, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-dark-rock-4.jpg', 'Dark Rock 4', 26000, 'Brand=be quiet!;Height=159.4mm;Width=136mm;Depth=96.3mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(114, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-dark-rock-slim.jpg', 'Dark Rock Slim', 46000, 'Brand=be quiet!;Height=159.4mm;Width=127mm;Depth=72mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(115, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-dark-rock-tf.jpg', 'Dark Rock TF', 10000, 'Brand=be quiet!;Height=130.8mm;Width=140mm;Depth=162.6mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(116, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-dark-rock-pro-tr4.jpg', 'Dark Rock Pro TR4', 8000, 'Brand=be quiet!;Height=162.8mm;Width=136mm;Depth=145.7mm;AMD AM4=No;AMD TR4=Yes;AMD SP3=Yes;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(117, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-shadow-rock-3.jpg', 'Shadow Rock 3', 24000, 'Brand=be quiet!;Height=163mm;Width=130mm;Depth=121mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(118, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-shadow-rock-slim.jpg', 'Shadow Rock Slim', 42000, 'Brand=be quiet!;Height=161mm;Width=137mm;Depth=74mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(119, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-shadow-rock-tf-2.jpg', 'Shadow Rock TF 2', 22000, 'Brand=be quiet!;Height=112mm;Width=165mm;Depth=137mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(120, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-shadow-rock-lp.jpg', 'Shadow Rock LP', 24000, 'Brand=be quiet!;Height=75.4mm;Width=122mm;Depth=134mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No'),
(121, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-pure-rock-2.jpg', 'Pure Rock 2', 18000, 'Brand=be quiet!;Height=155mm;Width=121mm;Depth=87mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(122, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-pure-rock-2-black.jpg', 'Pure Rock 2 Black', 16000, 'Brand=be quiet!;Height=155mm;Width=121mm;Depth=87mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(123, 'http://thegamingstuff.com/wp-content/uploads/2020/05/be-quiet-pure-rock-slim.jpg', 'Pure Rock Slim', 6000, 'Brand=be quiet!;Height=124.8mm;Width=87mm;Depth=81.8mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No'),
(124, 'http://thegamingstuff.com/wp-content/uploads/2020/05/cooler-master-masterair-g200p.jpg', 'MasterAir G200P', 28000, 'Brand=Cooler Master;Height=39.4mm;Width=92mm;Depth=95mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No'),
(125, 'http://thegamingstuff.com/wp-content/uploads/2020/07/coolermaster-hyper-t2.jpg', 'Hyper T2', 28000, 'Brand=Cooler Master;Height=140mm;Width=93mm;Depth=80mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No'),
(126, 'http://thegamingstuff.com/wp-content/uploads/2020/07/coolermaster-hyper-212-black-edition.jpg', 'Hyper 212 Black Edition', 6000, 'Brand=Cooler Master;Height=158.8mm;Width=77mm;Depth=123mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(127, 'http://thegamingstuff.com/wp-content/uploads/2020/07/coolermaster-hyper-212-evo.jpg', 'Hyper 212 Evo', 42000, 'Brand=Cooler Master;Height=158.8mm;Width=120mm;Depth=77mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(128, 'http://thegamingstuff.com/wp-content/uploads/2020/05/corsair-a500.jpg', 'A500', 42000, 'Brand=CORSAIR;Height=169mm;Width=144mm;Depth=171mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(129, 'http://thegamingstuff.com/wp-content/uploads/2020/05/gigabyte-xtc700.jpg', 'XTC700', 22000, 'Brand=GIGABYTE;Height=169mm;Width=109mm;Depth=139mm;AMD AM4=No;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No'),
(130, 'http://thegamingstuff.com/wp-content/uploads/2020/05/gigabyte-atc700.jpg', 'ATC700', 48000, 'Brand=GIGABYTE;Height=169mm;Width=109mm;Depth=139mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(131, 'http://thegamingstuff.com/wp-content/uploads/2020/05/gigabyte-atc800.jpg', 'ATC800', 22000, 'Brand=GIGABYTE;Height=163mm;Width=107mm;Depth=139mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(132, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-d15.jpg', 'NH-D15', 18000, 'Brand=Noctua;Height=165mm;Width=150mm;Depth=161mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(133, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-d15-chromax-black-e1590298788803.jpg', 'NH-D15 chromax.black', 32000, 'Brand=Noctua;Height=165mm;Width=150mm;Depth=161mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(134, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-d15.jpg', 'NH-D15 SE-AM4', 38000, 'Brand=Noctua;Height=165mm;Width=150mm;Depth=161mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(135, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-d15s.jpg', 'NH-D15S', 10000, 'Brand=Noctua;Height=160mm;Width=150mm;Depth=135mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(136, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-u14s.jpg', 'NH-U14S', 44000, 'Brand=Noctua;Height=165mm;Width=150mm;Depth=78mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(137, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-u14s-TR4-SP3.jpg', 'NH-U14S TR4-SP3', 16000, 'Brand=Noctua;Height=165mm;Width=150mm;Depth=78mm;AMD AM4=No;AMD TR4=Yes;AMD SP3=Yes;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(138, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-NH-U12A.jpg', 'NH-U12A', 34000, 'Brand=Noctua;Height=158mm;Width=125mm;Depth=112mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(139, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-u12s-se-am4.jpg', 'NH-U12S SE-AM4', 4000, 'Brand=Noctua;Height=158mm;Width=125mm;Depth=71mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(140, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-u12s-se-am4.jpg', 'NH-U12S', 46000, 'Brand=Noctua;Height=158mm;Width=125mm;Depth=71mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(141, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-u12s-chromax-black.jpg', 'NH-U12S chromax.black', 6000, 'Brand=Noctua;Height=158mm;Width=125mm;Depth=71mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(142, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-u12s-tr4-sp3.jpg', 'NH-U12S TR4-SP3', 2000, 'Brand=Noctua;Height=158mm;Width=125mm;Depth=71mm;AMD AM4=No;AMD TR4=Yes;AMD SP3=Yes;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(143, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-u9s.jpg', 'NH-U9S', 26000, 'Brand=Noctua;Height=125mm;Width=95mm;Depth=95mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(144, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-u9s-tr4-sp3.jpg', 'NH-U9 TR4-SP3', 12000, 'Brand=Noctua;Height=125mm;Width=95mm;Depth=120mm;AMD AM4=No;AMD TR4=Yes;AMD SP3=Yes;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(145, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-d9l.jpg', 'NH-D9L', 8000, 'Brand=Noctua;Height=110mm;Width=95mm;Depth=95mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(146, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-c14s.jpg', 'NH-C14S', 20000, 'Brand=Noctua;Height=142mm;Width=140mm;Depth=163mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(147, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-l12s.jpg', 'NH-L12S', 28000, 'Brand=Noctua;Height=70mm;Width=128mm;Depth=146mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(148, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-l9x65.jpg', 'NH-L9x65', 42000, 'Brand=Noctua;Height=65mm;Width=95mm;Depth=95mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=Yes'),
(149, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-l9x65.jpg', 'NH-L9x65 SE-AM4', 46000, 'Brand=Noctua;Height=65mm;Width=95mm;Depth=95mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(150, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-l9a-am4.jpg', 'NH-L9a-AM4', 18000, 'Brand=Noctua;Height=37mm;Width=114mm;Depth=92mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(151, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-l9a-am4-chromax-black.jpg', 'NH-L9a-AM4 chromax.black', 44000, 'Brand=Noctua;Height=37mm;Width=114mm;Depth=92mm;AMD AM4=Yes;AMD TR4=No;AMD SP3=No;LGA 115X=No;LGA 1200=No;LGA 2066=No'),
(152, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-l9i.jpg', 'NH-L9i', 16000, 'Brand=Noctua;Height=37mm;Width=95mm;Depth=95mm;AMD AM4=No;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No'),
(153, 'http://thegamingstuff.com/wp-content/uploads/2020/05/noctua-nh-l9i-chromax-black.jpg', 'NH-L9i chromax.black', 20000, 'Brand=Noctua;Height=37mm;Width=95mm;Depth=95mm;AMD AM4=No;AMD TR4=No;AMD SP3=No;LGA 115X=Yes;LGA 1200=Yes;LGA 2066=No');

-- --------------------------------------------------------

--
-- Table structure for table `graphics_card`
--

CREATE TABLE `graphics_card` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graphics_card`
--

INSERT INTO `graphics_card` (`id`, `image`, `name`, `price`, `details`) VALUES
(201, 'https://cdn.videocardz.net/cache/ec9299635db2dbaf77f531348ca5851b-630x540.jpg', ' POINT OF VIEW GeForce 210 1GB', 215000, 'Manufacturer=Point of View;Original Series=GeForce 200;Based On= GeForce 210;Released After=October 12th, 2009'),
(202, 'https://cdn.videocardz.net/cache/bc229be37211a55b21acdb148442b8e4-630x540.jpg', ' EVGA GeForce 8800 GTX 768MB ACS3', 280000, 'Manufacturer=EVGA;Original Series=GeForce 8;Based On= GeForce 8800 GTX;Released After=November 8th, 2006'),
(203, 'https://cdn.videocardz.net/cache/715ccc532ace4d25e020acdba4c23e04-630x540.jpg', ' KUROUTOSHIKOU Radeon HD 5770 1GB', 395000, 'Manufacturer=Kuroutoshikou;Original Series=Radeon HD 5000;Based On= Radeon HD 5770;Released After=October 13th, 2009;PCB Code=109-C01037-00;P/N Code=102-C01001-00;Model=AMD C010 SKU 001'),
(204, 'https://cdn.videocardz.net/cache/2bbec421fcd12da5388b64aad63ee0a2-630x540.jpg', ' MANLI GeForce GTX 1660 SUPER 6GB Gallardo', 300000, 'Manufacturer=Manli;Original Series=GeForce 16;Based On= GeForce GTX 1660 SUPER;Custom Series=MANLI Gallardo;Released After=October 29th, 2019'),
(205, 'https://cdn.videocardz.net/cache/3591852f2f2ee3e3e06a4c5284916778-630x540.jpg', ' INNO3D GeForce RTX 3060 Ti 8GB TWIN X2', 80000, 'Manufacturer=Inno3D;Original Series=GeForce 30;Based On= GeForce RTX 3060 Ti;Custom Series=INNO3D TWIN;Released After=December 2nd, 2020'),
(206, 'https://cdn.videocardz.net/cache/43a46bc0b34da101683a81b5c41cc0df-630x540.jpg', ' EVGA GeForce GTX 780 Ti 3GB Dual Classified w/ EVGA ACX Cooler', 250000, 'Manufacturer=EVGA;Original Series=GeForce 700;Based On= GeForce GTX 780 Ti;Custom Series=EVGA Classified;Cooling Solution=EVGA ACX;Released After=November 7th, 2013'),
(207, 'https://cdn.videocardz.net/cache/6a3176aa70a1f76efd23644d772f331c-630x540.jpg', ' Colorful GeForce GT 220 512MB DDR3 N12', 370000, 'Manufacturer=Colorful;Original Series=GeForce 200;Based On= GeForce GT 220;Released After=January 26th, 2010'),
(208, 'https://cdn.videocardz.net/cache/085af415000f106e1f24da17c00f4e14-630x540.jpg', ' MSI GeForce GTX 480 1536MB', 390000, 'Manufacturer=MSI;Original Series=GeForce 400;Based On= GeForce GTX 480;Released After=March 26th, 2010'),
(209, 'https://cdn.videocardz.net/cache/4aa726695df97519b4f64afd04466340-630x540.jpg', ' PALIT GeForce GTX 1080 Ti 11GB Founders Edition', 160000, 'Manufacturer=Palit;Original Series=GeForce 10;Based On= GeForce GTX 1080 Ti;Released After=March 10th, 2017;PCB Code=180-1G611-DAAA;P/N Code=699-1G611-0010;Model=NVIDIA PG611 SKU 010'),
(210, 'https://cdn.videocardz.net/cache/5a94dcceb5892bb5278295cafcf8cd31-630x540.jpg', ' MSI GeForce GTX 1070 Ti 8GB GAMING', 245000, 'Manufacturer=MSI;Original Series=GeForce 10;Based On= GeForce GTX 1070 Ti;Custom Series=MSI GAMING;Cooling Solution=MSI TwinFrozr VI;Released After=November 2nd, 2017'),
(211, 'https://cdn.videocardz.net/cache/52daa17a306006563a5361c316f87c7b-630x540.jpg', ' ZOTAC GeForce GT 610 1GB', 180000, 'Manufacturer=ZOTAC;Original Series=GeForce 600;Based On= GeForce GT 610;Released After=April 3rd, 2012'),
(212, 'https://cdn.videocardz.net/cache/eb1f2be6bff2bf8262b1fd1e925b5bdb-630x540.jpg', ' MAXSUN GeForce RTX 3060 12GB Big Mac', 95000, 'Manufacturer=MaxSun;Original Series=GeForce 30;Based On= GeForce RTX 3060;Released After=February 25th, 2021'),
(213, 'https://cdn.videocardz.net/cache/7574e37143ee6a7a28998977d0ce4c3f-630x540.jpg', ' NVIDIA GeForce GTS 450', 305000, 'Manufacturer=NVIDIA;Original Series=GeForce 400;Release Date=September 13th, 2010;Launch Price=$129 USD;P/N Code=600-11060-0011;S/N Code=P1060-A02;Model=NVIDIA P1060 SKU 011'),
(214, 'https://cdn.videocardz.net/cache/261eff88eadeabe977f83b45665cd618-630x540.jpg', ' MSI GeForce GTS 450 512MB', 170000, 'Manufacturer=MSI;Original Series=GeForce 400;Based On= GeForce GTS 450;Released After=September 13th, 2010'),
(215, 'https://cdn.videocardz.net/cache/a44d5522e404aad1fae3376a712c640f-630x540.jpg', ' MSI GeForce RTX 3070 LHR 8GB VENTUS 3X', 375000, 'Manufacturer=MSI;Original Series=GeForce 30;Based On= GeForce RTX 3070 LHR;Custom Series=MSI VENTUS;Released After=May 8th, 2021'),
(216, 'https://cdn.videocardz.net/cache/47f7c3c40b04bea1bb893a5b43f53598-630x540.jpg', ' INNO3D GeForce RTX 3080 LHR 12GB iChill Frostbite', 120000, 'Manufacturer=Inno3D;Original Series=GeForce 30;Based On= GeForce RTX 3080 LHR 12GB;Custom Series=INNO3D iChill;Released After=January 11th, 2022'),
(217, 'https://cdn.videocardz.net/cache/e7c90ff2df64190196a688ab6e1e3f2b-630x540.jpg', ' MSI GeForce GTS 250 512MB TWIN FROZR', 230000, 'Manufacturer=MSI;Original Series=GeForce 200;Based On= GeForce GTS 250;Released After=March 4th, 2009'),
(218, 'https://cdn.videocardz.net/cache/65204d4dc66908ab785e93b1a70942ae-630x540.jpg', ' INNO3D GeForce RTX 2080 Ti 11GB TWIN X2', 155000, 'Manufacturer=Inno3D;Original Series=GeForce 20;Based On= GeForce RTX 2080 Ti;Released After=September 20th, 2018'),
(219, 'https://cdn.videocardz.net/cache/ad6bf2081b803e4150ce1179a6cfec1f-630x540.jpg', ' NVIDIA GeForce GTS 250', 190000, 'Manufacturer=NVIDIA;Original Series=GeForce 200;Release Date=March 4th, 2009;Launch Price=$199 USD;PCB Code=180-10391-0002;S/N Code=P391-A00;Board Model=NVIDIA P391'),
(220, 'https://cdn.videocardz.net/cache/bace1d1361ca55cf11e8c50266678c52-630x540.jpg', ' EVGA GeForce GTX 460 1GB FTW', 255000, 'Manufacturer=EVGA;Original Series=GeForce 400;Based On= GeForce GTX 460;Custom Series=EVGA FTW (For The Win);Released After=July 12th, 2010'),
(221, 'https://cdn.videocardz.net/cache/38c94eca8918290cf3f3cc3c9c4e9de2-630x540.jpg', ' MSI GeForce RTX 3080 Ti 12GB SUPRIM', 100000, 'Manufacturer=MSI;Original Series=GeForce 30;Based On= GeForce RTX 3080 Ti;Custom Series=MSI SUPRIM;Cooling Solution=MSI TRI FROZR 2S;Released After=June 3rd, 2021'),
(222, 'https://cdn.videocardz.net/cache/2f0ff22127c1d5766c577a5b7e60d131-630x540.jpg', ' MSI Radeon HD 4770 512MB CYCLONE', 95000, 'Manufacturer=MSI;Original Series=Radeon HD 4000;Based On= Radeon HD 4770;Custom Series=MSI CYCLONE;Released After=April 28th, 2009'),
(223, 'https://cdn.videocardz.net/cache/6cded161634d86bdd072dbdc6ad5a948-630x540.jpg', ' INNO3D GeForce RTX 2070 8GB TWIN X2 (DVI)', 190000, 'Manufacturer=Inno3D;Original Series=GeForce 20;Based On= GeForce RTX 2070;Released After=October 17th, 2018'),
(224, 'https://cdn.videocardz.net/cache/c5c125cf65d3864d2c5c57cbfa15a74e-630x540.jpg', ' EMTEK GeForce GTX 1070 8GB HV GAMER', 140000, 'Manufacturer=EMTek;Original Series=GeForce 10;Based On= GeForce GTX 1070;Custom Series=EMTEK HV;Released After=June 10th, 2016'),
(225, 'https://cdn.videocardz.net/cache/e52d52f7a5feefd78f0cf3c25adc84d8-630x540.jpg', ' COLORFIRE GeForce RTX 3060 LHR 12GB Vitality L', 310000, 'Manufacturer=ColorFire;Original Series=GeForce 30;Based On= GeForce RTX 3060 LHR;Released After=May 12th, 2021'),
(226, 'https://cdn.videocardz.net/cache/1ba0dad382dfe18348ec32fc65f3f3de-630x540.jpg', ' GAINWARD GeForce RTX 2080 8GB', 65000, 'Manufacturer=Gainward;Original Series=GeForce 20;Based On= GeForce RTX 2080;Released After=September 20th, 2018'),
(227, 'https://cdn.videocardz.net/cache/eb1ffafa8204bf7358e1c2d9be3726d0-630x540.jpg', ' COLORFUL GeForce 9800 GT 512MB', 165000, 'Manufacturer=Colorful;Original Series=GeForce 9;Based On= GeForce 9800 GT (55nm);Released After=July 21st, 2008'),
(228, 'https://cdn.videocardz.net/cache/396df6d1254f9a62c2a8ef56489a81c0-630x540.jpg', ' EMTEK GeForce GTX 1070 8GB XENON JetStream FF14 Edition', 95000, 'Manufacturer=EMTek;Original Series=GeForce 10;Based On= GeForce GTX 1070;Custom Series=EMTEK XENON;Released After=June 10th, 2016'),
(229, 'https://cdn.videocardz.net/cache/9ae0203587dac2c926858aed43463b0e-630x540.jpg', ' KFA2 GeForce 9500 GT 1GB', 175000, 'Manufacturer=KFA2;Original Series=GeForce 9;Based On= GeForce 9500 GT;Released After=July 29th, 2008'),
(230, 'https://cdn.videocardz.net/cache/3dad34506aea9bb540bec56199074544-630x540.jpg', ' PALIT GeForce RTX 3060 12GB Dual OC', 135000, 'Manufacturer=Palit;Original Series=GeForce 30;Based On= GeForce RTX 3060;Custom Series=PALIT Dual;Released After=February 25th, 2021'),
(231, 'https://cdn.videocardz.net/cache/2161cfc25aaa5a217d0e67a4a5e8a734-630x540.jpg', ' ZOTAC GeForce GTX 1060 6GB X-GAMING OC', 50000, 'Manufacturer=ZOTAC;Original Series=GeForce 10;Based On= GeForce GTX 1060 6GB;Released After=July 19th, 2016'),
(232, 'https://cdn.videocardz.net/cache/c0e56ce7da83bbf983e6e942e445a481-630x540.jpg', ' OCPC GeForce GTX 1660 SUPER 6GB LED', 205000, 'Manufacturer=OCPC;Original Series=GeForce 16;Based On= GeForce GTX 1660 SUPER;Released After=October 29th, 2019'),
(233, 'https://cdn.videocardz.net/cache/a446b1b338f1127752e30015e85ba576-630x540.jpg', ' ASUS GeForce RTX 3080 10GB EKWB', 310000, 'Manufacturer=ASUS;Original Series=GeForce 30;Based On= GeForce RTX 3080;Custom Series=ASUS EKWB;Released After=September 17th, 2020'),
(234, 'https://cdn.videocardz.net/cache/93eb4113b7fb1afeb710caa48bb0e2a2-630x540.jpg', ' ZOTAC GeForce GTX TITAN X 12GB ArcticStorm', 105000, 'Manufacturer=ZOTAC;Original Series=GeForce 900;Based On= GeForce GTX TITAN X;Released After=March 17th, 2015;PCB Code=180-1G600-1102;P/N Code=900-1G600-0000;Board Model=NVIDIA PG600'),
(235, 'https://cdn.videocardz.net/cache/ddd864f1589f422aa9df35fe6c40140d-630x540.jpg', ' MSI GeForce RTX 2070 8GB AERO', 305000, 'Manufacturer=MSI;Original Series=GeForce 20;Based On= GeForce RTX 2070;Custom Series=MSI Aero;Released After=October 17th, 2018'),
(236, 'https://cdn.videocardz.net/cache/f508d4e48c97c260697da3508d78b723-630x540.jpg', ' ZOTAC GeForce GTX 670 2GB', 320000, 'Manufacturer=ZOTAC;Original Series=GeForce 600;Based On= GeForce GTX 670;Released After=May 10th, 2013;PCB Code=180-12004-1102;P/N Code=600-12004-0005;S/N Code=P2004-A00;Model=NVIDIA P2004 SKU 005'),
(237, 'https://cdn.videocardz.net/cache/39b037c178ca00c6230b35e4c740f71f-630x540.jpg', ' MAXSUN Radeon RX 570 4GB', 345000, 'Manufacturer=MaxSun;Original Series=Radeon 500;Based On= Radeon RX 570;Released After=April 18th, 2017'),
(238, 'https://cdn.videocardz.net/cache/2bab7d26a8e7d46e1eba729f2a60a4c4-630x540.jpg', ' GIGABYTE GeForce GTX 1050 Ti 4GB Windforce', 90000, 'Manufacturer=Gigabyte;Original Series=GeForce 10;Based On= GeForce GTX 1050 Ti;Cooling Solution=Gigabyte WindForce 2X;Released After=October 25th, 2016'),
(239, 'https://cdn.videocardz.net/cache/954a0b2d6e9fe6bbc0eb34fd9e73c332-630x540.jpg', ' INNO3D GeForce GTX 1080 Ti 11GB iChill X4 Ultra', 315000, 'Manufacturer=Inno3D;Original Series=GeForce 10;Based On= GeForce GTX 1080 Ti;Custom Series=INNO3D iChill;Cooling Solution=INNO3D HerculeZ;Released After=March 10th, 2017'),
(240, 'https://cdn.videocardz.net/cache/a83ce6dc4894ef56cf2b332c8ad901f3-630x540.jpg', ' EVGA GeForce GTX 960 4GB GAMING', 60000, 'Manufacturer=EVGA;Original Series=GeForce 900;Based On= GeForce GTX 960;Released After=January 22nd, 2015'),
(241, 'https://cdn.videocardz.net/cache/267f3c90723ba708baaaecdfbc5bded2-630x540.jpg', ' MSI Radeon HD 6770 1GB Twin Frozr II OC', 245000, 'Manufacturer=MSI;Original Series=Radeon HD 6000;Based On= Radeon HD 6770;Custom Series=MSI Twin Frozr;Cooling Solution=MSI TwinFrozr II;Released After=January 21st, 2011'),
(242, 'https://cdn.videocardz.net/cache/628433a6f94c0cb21931a6322dcff167-630x540.jpg', ' XFX Radeon RX 590 GME 8GB Black Wolf', 85000, 'Manufacturer=XFX;Original Series=Radeon 500;Based On= Radeon RX 590 GME;Released After=March 3rd, 2020'),
(243, 'https://cdn.videocardz.net/cache/c393ff5eb0ca0c31ee7b9014afc0b0b0-630x540.jpg', ' Colorful GeForce GTX 750 2GB iGame Buri Slim', 300000, 'Manufacturer=Colorful;Original Series=GeForce 700;Based On= GeForce GTX 750;Custom Series=Colorful iGame;Released After=February 18th, 2014'),
(244, 'https://cdn.videocardz.net/cache/ba44f0929cad651cf162f8c66853dc69-630x540.jpg', ' ASUS Radeon RX 570 4GB ROG STRIX GAMING OC', 350000, 'Manufacturer=ASUS;Original Series=Radeon 500;Based On= Radeon RX 570;Custom Series=ASUS ROG STRIX;Released After=April 18th, 2017'),
(245, 'https://cdn.videocardz.net/cache/8446920106785cf38221e8fc4a13c4c0-630x540.jpg', ' MSI GeForce 6600 256MB ARES', 135000, 'Manufacturer=MSI;Original Series=GeForce 6;Based On= GeForce 6600 PCie;Released After=September 23rd, 2004'),
(246, 'https://cdn.videocardz.net/cache/9f98b5d11a0bf5d210347980d6f4c1e5-630x540.jpg', ' GIGABYTE Radeon RX 580 8GB GAMING BOX', 65000, 'Manufacturer=Gigabyte;Original Series=Radeon 500;Based On= Radeon RX 580;Custom Series=GIGABYTE GAMING;Released After=April 18th, 2017'),
(247, 'https://cdn.videocardz.net/cache/75af610e64370798d716d9d8eb7f6971-630x540.jpg', ' SAPPHIRE Radeon R7 360 2GB NITRO', 305000, 'Manufacturer=Sapphire;Original Series=Radeon 300;Based On= Radeon R7 360;Custom Series=Sapphire NITRO;Released After=June 16th, 2015'),
(248, 'https://cdn.videocardz.net/cache/88ed6f71f482ea80354096265c936325-630x540.jpg', ' ONDA GeForce GTX 1050 Ti 4GB Aegis Ver 2.0', 245000, 'Manufacturer=Onda;Original Series=GeForce 10;Based On= GeForce GTX 1050 Ti;Released After=October 25th, 2016'),
(249, 'https://cdn.videocardz.net/cache/fffae68750a8bd5e6ba46b25ce7030de-630x540.jpg', ' MSI GeForce 6600 128MB', 345000, 'Manufacturer=MSI;Original Series=GeForce 6;Based On= GeForce 6600 AGP;Released After=November 16th, 2004'),
(250, 'https://cdn.videocardz.net/cache/6e4122b6a7be2b950ff399931245205b-630x540.jpg', ' YESTON Radeon RX 6600 XT 8GB GAEA', 250000, 'Manufacturer=Yeston;Original Series=Radeon 6000;Based On= Radeon RX 6600 XT;Released After=August 11th, 2021'),
(251, 'https://cdn.videocardz.net/cache/f97380239280c3759c00738b4e35b8b7-630x540.jpg', ' COLORFUL GeForce RTX 2060 12GB BattleAx', 125000, 'Manufacturer=Colorful;Original Series=GeForce 20;Based On= GeForce RTX 2060 12GB;Custom Series=COLORFUL BattleAx;Released After=December 7th, 2021'),
(252, 'https://cdn.videocardz.net/cache/4a078ac98832dd2ce45a5af8bb1d98f1-630x540.jpg', ' Colorful GeForce GTX 960 4GB iCafe V4', 85000, 'Manufacturer=Colorful;Original Series=GeForce 900;Based On= GeForce GTX 960;Custom Series=Colorful iCafe;Released After=January 22nd, 2015'),
(253, 'https://cdn.videocardz.net/cache/4ed1e9b7e26dea49e6bfd5ec04b638b9-630x540.jpg', ' NVIDIA GeForce 7800 GTX', 95000, 'Manufacturer=NVIDIA;Original Series=GeForce 7;Release Date=June 22nd, 2005;PCB Code=180-10347-0000;P/N Code=600-10347-0002;Model=NVIDIA P347 SKU 002'),
(254, 'https://cdn.videocardz.net/cache/fbacfbc792ce0090057c554fe168ab61-630x540.jpg', ' MSI Radeon RX 480 8GB GAMING X', 145000, 'Manufacturer=MSI;Original Series=Radeon 400;Based On= Radeon RX 480;Custom Series=MSI GAMING;Cooling Solution=MSI TwinFrozr VI;Released After=June 29th, 2016'),
(255, 'https://cdn.videocardz.net/cache/f25209a3f94a59cb0bad1a297ae8164d-630x540.jpg', ' XFX Radeon R7 370 2GB Double Dissipation Black Edition', 130000, 'Manufacturer=XFX;Original Series=Radeon 300;Based On= Radeon R7 370;Cooling Solution=XFX Double Dissipation;Released After=June 16th, 2015'),
(256, 'https://cdn.videocardz.net/cache/77379b14e39177784e8f35c00a5e1f08-630x540.jpg', ' Colorful GeForce 7300 GT 128MB DDR V22', 55000, 'Manufacturer=Colorful;Original Series=GeForce 7;Based On= GeForce 7300 GT;Released After=May 15th, 2006'),
(257, 'https://cdn.videocardz.net/cache/17887856024f101676695944f1f6a26e-630x540.jpg', ' ATI Radeon X300 LP', 335000, 'Manufacturer=AMD;Original Series=Radeon X;Release Date=September 1st, 2004;PCB Code=109-A26000-00;P/N Code=102-A26005-00;Model=AMD A260 SKU 005'),
(258, 'https://cdn.videocardz.net/cache/6391f2b19e1bb32c914d72ab3629bd08-630x540.jpg', ' MSI GeForce 9600 GT 1GB OC', 255000, 'Manufacturer=MSI;Original Series=GeForce 9;Based On= GeForce 9600 GT;Released After=February 21st, 2008;PCB Code=180-10545-0002;P/N Code=600-10545-0000;S/N Code=P545-A00;Board Model=NVIDIA P545'),
(259, 'https://cdn.videocardz.net/cache/ee76aa85ec9eeaf2fde1b183e2bbee8f-630x540.jpg', ' HIS Radeon 7000 64MB PCI', 270000, 'Manufacturer=HIS;Original Series=Radeon 7000;Based On= Radeon 7000 64MB PCI;Released After=February 19th, 2001'),
(260, 'https://cdn.videocardz.net/cache/6bea43d6d8b9a103a74644d3d3a2fa27-630x540.jpg', ' ZOTAC GeForce RTX 2070 SUPER 8GB X-GAMING OC', 310000, 'Manufacturer=ZOTAC;Original Series=GeForce 20;Based On= GeForce RTX 2070 SUPER;Custom Series=ZOTAC X-GAMING;Released After=July 9th, 2019'),
(261, 'https://cdn.videocardz.net/cache/0e2013ea8ef4a1c5845a0b0fdacd16e0-630x540.jpg', ' AMD Radeon HD 7730', 65000, 'Manufacturer=AMD;Original Series=Radeon HD 7000;Release Date=February 15th, 2012;Launch Price=$89 USD;PCB Code=109-C44557-00;Board Model=AMD C445'),
(262, 'https://cdn.videocardz.net/cache/ff62d823f3384e67165e9427c9388280-630x540.jpg', ' COLORFUL GeForce RTX 2060 6GB iGame Vulcan', 135000, 'Manufacturer=Colorful;Original Series=GeForce 20;Based On= GeForce RTX 2060;Custom Series=Colorful iGame;Released After=January 14th, 2019'),
(263, 'https://cdn.videocardz.net/cache/a8838aaf2784460269f4b5c96b4ffbfa-630x540.jpg', ' NVIDIA GeForce 9800 GTX+', 45000, 'Manufacturer=NVIDIA;Original Series=GeForce 9;Release Date=January 16th, 2009;Launch Price=$229 USD;PCB Code=180-10392-0102;P/N Code=600-10392-0001;Model=NVIDIA P392 SKU 001'),
(264, 'https://cdn.videocardz.net/cache/db734cf91f81f2cf30a5269091845bd3-630x540.jpg', ' Colorful GeForce GT 740 2GB i-Cafe', 125000, 'Manufacturer=Colorful;Original Series=GeForce 700;Based On= GeForce GT 740;Custom Series=Colorful iCafe;Released After=May 29th, 2014'),
(265, 'https://cdn.videocardz.net/cache/d2b31ba17b2b24b500cfcc1c7814d210-630x540.jpg', ' MANLI GeForce GTX 1080 Ti 11GB GALLARDO RGB Edition', 145000, 'Manufacturer=Manli;Original Series=GeForce 10;Based On= GeForce GTX 1080 Ti;Custom Series=MANLI Gallardo;Released After=March 10th, 2017'),
(266, 'https://cdn.videocardz.net/cache/91864a115a54b8453cd7b67be0c8ba15-630x540.jpg', ' EVGA GeForce RTX 3080 Ti 12GB FTW3 ULTRA', 175000, 'Manufacturer=EVGA;Original Series=GeForce 30;Based On= GeForce RTX 3080 Ti;Custom Series=EVGA FTW (For The Win);Cooling Solution=EVGA iCX3;Released After=June 3rd, 2021;Launch Price=$1,400 USD (+16.8%)'),
(267, 'https://cdn.videocardz.net/cache/2e5fadcaa4eb3bf4dc17469427bf475b-630x540.jpg', ' MAXSUN GeForce GTX 1070 Ti 8GB JetStream', 225000, 'Manufacturer=MaxSun;Original Series=GeForce 10;Based On= GeForce GTX 1070 Ti;Custom Series=MAXSUN JetStream;Released After=November 2nd, 2017'),
(268, 'https://cdn.videocardz.net/cache/20481a29f68699537dc1eaa5a950aaec-630x540.jpg', ' NVIDIA TITAN X (Pascal)', 285000, 'Manufacturer=NVIDIA;Original Series=GeForce 10;Release Date=August 2nd, 2016;Launch Price=$1,200 USD;PCB Code=180-1G611-DAAA;P/N Code=699-1G611-0000;Device ID=1B00;Board Model=NVIDIA PG611'),
(269, 'https://cdn.videocardz.net/cache/4389681590d73b887f52da9760239a90-630x540.jpg', ' MANLI GeForce GT 730 2GB Heatsink', 250000, 'Manufacturer=Manli;Original Series=GeForce 700;Based On= GeForce GT 730 (GK208);Released After=June 18th, 2014'),
(270, 'https://cdn.videocardz.net/cache/10705c89a58f3598cd41ca616eafe575-630x540.jpg', ' HIS Radeon HD 4550 512MB Silence', 220000, 'Manufacturer=HIS;Original Series=Radeon HD 4000;Based On= Radeon HD 4650;Custom Series=HIS iSilence;Cooling Solution=HIS Silence;Released After=September 10th, 2008'),
(271, 'https://cdn.videocardz.net/cache/8cc75be9d87eaafa075237878fd0d615-630x540.jpg', ' MSI Radeon RX 460 2GB OC', 85000, 'Manufacturer=MSI;Original Series=Radeon 400;Based On= Radeon RX 460;Released After=July 28th, 2016'),
(272, 'https://cdn.videocardz.net/cache/bd5cd15a8339c8100cf6c49d8541dcb6-630x540.jpg', ' INNO3D GeForce RTX 3080 LHR 12GB iCHILL X3', 50000, 'Manufacturer=Inno3D;Original Series=GeForce 30;Based On= GeForce RTX 3080 LHR 12GB;Custom Series=INNO3D iChill;Released After=January 11th, 2022'),
(273, 'https://cdn.videocardz.net/cache/6612b95a55bade50dc4fabbd94bbcbb0-630x540.jpg', ' ZOTAC GeForce GTX 750 Ti 1GB', 260000, 'Manufacturer=ZOTAC;Original Series=GeForce 700;Based On= GeForce GTX 750 Ti;Released After=February 18th, 2014'),
(274, 'https://cdn.videocardz.net/cache/861f6857e1175504238b83e35457c3d5-630x540.jpg', ' AMD Radeon HD 6950', 285000, 'Manufacturer=AMD;Original Series=Radeon HD 6000;Release Date=December 14th, 2010;Launch Price=$299 USD;PCB Code=109-C21647-00;P/N Code=102-C21601-00;Model=AMD C216 SKU 001'),
(275, 'https://cdn.videocardz.net/cache/2fa2e93d006cdc0c2cff0de945e438b9-630x540.jpg', ' GEIL GeForce GTX 1070 Ti 8GB OC Edition', 265000, 'Manufacturer=GEIL;Original Series=GeForce 10;Based On= GeForce GTX 1070 Ti;Released After=November 2nd, 2017'),
(276, 'https://cdn.videocardz.net/cache/ccaa23d2a78f88c1e66e4d662ab73056-630x540.jpg', ' MSI Radeon HD 6570 1GB LP', 285000, 'Manufacturer=MSI;Original Series=Radeon HD 6000;Based On= Radeon HD 6570;Released After=April 19th, 2011'),
(277, 'https://cdn.videocardz.net/cache/8f962791efa42e7995622edee61c69d3-630x540.jpg', ' ZOTAC GeForce GTX 550 Ti 1GB', 170000, 'Manufacturer=ZOTAC;Original Series=GeForce 500;Based On= GeForce GTX 550 Ti;Released After=March 15th, 2011;PCB Code=180-11050-0000;P/N Code=600-11050-0000;Board Model=NVIDIA P1050'),
(278, 'https://cdn.videocardz.net/cache/add75d428ef9f9cef41b1698a5b62ecb-630x540.jpg', ' GIGABYTE Radeon RX 6800 16GB', 120000, 'Manufacturer=Gigabyte;Original Series=Radeon 6000;Based On= Radeon RX 6800;Released After=November 18th, 2020;P/N Code=102D41209000;Model=AMD D412 SKU 009'),
(279, 'https://cdn.videocardz.net/cache/3ef7e63925b3c028054f45b782fb0c09-630x540.jpg', ' EVGA GeForce 9600 GSO 768MB DDR2', 295000, 'Manufacturer=EVGA;Original Series=GeForce 9;Based On= GeForce 9600 GSO;Released After=April 28th, 2008'),
(280, 'https://cdn.videocardz.net/cache/8c36554c83819cab8d48965b6a53934d-630x540.jpg', ' PALIT GeForce RTX 2060 6GB Dual', 370000, 'Manufacturer=Palit;Original Series=GeForce 20;Based On= GeForce RTX 2060;Released After=January 14th, 2019'),
(281, 'https://cdn.videocardz.net/cache/5a62c526fe80155631f1f28273f8dc26-630x540.jpg', ' AFOX GeForce GTX 1060 6GB', 90000, 'Manufacturer=AFOX;Original Series=GeForce 10;Based On= GeForce GTX 1060 6GB;Released After=July 19th, 2016;P/N Code=699-1G410-0030;S/N Code=PG410-A01;Model=NVIDIA PG410 SKU 030'),
(282, 'https://cdn.videocardz.net/cache/1d6c2868caabf43befe3490dbd610516-630x540.jpg', ' POWERCOLOR Radeon RX Vega 64 8GB', 295000, 'Manufacturer=PowerColor;Original Series=Radeon 500;Based On= Radeon RX Vega 64;Released After=August 14th, 2017'),
(283, 'https://cdn.videocardz.net/cache/f1feef112e349e2c52caf8b2d88a49e7-630x540.jpg', ' Intel Arc A780 Limited Edition', 295000, 'Manufacturer=INTEL;Original Series=Arc Alchemist;Rumored Release Date=Summer 2022'),
(284, 'https://cdn.videocardz.net/cache/f21c35027cf798c9f27315d98a60395f-630x540.jpg', ' Colorful GeForce GTX 960 2GB iGame Ares V2', 190000, 'Manufacturer=Colorful;Original Series=GeForce 900;Based On= GeForce GTX 960;Custom Series=Colorful iGame;Released After=January 22nd, 2015'),
(285, 'https://cdn.videocardz.net/cache/fde760815a00c284cf179fa53def4d26-630x540.jpg', ' MSI GeForce RTX 3060 Ti LHR 8GB GAMING', 395000, 'Manufacturer=MSI;Original Series=GeForce 30;Based On= GeForce RTX 3060 Ti LHR;Custom Series=MSI GAMING;Released After=May 12th, 2021'),
(286, 'https://cdn.videocardz.net/cache/9ed7b05e73ce589b51826b2922f335e3-630x540.jpg', ' MSI Radeon R5 230 1GB LP', 385000, 'Manufacturer=MSI;Original Series=Radeon 200;Based On= Radeon R5 230;Released After=December 21st, 2013'),
(287, 'https://cdn.videocardz.net/cache/229a7111feea6fe499d6b3538de79132-630x540.jpg', ' GALAX GeForce RTX 2080 8GB', 205000, 'Manufacturer=GALAX;Original Series=GeForce 20;Based On= GeForce RTX 2080;Released After=September 20th, 2018;PCB Code=180-1G180-DAAA;P/N Code=699-1G180-0000;Board Model=NVIDIA PG180'),
(288, 'https://cdn.videocardz.net/cache/1572896563ee3d0d1269c8f7c9fe34cb-630x540.jpg', ' ZOTAC GeForce GT 630 2GB ZONE Edition', 70000, 'Manufacturer=ZOTAC;Original Series=GeForce 600;Based On= GeForce GT 630 (GK208 64b);Custom Series=ZOTAC Zone;Released After=May 15th, 2012'),
(289, 'https://cdn.videocardz.net/cache/f79f083a402f8ed6179bd8982fc342f2-630x540.jpg', ' INNO3D GeForce RTX 3070 8GB TWIN X2', 95000, 'Manufacturer=Inno3D;Original Series=GeForce 30;Based On= GeForce RTX 3070;Custom Series=INNO3D TWIN;Released After=October 29th, 2020'),
(290, 'https://cdn.videocardz.net/cache/8516da930ab6eaae94c8feccfc69c5e7-630x540.jpg', ' COLORFUL GeForce GTX 650 1GB', 165000, 'Manufacturer=Colorful;Original Series=GeForce 600;Based On= GeForce GTX 650;Released After=September 13th, 2012'),
(291, 'https://cdn.videocardz.net/cache/f90f6e6291a1743bc2414550893d6d19-630x540.jpg', ' ZOTAC GeForce GT 1030 2GB LP', 200000, 'Manufacturer=ZOTAC;Original Series=GeForce 10;Based On= GeForce GT 1030;Released After=May 17th, 2017'),
(292, 'https://cdn.videocardz.net/cache/be0a96ed7c837e3c96c2a9040be9bbc9-630x540.jpg', ' GAINWARD GeForce RTX 3070 Ti 8GB Wind Chaser', 295000, 'Manufacturer=Gainward;Original Series=GeForce 30;Based On= GeForce RTX 3070 Ti;Released After=June 10th, 2021'),
(293, 'https://cdn.videocardz.net/cache/eb44cc9c7546aa8b47c658fbfa298bb8-630x540.jpg', ' MANLI GeForce RTX 2070 SUPER 8GB Triple Cooler', 235000, 'Manufacturer=Manli;Original Series=GeForce 20;Based On= GeForce RTX 2070 SUPER;Released After=July 9th, 2019;Board Model=NVIDIA PG180'),
(294, 'https://cdn.videocardz.net/cache/9a4a21d93d5a1883b2fd919e87212325-630x540.jpg', ' KFA2 GeForce GTX 760 2GB EXOC', 270000, 'Manufacturer=KFA2;Original Series=GeForce 700;Based On= GeForce GTX 760;Custom Series=KFA2 EX;Released After=June 25th, 2013;PCB Code=180-12004-1102;Board Model=NVIDIA P2004'),
(295, 'https://cdn.videocardz.net/cache/4a103beafa500df0710fee27b0ae6cc2-630x540.jpg', ' EVGA GeForce GTX 550 Ti 1GB Superclocked+', 170000, 'Manufacturer=EVGA;Original Series=GeForce 500;Based On= GeForce GTX 550 Ti;Custom Series=EVGA SC (SuperClocked);Released After=March 15th, 2011;PCB Code=180-11050-0000;P/N Code=600-11050-0000;Board Model=NVIDIA P1050'),
(296, 'https://cdn.videocardz.net/cache/5612ab1f7099e5ebc843fc7e9a59d30b-630x540.jpg', ' ZOTAC GeForce GT 630 1GB', 320000, 'Manufacturer=ZOTAC;Original Series=GeForce 600;Based On= GeForce GT 630 (GF108 128b);Custom Series=ZOTAC Synergy;Released After=May 15th, 2012'),
(297, 'https://cdn.videocardz.net/cache/1faf0b44ac540cf7acdcb14be64913e6-630x540.jpg', ' COLORFUL GeForce RTX 3080 10GB iGame Advanced OC', 60000, 'Manufacturer=Colorful;Original Series=GeForce 30;Based On= GeForce RTX 3080;Custom Series=COLORFUL iGame ADVANCED;Released After=September 17th, 2020'),
(298, 'https://cdn.videocardz.net/cache/4ad006788f860656e4fc1b8dda045d78-630x540.jpg', ' NVIDIA GeForce GT 620', 145000, 'Manufacturer=NVIDIA;Original Series=GeForce 600;Release Date=April 3rd, 2012;PCB Code=180-11071-1002;P/N Code=600-11071-0009;Model=NVIDIA P1071 SKU 009'),
(299, 'https://cdn.videocardz.net/cache/68491c99558629f192e7e43ab101f8b4-630x540.jpg', ' EMTEK GeForce GTX 1060 6GB XENON Super JETSTREAM FF14 Edition', 155000, 'Manufacturer=EMTek;Original Series=GeForce 10;Based On= GeForce GTX 1060 6GB;Custom Series=EMTEK XENON;Released After=July 19th, 2016'),
(300, 'https://cdn.videocardz.net/cache/c9a985119176bbb5e11e26c01b34fac2-630x540.jpg', ' POWERCOLOR Radeon RX 560 2GB Red Dragon OC V3', 310000, 'Manufacturer=PowerColor;Original Series=Radeon 500;Based On= Radeon RX 560;Released After=May 16th, 2017');

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`) VALUES
(11, 'Aditya', 'Tuladhar', '4514323415', 'admin@trying.com', 'Suckstobeadmin123'),
(13, 'Jonny', 'Test', '3234124323', 'jonny@test.com', 'Mictesting12'),
(15, 'Alexandra', 'Bracken', '3234124322', 'alexandra.bracken@gmail.com', 'Keberus1234'),
(17, 'agrim', 'tuladhar', '3234124321', 'agrim@gmail.com', 'aSDF1234'),
(28, 'Agrim', 'Tuladhar', '3234124329', 'agrimtuladhar@gmail.com', 'asdf1234'),
(40, 'Shanti', 'Bahadur', '3234124328', 'hello@gmail.com', 'test123'),
(41, 'jake', 'Fonterir', '3234124327', 'jake.font@gmail.com', 'asdf1234'),
(43, 'Aditya', 'Tuladhar', '1234567891', 'aditya.tuladhar9@gmail.com', 'qwert5');

-- --------------------------------------------------------

--
-- Table structure for table `memory`
--

CREATE TABLE `memory` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `memory`
--

INSERT INTO `memory` (`id`, `image`, `name`, `price`, `details`) VALUES
(20, 'https://webapi3.adata.com/storage/product/894.png', 'CASTER RGB DDR5', 48000, 'Memory Type=DDR5;Form Factor=U-DIMM;Capacity=16GB;Speed=6000, 6400, 7000 MT/s'),
(21, 'https://webapi3.adata.com/storage/product/893.png', 'CASTER DDR5', 36000, 'Memory Type=DDR5;Form Factor=U-DIMM;Capacity=16GB;Speed=6000, 6400, 7000 MT/s'),
(22, 'https://webapi3.adata.com/storage/product/898.png', 'HUNTER DDR5', 4000, 'Memory Type=DDR5;Form Factor=U-DIMM;Capacity=8GB / 16GB;Speed=5200MT/s'),
(23, 'https://webapi3.adata.com/storage/product/p_lancer_rgb_600x600.png', 'LANCER RGB DDR5', 44000, 'Memory Type=DDR5;Form Factor=U-DIMM;Capacity=16GB;Speed=5200, 6000MT/s'),
(24, 'https://webapi3.adata.com/storage/product/p_lancer_600x600.png', 'LANCER DDR5', 48000, 'Memory Type=DDR5;Form Factor=U-DIMM;Capacity=16GB;Speed=5200, 6000 MT/s'),
(25, 'https://webapi3.adata.com/storage/product/p_d50_rog_600x600.png', 'SPECTRIX D50 ROG-CERTIFIED', 20000, 'Memory Type=;Form Factor=;Capacity=16GB(8GBx2) / 32GB(16GBx2);Speed='),
(26, 'https://webapi3.adata.com/storage/product/d45g_product_01.png', 'SPECTRIX D45G', 4000, 'Memory Type=DDR4;Form Factor=U-DIMM;Capacity=8GB / 16GB / 32GB;Speed=3600, 4133, 4400 MT/s'),
(27, 'https://webapi3.adata.com/storage/product/d45_p_00.png', 'GAMMIX D45', 48000, 'Memory Type=DDR4;Form Factor=U-DIMM;Capacity=8GB: 8GB x1\n16GB: 8GB x2, 16GB x1\n32GB: 16GB x2, 32GB x'),
(28, 'https://webapi3.adata.com/storage/product/p_d20_bk_600x600.png', 'GAMMIX D20', 20000, 'Memory Type=;Form Factor=;Capacity=8GB / 16GB / 32GB;Speed='),
(29, 'https://webapi3.adata.com/storage/product/p_d50x_600x600.png', 'SPECTRIX D50 Xtreme', 24000, 'Memory Type=;Form Factor=;Capacity=8GB;Speed='),
(30, 'https://webapi3.adata.com/storage/product/p_d55_bk_600x600.png', 'SPECTRIX D55', 28000, 'Memory Type=;Form Factor=;Capacity=8GB / 16GB / 32GB;Speed='),
(31, 'https://webapi3.adata.com/storage/product/spectrix_d50_bk.png', 'SPECTRIX D50', 4000, 'Memory Type=;Form Factor=;Capacity=8GB / 16GB / 32GB;Speed='),
(32, 'https://webapi3.adata.com/storage/product/p_hunter_u_600x600.png', 'XPG Hunter U-DIMM', 12000, 'Memory Type=;Form Factor=;Capacity=8GB / 16GB / 32GB;Speed='),
(33, 'https://webapi3.adata.com/storage/product/p_d60g_tg_600x600.png', 'SPECTRIX D60G', 4000, 'Memory Type=;Form Factor=;Capacity=8GB / 16GB;Speed='),
(34, 'https://webapi3.adata.com/storage/ProductVisual/588.png', 'GAMMIX D30', 40000, 'Memory Type=DDR4;Form Factor=U-DIMM;Capacity=8GB / 16GB;Speed=2666, 3000, 3200, 3600, 4133MT/s'),
(35, 'https://webapi3.adata.com/storage/ProductVisual/553.png', 'SPECTRIX D80', 48000, 'Memory Type=DDR4;Form Factor=U-DIMM;Capacity=8GB / 16GB;Speed=3000, 3200, 3600, 4133MT/s'),
(36, 'https://webapi3.adata.com/storage/ProductVisual/552.png', 'SPECTRIX D41', 8000, 'Memory Type=DDR4;Form Factor=U-DIMM;Capacity=8GB / 16GB;Speed=2666, 3000, 3200, 3600, 4133MT/s'),
(37, 'https://webapi3.adata.com/storage/ProductVisual/486.png', 'GAMMIX D10', 20000, 'Memory Type=DDR4;Form Factor=U-DIMM;Capacity=8GB / 16GB;Speed=2666, 3000, 3200, 3600MT/s'),
(38, 'https://webapi3.adata.com/storage/product/841_red.png', 'XPG Z1', 44000, 'Memory Type=DDR4;Form Factor=U-DIMM;Capacity=8GB / 16GB;Speed=3000, 3200, 3600, 4133MT/s');

-- --------------------------------------------------------

--
-- Table structure for table `motherboard`
--

CREATE TABLE `motherboard` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motherboard`
--

INSERT INTO `motherboard` (`id`, `image`, `name`, `price`, `details`) VALUES
(196, 'https://motherboarddb.com//media/images/Biostar/B450MH/B450MH-1.jpg', 'Biostar B450MH', 145000, 'Manufacturer=Biostar;Year=2018;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD B450;Market=Go to website'),
(197, 'https://motherboarddb.com//media/images/MSI/Z97A%20Gaming%207/Z97A_Gaming_7-1.png', 'MSI Z97A Gaming 7', 80000, 'Manufacturer=MSI;Year=2015;Socket(s)=LGA 1150;Form Factor=ATX;Chipset=Intel Z97;Market=Go to website'),
(198, 'https://motherboarddb.com//media/images/MSI/B450%20Tomahawk/B450_Tomahawk-1.png', 'MSI B450 Tomahawk', 80000, 'Manufacturer=MSI;Year=2018;Socket(s)=AM4;Form Factor=ATX;Chipset=AMD B450;Product Series=MSI Arsenal Gaming;Market=Go to website'),
(199, 'https://motherboarddb.com//media/images/Asrock/H110M-DS-Hyper/H110M-DS-Hyper-1.jpg', 'Asrock H110M-DS/Hyper', 35000, 'Manufacturer=Asrock;Year=2016;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H110;Market=Go to website'),
(200, 'https://motherboarddb.com//media/images/Asrock/Z370M%20Pro4/Z370M_Pro4-1.png', 'Asrock Z370M Pro4', 160000, 'Manufacturer=Asrock;Year=2017;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel Z370;Product Series=Asrock Pro;Market=Go to website'),
(201, 'https://motherboarddb.com//media/images/Gigabyte/H310M%20S2P/H310M_S2P-1.png', 'Gigabyte H310M S2P', 20000, 'Manufacturer=Gigabyte;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H310;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(202, 'https://motherboarddb.com//media/images/Biostar/A320MH/A320MH-1.png', 'Biostar A320MH', 50000, 'Manufacturer=Biostar;Year=2018;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD A320;Product Series=Biostar PRO;Market=Go to website'),
(203, 'https://motherboarddb.com//media/images/Asrock/X99%20WS-E/X99_WS-E-1.jpg', 'Asrock X99 WS-E', 140000, 'Manufacturer=Asrock;Year=2014;Socket(s)=LGA 2011-3;Form Factor=E-ATX;Chipset=Intel X99;Market=Go to website'),
(204, 'https://motherboarddb.com//media/images/MSI/B250M%20Bazooka%20Plus/B250M_Bazooka_Plus-6.png', 'MSI B250M Bazooka Plus', 80000, 'Manufacturer=MSI;Year=2017;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel B250;Product Series=MSI Arsenal Gaming;Market=Download Manual;MSRP=Go to website'),
(205, 'https://motherboarddb.com//media/images/Maxsun/MS-H110D4%20DVR/MS-H110D4_DVR-1.jpg', 'Maxsun MS-H110D4 DVR', 65000, 'Manufacturer=Maxsun;Year=2016;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H110;Market=Go to website'),
(206, 'https://motherboarddb.com//media/images/MSI/Z270%20Gaming%20M7/Z270_Gaming_M7-6.png', 'MSI Z270 Gaming M7', 35000, 'Manufacturer=MSI;Year=2017;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z270;Market=Go to website'),
(207, 'https://motherboarddb.com//media/images/Asus/ROG%20Maximus%20XI%20Gene/ROG_Maximus_XI_Gene-1.jpg', 'Asus ROG Maximus XI Gene', 115000, 'Manufacturer=Asus;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel Z390;Product Series=Asus ROG;Market=Go to website'),
(208, 'https://motherboarddb.com//media/images/MSI/X470%20Gaming%20Pro%20Carbon%20AC/X470_Gaming_Pro_Carbon_AC-1.png', 'MSI X470 Gaming Pro Carbon AC', 75000, 'Manufacturer=MSI;Year=2018;Socket(s)=AM4;Form Factor=ATX;Chipset=AMD X470;Market=Go to website'),
(209, 'https://motherboarddb.com//media/images/Biostar/H110MH%20Pro%20D4/H110MH_Pro_D4-1.jpg', 'Biostar H110MH Pro D4', 110000, 'Manufacturer=Biostar;Year=2016;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H110;Product Series=Biostar PRO;Market=Go to website'),
(210, 'https://motherboarddb.com//media/images/Asrock/B550%20Extreme4/B550_Extreme4-1.png', 'Asrock B550 Extreme4', 155000, 'Manufacturer=Asrock;Year=2020;Socket(s)=AM4;Form Factor=ATX;Chipset=AMD B550;Product Series=Asrock Extreme;Market=Go to website'),
(211, 'https://motherboarddb.com//media/images/Biostar/TB150%20Pro/TB150_Pro-1.jpg', 'Biostar TB150 Pro', 50000, 'Manufacturer=Biostar;Year=2016;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel B150;Product Series=Biostar PRO;Market=Go to website'),
(212, 'https://motherboarddb.com//media/images/ECS/H110M4-C3V/H110M4-C3V-1.jpg', 'ECS H110M4-C3V', 80000, 'Manufacturer=ECS;Year=2015;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H110;Market=Download Manual;MSRP=Go to website'),
(213, 'https://motherboarddb.com//media/images/Biostar/H310MHD%20Pro/H310MHD_Pro-1.png', 'Biostar H310MHD Pro', 105000, 'Manufacturer=Biostar;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H310;Product Series=Biostar PRO;Market=Go to website'),
(214, 'https://motherboarddb.com//media/images/MSI/H170I%20Pro%20AC/H170I_Pro_AC-1.png', 'MSI H170I Pro AC', 55000, 'Manufacturer=MSI;Year=2015;Socket(s)=LGA 1151;Form Factor=Mini-ITX;Chipset=Intel H170;Market=Go to website'),
(215, 'https://motherboarddb.com//media/images/Asus/ROG%20Maximus%20X%20Apex/ROG_Maximus_X_Apex-7.jpg', 'Asus ROG Maximus X Apex', 25000, 'Manufacturer=Asus;Year=2017;Socket(s)=LGA 1151;Form Factor=E-ATX;Chipset=Intel Z370;Product Series=Asus ROG;Market=Go to website'),
(216, 'https://motherboarddb.com//media/images/MSI/X99S%20MPower/X99S_MPower-1.png', 'MSI X99S MPower', 55000, 'Manufacturer=MSI;Year=2014;Socket(s)=LGA 2011-3;Form Factor=ATX;Chipset=Intel X99;Market=Go to website'),
(217, 'https://motherboarddb.com//media/images/Asus/ROG%20Maximus%20IX%20Apex/ROG_Maximus_IX_Apex-8.jpg', 'Asus ROG Maximus IX Apex', 135000, 'Manufacturer=Asus;Year=2017;Socket(s)=LGA 1151;Form Factor=E-ATX;Chipset=Intel Z270;Product Series=Asus ROG;Market=Download Manual;MSRP=Go to website'),
(218, 'https://motherboarddb.com//media/images/Asrock/B450M%20Pro4-F/B450M_Pro4-F-1.png', 'Asrock B450M Pro4-F', 20000, 'Manufacturer=Asrock;Year=2019;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD B450;Product Series=Asrock Pro;Market=Go to website'),
(219, 'https://motherboarddb.com//media/images/Biostar/A320MH%20PRO/A320MH_PRO-13.jpg', 'Biostar A320MH PRO', 35000, 'Manufacturer=Biostar;Year=2017;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD A320;Product Series=Biostar PRO;Market=Download Manual;MSRP=Go to website'),
(220, 'https://motherboarddb.com//media/images/Maxsun/MS-Z170%20Pro%20Terminator/MS-Z170_Pro_Terminator-1.jpg', 'Maxsun MS-Z170 Pro Terminator', 165000, 'Manufacturer=Maxsun;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z170;Market=Go to website'),
(221, 'https://motherboarddb.com//media/images/Gigabyte/GA-Z170-HD3%20DDR3/GA-Z170-HD3_DDR3-1.png', 'Gigabyte GA-Z170-HD3 DDR3', 50000, 'Manufacturer=Gigabyte;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z170;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(222, 'https://motherboarddb.com//media/images/Biostar/H110MGV3/H110MGV3-1.jpg', 'Biostar H110MGV3', 180000, 'Manufacturer=Biostar;Year=2016;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H110;Market=Go to website'),
(223, 'https://motherboarddb.com//media/images/Biostar/Z270GT8/Z270GT8-5.jpg', 'Biostar Z270GT8', 70000, 'Manufacturer=Biostar;Year=2017;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z270;Product Series=Biostar Racing;Market=Go to website'),
(224, 'https://motherboarddb.com//media/images/Asrock/B460%20Phantom%20Gaming%204/B460_Phantom_Gaming_4-1.png', 'Asrock B460 Phantom Gaming 4', 130000, 'Manufacturer=Asrock;Year=2020;Socket(s)=LGA 1200;Form Factor=ATX;Chipset=Intel B460;Product Series=Asrock Phantom Gaming;Market=Go to website'),
(225, 'https://motherboarddb.com//media/images/Gigabyte/GA-H110M-DS2%20DDR3/GA-H110M-DS2_DDR3-1.png', 'Gigabyte GA-H110M-DS2 DDR3', 130000, 'Manufacturer=Gigabyte;Year=2015;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H110;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(226, 'https://motherboarddb.com//media/images/Asrock/Z170%20OC%20Formula/Z170_OC_Formula-6.jpg', 'Asrock Z170 OC Formula', 115000, 'Manufacturer=Asrock;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z170;Product Series=Asrock OC Formula;Market=Download Manual;MSRP=Go to website'),
(227, 'https://motherboarddb.com//media/images/EVGA/Z97%20FTW/Z97_FTW-1.jpg', 'EVGA Z97 FTW', 170000, 'Manufacturer=EVGA;Year=2014;Socket(s)=LGA 1150;Form Factor=ATX;Chipset=Intel Z97'),
(228, 'https://motherboarddb.com//media/images/Asrock/Z390%20Phantom%20Gaming%206/Z390_Phantom_Gaming_6-1.png', 'Asrock Z390 Phantom Gaming 6', 60000, 'Manufacturer=Asrock;Year=2018;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z390;Product Series=Asrock Phantom Gaming;Market=Go to website'),
(229, 'https://motherboarddb.com//media/images/Biostar/Z270GTN/Z270GTN-5.jpg', 'Biostar Z270GTN', 140000, 'Manufacturer=Biostar;Year=2017;Socket(s)=LGA 1151;Form Factor=Mini-ITX;Chipset=Intel Z270;Product Series=Biostar Racing;Market=Download Manual;MSRP=Go to website'),
(230, 'https://motherboarddb.com//media/images/Biostar/Hi-Fi%20A70U3P%20Rev.%201.4/Hi-Fi_A70U3P_Rev._1.4-1.jpg', 'Biostar Hi-Fi A70U3P Rev. 1.4', 100000, 'Manufacturer=Biostar;Year=2017;Socket(s)=FM2+;Form Factor=Micro-ATX;Chipset=AMD A70M;Product Series=Biostar Hi-Fi;Market=Go to website'),
(231, 'https://motherboarddb.com//media/images/Asrock/H310M-ITX-ac/H310M-ITX-ac-1.png', 'Asrock H310M-ITX/ac', 95000, 'Manufacturer=Asrock;Year=2018;Socket(s)=LGA 1151;Form Factor=Mini-ITX;Chipset=Intel H310;Market=Go to website'),
(232, 'https://motherboarddb.com//media/images/Asrock/Z97M%20Pro4/Z97M_Pro4-1.png', 'Asrock Z97M Pro4', 155000, 'Manufacturer=Asrock;Year=2014;Socket(s)=LGA 1150;Form Factor=Micro-ATX;Chipset=Intel Z97;Product Series=Asrock Pro;Market=Go to website'),
(233, 'https://motherboarddb.com//media/images/Asrock/Z170M%20Extreme4/Z170M_Extreme4-1.jpg', 'Asrock Z170M Extreme4', 85000, 'Manufacturer=Asrock;Year=2015;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel Z170;Product Series=Asrock Extreme;Market=Go to website'),
(234, 'https://motherboarddb.com//media/images/Asrock/X299%20Taichi%20XE/X299_Taichi_XE-6.png', 'Asrock X299 Taichi XE', 195000, 'Manufacturer=Asrock;Year=2017;Socket(s)=LGA 2066;Form Factor=ATX;Chipset=Intel X299;Product Series=Asrock Taichi;Market=Go to website'),
(235, 'https://motherboarddb.com//media/images/Gigabyte/H310M%20S2P%202.0/H310M_S2P_2.0-1.png', 'Gigabyte H310M S2P 2.0', 70000, 'Manufacturer=Gigabyte;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H310;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(236, 'https://motherboarddb.com//media/images/Gigabyte/H310M%20HD3%202.0/H310M_HD3_2.0-1.png', 'Gigabyte H310M HD3 2.0', 105000, 'Manufacturer=Gigabyte;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H310;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(237, 'https://motherboarddb.com//media/images/MSI/H310M%20Gaming%20Plus/H310M_Gaming_Plus-1.png', 'MSI H310M Gaming Plus', 170000, 'Manufacturer=MSI;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H310;Market=Go to website'),
(238, 'https://motherboarddb.com//media/images/ECS/A890GXM-A2%20Rev.%201.0/A890GXM-A2_Rev._1.0-1.jpg', 'ECS A890GXM-A2 Rev. 1.0', 20000, 'Manufacturer=ECS;Year=2011;Socket(s)=AM3;Form Factor=ATX;Chipset=AMD 890GX;Market=Download Manual;MSRP=Go to website'),
(239, 'https://motherboarddb.com//media/images/Gigabyte/GA-Z170X-Gaming%20GT/GA-Z170X-Gaming_GT-1.png', 'Gigabyte GA-Z170X-Gaming GT', 170000, 'Manufacturer=Gigabyte;Year=2016;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z170;Product Series=Gigabyte G1 Gaming;Market=Go to website'),
(240, 'https://motherboarddb.com//media/images/Asrock/Fatal1ty%20AB350%20Gaming%20K4/Fatal1ty_AB350_Gaming_K4-12.png', 'Asrock Fatal1ty AB350 Gaming K4', 115000, 'Manufacturer=Asrock;Year=2017;Socket(s)=AM4;Form Factor=ATX;Chipset=AMD B350;Product Series=Asrock Fatal1ty;Market=Download Manual;MSRP=Go to website'),
(241, 'https://motherboarddb.com//media/images/Biostar/Hi-Fi%20B150%20PIO%20D4/Hi-Fi_B150_PIO_D4-1.jpg', 'Biostar Hi-Fi B150 PIO D4', 195000, 'Manufacturer=Biostar;Year=2016;Socket(s)=LGA 1151;Form Factor=Micro-DTX;Chipset=Intel B150;Product Series=Biostar Hi-Fi;Market=Go to website'),
(242, 'https://motherboarddb.com//media/images/MSI/Z170A%20Krait%20Gaming/Z170A_Krait_Gaming-1.png', 'MSI Z170A Krait Gaming', 165000, 'Manufacturer=MSI;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z170;Market=Go to website'),
(243, 'https://motherboarddb.com//media/images/Asus/Prime%20X470-Pro/Prime_X470-Pro-1.jpg', 'Asus Prime X470-Pro', 40000, 'Manufacturer=Asus;Year=2018;Socket(s)=AM4;Form Factor=ATX;Chipset=AMD X470;Product Series=Asus Prime;Market=Go to website'),
(244, 'https://motherboarddb.com//media/images/Asus/ROG%20Maximus%20X%20Hero/ROG_Maximus_X_Hero-6.jpg', 'Asus ROG Maximus X Hero', 95000, 'Manufacturer=Asus;Year=2017;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z370;Product Series=Asus ROG;Market=Go to website'),
(245, 'https://motherboarddb.com//media/images/Biostar/Hi-Fi%20B250S1/Hi-Fi_B250S1-1.jpg', 'Biostar Hi-Fi B250S1', 145000, 'Manufacturer=Biostar;Year=2017;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel B250;Product Series=Biostar Hi-Fi;Market=Go to website'),
(246, 'https://motherboarddb.com//media/images/ECS/A990FXM-A%20Rev.%201.1/A990FXM-A_Rev._1.1-1.jpg', 'ECS A990FXM-A Rev. 1.1', 50000, 'Manufacturer=ECS;Year=2012;Socket(s)=AM3+;Form Factor=ATX;Chipset=AMD 990FX;FSB=Download Manual;Market=Go to website'),
(247, 'https://motherboarddb.com//media/images/Asrock/990FX%20Extreme3/990FX_Extreme3-1.png', 'Asrock 990FX Extreme3', 120000, 'Manufacturer=Asrock;Year=2011;Socket(s)=AM3+;Form Factor=ATX;Chipset=AMD 990FX;Product Series=Asrock Extreme;Market=Download Manual;MSRP=Go to website'),
(248, 'https://motherboarddb.com//media/images/Asrock/890GMH-USB3/890GMH-USB3-1.jpg', 'Asrock 890GMH/USB3', 90000, 'Manufacturer=Asrock;Year=2010;Socket(s)=AM3;Form Factor=Micro-ATX;Chipset=AMD 890GX;FSB=Go to website'),
(249, 'https://motherboarddb.com//media/images/Asrock/X99%20Taichi/X99_Taichi-6.png', 'Asrock X99 Taichi', 140000, 'Manufacturer=Asrock;Year=2016;Socket(s)=LGA 2011-3;Form Factor=ATX;Chipset=Intel X99;Product Series=Asrock Taichi;Market=Download Manual;MSRP=Go to website'),
(250, 'https://motherboarddb.com//media/images/Asrock/Fatal1ty%20Z97X%20Killer/Fatal1ty_Z97X_Killer-1.png', 'Asrock Fatal1ty Z97X Killer', 180000, 'Manufacturer=Asrock;Year=2014;Socket(s)=LGA 1150;Form Factor=ATX;Chipset=Intel Z97;Product Series=Asrock Fatal1ty;Market=Go to website'),
(251, 'https://motherboarddb.com//media/images/MSI/B450I%20Gaming%20Plus%20AC/B450I_Gaming_Plus_AC-1.png', 'MSI B450I Gaming Plus AC', 20000, 'Manufacturer=MSI;Year=2018;Socket(s)=AM4;Form Factor=Mini-ITX;Chipset=AMD B450;Market=Go to website'),
(252, 'https://motherboarddb.com//media/images/Asrock/Fatal1ty%20AB350%20Gaming-ITX-ac/Fatal1ty_AB350_Gaming-ITX-ac-6.png', 'Asrock Fatal1ty AB350 Gaming-ITX/ac', 50000, 'Manufacturer=Asrock;Year=2017;Socket(s)=AM4;Form Factor=Mini-ITX;Chipset=AMD B350;Product Series=Asrock Fatal1ty;Market=Download Manual;MSRP=Go to website'),
(253, 'https://motherboarddb.com//media/images/MSI/X370%20Gaming%20Pro/X370_Gaming_Pro-7.png', 'MSI X370 Gaming Pro', 155000, 'Manufacturer=MSI;Year=2017;Socket(s)=AM4;Form Factor=ATX;Chipset=AMD X370;Market=Download Manual;MSRP=Go to website'),
(254, 'https://motherboarddb.com//media/images/Asrock/X99E-ITX-ac/X99E-ITX-ac-1.jpg', 'Asrock X99E-ITX/ac', 80000, 'Manufacturer=Asrock;Year=2015;Socket(s)=LGA 2011-3;Form Factor=Mini-ITX;Chipset=Intel X99;Market=Go to website'),
(255, 'https://motherboarddb.com//media/images/Gigabyte/GA-X99-UD4P/GA-X99-UD4P-1.png', 'Gigabyte GA-X99-UD4P', 90000, 'Manufacturer=Gigabyte;Year=2015;Socket(s)=LGA 2011-3;Form Factor=E-ATX;Chipset=Intel X99;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(256, 'https://motherboarddb.com//media/images/Gigabyte/X58A-UD3R%20Rev.%202.0/X58A-UD3R_Rev._2.0-3.png', 'Gigabyte GA-X58A-UD3R Rev. 2.0', 70000, 'Manufacturer=Gigabyte;Year=2010;Socket(s)=LGA 1366;Form Factor=ATX;Chipset=Intel X58;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(257, 'https://motherboarddb.com//media/images/Gigabyte/GA-H170-Gaming%203%20DDR3/GA-H170-Gaming_3_DDR3-1.png', 'Gigabyte GA-H170-Gaming 3 DDR3', 75000, 'Manufacturer=Gigabyte;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel H170;Product Series=Gigabyte G1 Gaming;Market=Go to website'),
(258, 'https://motherboarddb.com//media/images/Gigabyte/Z390%20UD/Z390_UD-1.png', 'Gigabyte Z390 UD', 100000, 'Manufacturer=Gigabyte;Year=2018;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z390;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(259, 'https://motherboarddb.com//media/images/Asus/Prime%20H310M-A/Prime_H310M-A-1.jpg', 'Asus Prime H310M-A', 170000, 'Manufacturer=Asus;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H310;Product Series=Asus Prime;Market=Go to website'),
(260, 'https://motherboarddb.com//media/images/MSI/B450M%20Mortar%20Titanium/B450M_Mortar_Titanium-1.png', 'MSI B450M Mortar Titanium', 155000, 'Manufacturer=MSI;Year=2018;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD B450;Product Series=MSI Arsenal Gaming;Market=Go to website'),
(261, 'https://motherboarddb.com//media/images/Asus/B150M%20Pro%20Gaming/B150M_Pro_Gaming-1.jpg', 'Asus B150M Pro Gaming', 135000, 'Manufacturer=Asus;Year=2016;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel B150;Market=Go to website'),
(262, 'https://motherboarddb.com//media/images/ECS/B150D-SF100/B150D-SF100-1.jpg', 'ECS B150D-SF100', 195000, 'Manufacturer=ECS;Year=2016;Socket(s)=LGA 1151;Form Factor=Thin Mini-ITX;Chipset=Intel B150;Market=Go to website'),
(263, 'https://motherboarddb.com//media/images/Gigabyte/GA-B150-HD3/GA-B150-HD3-1.png', 'Gigabyte GA-B150-HD3', 120000, 'Manufacturer=Gigabyte;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel B150;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(264, 'https://motherboarddb.com//media/images/Biostar/Hi-Fi%20B350S1/Hi-Fi_B350S1-5.jpg', 'Biostar Hi-Fi B350S1', 60000, 'Manufacturer=Biostar;Year=2017;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD B350;Product Series=Biostar Hi-Fi;Market=Go to website'),
(265, 'https://motherboarddb.com//media/images/Asrock/H170%20Combo/H170_Combo-1.jpg', 'Asrock H170 Combo', 85000, 'Manufacturer=Asrock;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel H170;Product Series=Asrock Pro;Market=Go to website'),
(266, 'https://motherboarddb.com//media/images/ECS/A320AM4-M3D/A320AM4-M3D-4.jpg', 'ECS A320AM4-M3D', 105000, 'Manufacturer=ECS;Year=2017;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD A320;Market=Go to website'),
(267, 'https://motherboarddb.com//media/images/Maxsun/MS-Terminator%20B360W/MS-Terminator_B360W-1.jpg', 'Maxsun MS-Terminator B360W', 85000, 'Manufacturer=Maxsun;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel B360;Market=Go to website'),
(268, 'https://motherboarddb.com//media/images/Asrock/A320M%20Pro4%20R2.0/A320M_Pro4_R2.0-1.png', 'Asrock A320M Pro4 R2.0', 105000, 'Manufacturer=Asrock;Year=2019;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD A320;Product Series=Asrock Pro;Market=Go to website'),
(269, 'https://motherboarddb.com//media/images/Asus/ROG%20Strix%20Z370-E%20Gaming/ROG_Strix_Z370-E_Gaming-8.jpg', 'Asus ROG Strix Z370-E Gaming', 55000, 'Manufacturer=Asus;Year=2017;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z370;Product Series=Asus ROG;Market=Go to website'),
(270, 'https://motherboarddb.com//media/images/Asrock/IMB-199V/IMB-199V-1.png', 'Asrock IMB-199V', 105000, 'Manufacturer=Asrock;Year=2017;Socket(s)=Onboard CPU;Form Factor=Thin Mini-ITX;Northbridge=None;Southbridge=None;Market=Download Manual;MSRP=Go to website'),
(271, 'https://motherboarddb.com//media/images/Asus/ROG%20Maximus%20VIII%20Ranger/ROG_Maximus_VIII_Ranger-6.jpg', 'Asus ROG Maximus VIII Ranger', 160000, 'Manufacturer=Asus;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z170;Product Series=Asus ROG;Market=Go to website'),
(272, 'https://motherboarddb.com//media/images/Asus/Prime%20B350-Plus/Prime_B350-Plus-7.jpg', 'Asus Prime B350-Plus', 140000, 'Manufacturer=Asus;Year=2017;Socket(s)=AM4;Form Factor=ATX;Chipset=AMD B350;Product Series=Asus Prime;Market=Go to website'),
(273, 'https://motherboarddb.com//media/images/Gigabyte/H310M%20H/H310M_H-1.png', 'Gigabyte H310M H', 130000, 'Manufacturer=Gigabyte;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H310;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(274, 'https://motherboarddb.com//media/images/MSI/MPG%20Z390%20Gaming%20Pro%20Carbon%20AC/MPG_Z390_Gaming_Pro_Carbon_AC-1.png', 'MSI MPG Z390 Gaming Pro Carbon AC', 65000, 'Manufacturer=MSI;Year=2018;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z390;Market=Go to website'),
(275, 'https://motherboarddb.com//media/images/Gigabyte/Z390%20Aorus%20Master/Z390_Aorus_Master-1.png', 'Gigabyte Z390 Aorus Master', 25000, 'Manufacturer=Gigabyte;Year=2018;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z390;Product Series=Gigabyte Aorus;Market=Go to website'),
(276, 'https://motherboarddb.com//media/images/MSI/Z170A%20Gaming%20Pro%20Carbon/Z170A_Gaming_Pro_Carbon-1.png', 'MSI Z170A Gaming Pro Carbon', 90000, 'Manufacturer=MSI;Year=2016;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z170;Market=Go to website'),
(277, 'https://motherboarddb.com//media/images/Asus/Prime%20B250M-K/Prime_B250M-K-1.jpg', 'Asus Prime B250M-K', 140000, 'Manufacturer=Asus;Year=2017;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel B250;Product Series=Asus Prime;Market=Go to website'),
(278, 'https://motherboarddb.com//media/images/Gigabyte/GA-Z170X-UD3/GA-Z170X-UD3-1.png', 'Gigabyte GA-Z170X-UD3', 185000, 'Manufacturer=Gigabyte;Year=2015;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z170;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(279, 'https://motherboarddb.com//media/images/ECS/H110S-2P/H110S-2P-5.jpg', 'ECS H110S-2P', 50000, 'Manufacturer=ECS;Year=2016;Socket(s)=LGA 1151;Form Factor=Mini-STX;Chipset=Intel H110;Market=Download Manual;MSRP=Go to website'),
(280, 'https://motherboarddb.com//media/images/MSI/Z97-G43%20Gaming/Z97-G43_Gaming-1.png', 'MSI Z97-G43 Gaming', 55000, 'Manufacturer=MSI;Year=2014;Socket(s)=LGA 1150;Form Factor=ATX;Chipset=Intel Z97;Market=Go to website'),
(281, 'https://motherboarddb.com//media/images/Asrock/Z390%20Phantom%20Gaming%207/Z390_Phantom_Gaming_7-1.png', 'Asrock Z390 Phantom Gaming 7', 75000, 'Manufacturer=Asrock;Year=2019;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z390;Product Series=Asrock Phantom Gaming;Market=Go to website'),
(282, 'https://motherboarddb.com//media/images/Asrock/H310CM-ITX-ac/H310CM-ITX-ac-1.png', 'Asrock H310CM-ITX/ac', 90000, 'Manufacturer=Asrock;Year=2018;Socket(s)=LGA 1151;Form Factor=Mini-ITX;Chipset=Intel H310;Market=Go to website'),
(283, 'https://motherboarddb.com//media/images/Asrock/Z490%20Steel%20Legend/Z490_Steel_Legend-1.png', 'Asrock Z490 Steel Legend', 20000, 'Manufacturer=Asrock;Year=2020;Socket(s)=LGA 1200;Form Factor=ATX;Chipset=Intel Z490;Market=Go to website'),
(284, 'https://motherboarddb.com//media/images/ECS/A960M-M2/A960M-M2-1.jpg', 'ECS A960M-M2', 40000, 'Manufacturer=ECS;Year=2011;Socket(s)=AM3+;Form Factor=Micro-ATX;Chipset=AMD 760G;Market=Download Manual;MSRP=Go to website'),
(285, 'https://motherboarddb.com//media/images/Gigabyte/GA-B150M-HD3%20DDR3/GA-B150M-HD3_DDR3-1.png', 'Gigabyte GA-B150M-HD3 DDR3', 40000, 'Manufacturer=Gigabyte;Year=2015;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel B150;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(286, 'https://motherboarddb.com//media/images/Gigabyte/Z390%20Aorus%20Pro%20Wifi/Z390_Aorus_Pro_Wifi-1.png', 'Gigabyte Z390 Aorus Pro Wifi', 130000, 'Manufacturer=Gigabyte;Year=2018;Socket(s)=LGA 1151;Form Factor=ATX;Chipset=Intel Z390;Product Series=Gigabyte Aorus;Market=Go to website'),
(287, 'https://motherboarddb.com//media/images/Biostar/945GC-330/945GC-330-1.jpg', 'Biostar 945GC-330', 95000, 'Manufacturer=Biostar;Year=2009;Socket(s)=Onboard CPU;Form Factor=Mini-ITX;Chipset=Intel 945GC;FSB=Go to website'),
(288, 'https://motherboarddb.com//media/images/Gigabyte/X299%20Aorus%20Gaming%209/X299_Aorus_Gaming_9-7.png', 'Gigabyte X299 Aorus Gaming 9', 60000, 'Manufacturer=Gigabyte;Year=2017;Socket(s)=LGA 2066;Form Factor=ATX;Chipset=Intel X299;Product Series=Gigabyte Aorus;Market=Go to website'),
(289, 'https://motherboarddb.com//media/images/MSI/H110M%20Gaming/H110M_Gaming-1.png', 'MSI H110M Gaming', 190000, 'Manufacturer=MSI;Year=2016;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H110;Market=Go to website'),
(290, 'https://motherboarddb.com//media/images/Asrock/H310M-DGS/H310M-DGS-1.png', 'Asrock H310M-DGS', 85000, 'Manufacturer=Asrock;Year=2018;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel H310;Market=Go to website'),
(291, 'https://motherboarddb.com//media/images/MSI/A320M%20Gaming%20Pro/A320M_Gaming_Pro-6.png', 'MSI A320M Gaming Pro', 160000, 'Manufacturer=MSI;Year=2017;Socket(s)=AM4;Form Factor=Micro-ATX;Chipset=AMD A320;Market=Download Manual;MSRP=Go to website'),
(292, 'https://motherboarddb.com//media/images/Gigabyte/GA-990FXA-UD3%20Rev.%204.0/GA-990FXA-UD3_Rev._4.0-1.jpg', 'Gigabyte GA-990FXA-UD3 Rev. 4.0', 35000, 'Manufacturer=Gigabyte;Year=2013;Socket(s)=AM3+;Form Factor=ATX;Chipset=AMD 990FX;Product Series=Gigabyte Ultra Durable;Market=Go to website'),
(293, 'https://motherboarddb.com//media/images/Asrock/Fatal1ty%20Z270%20Gaming-ITX-ac/Fatal1ty_Z270_Gaming-ITX-ac-7.png', 'Asrock Fatal1ty Z270 Gaming-ITX/ac', 190000, 'Manufacturer=Asrock;Year=2017;Socket(s)=LGA 1151;Form Factor=Mini-ITX;Chipset=Intel Z270;Product Series=Asrock Fatal1ty;Market=Download Manual;MSRP=Go to website'),
(294, 'https://motherboarddb.com//media/images/Gigabyte/GA-X99-SOC%20Force/GA-X99-SOC_Force-1.png', 'Gigabyte GA-X99-SOC Force', 140000, 'Manufacturer=Gigabyte;Year=2014;Socket(s)=LGA 2011-3;Form Factor=E-ATX;Chipset=Intel X99;Product Series=Gigabyte Super Overclock;Market=Go to website'),
(295, 'https://motherboarddb.com//media/images/Gigabyte/GA-Z170M-D3H%20DDR3/GA-Z170M-D3H_DDR3-1.png', 'Gigabyte GA-Z170M-D3H DDR3', 115000, 'Manufacturer=Gigabyte;Year=2015;Socket(s)=LGA 1151;Form Factor=Micro-ATX;Chipset=Intel Z170;Product Series=Gigabyte Ultra Durable;Market=Go to website');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `comp_id` int(11) DEFAULT NULL,
  `ind_id` int(11) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `u_id`, `comp_id`, `ind_id`, `order_status`, `price`, `quantity`, `date`) VALUES
(51, 43, 7, 151, 1, 40000, 1, '2022-09-03'),
(52, 43, 3, 299, 1, 155000, 1, '2022-09-03'),
(53, 41, 1, 2, 1, 90000, 1, '2022-09-03'),
(54, 41, 5, 243, 1, 40000, 1, '2022-09-04'),
(55, 41, 1, 2, 1, 90000, 1, '2022-09-04'),
(56, 41, 1, 3, 1, 150000, 1, '2022-09-04'),
(57, 41, 1, 5, 1, 300000, 1, '2022-09-04'),
(58, 41, 1, 5, 1, 300000, 1, '2022-09-04'),
(59, 43, 3, 210, 1, 245000, 1, '2022-09-08'),
(60, 43, 1, 2, 1, 90000, 1, '2022-09-08'),
(61, 43, 4, 26, 1, 4000, 1, '2022-09-08'),
(62, 43, 8, 55, 1, 34000, 1, '2022-09-08'),
(63, 43, 6, 52, 1, 75000, 1, '2022-09-08'),
(64, 43, 2, 105, 1, 28000, 1, '2022-09-08'),
(65, 13, 1, 2, 1, 90000, 1, '2023-03-26'),
(66, 13, 8, 65, 1, 4000, 1, '2023-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `pc_case`
--

CREATE TABLE `pc_case` (
  `id` int(11) NOT NULL,
  `image` varchar(10000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pc_case`
--

INSERT INTO `pc_case` (`id`, `image`, `name`, `price`, `details`) VALUES
(1, 'https://www.sharkoon.com/ImgSrv/370/195/ELITE_SHARK_CA300H/prod_over/Cases_and_Power/Midi_ATX/prod_over_ELITE_SHARK_CA300H.png', 'ELITE SHARK CA300H', 15000, 'Form Factor=ATX'),
(2, 'https://www.sharkoon.com/ImgSrv/370/195/ELITE_SHARK_CA700/prod_over/Cases_and_Power/Midi_ATX/prod_over_ELITE_SHARK_CA700.png', 'ELITE SHARK CA700', 95000, 'Form Factor=ATX'),
(3, 'https://www.sharkoon.com/ImgSrv/370/195/REV300/prod_over/Cases_and_Power/Midi_ATX/prod_over_Rev300.png', 'REV300', 85000, 'Form Factor=ATX'),
(4, 'https://www.sharkoon.com/ImgSrv/370/195/SK3_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_SK3_RGB.png', 'SK3 RGB', 50000, 'Form Factor=ATX'),
(5, 'https://www.sharkoon.com/ImgSrv/370/195/TG4M_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_TG4M_RGB.png', 'TG4M RGB', 65000, 'Form Factor=ATX'),
(6, 'https://www.sharkoon.com/ImgSrv/370/195/TG6M_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_tg6m_rgb.png', 'TG6M RGB', 80000, 'Form Factor=ATX'),
(7, 'https://www.sharkoon.com/ImgSrv/370/195/TG7M_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_TG7M_RGB.png', 'TG7M RGB', 35000, 'Form Factor=ATX'),
(8, 'https://www.sharkoon.com/ImgSrv/370/195/TK4_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_TK4_RGB.png', 'TK4 RGB', 90000, 'Form Factor=ATX'),
(9, 'https://www.sharkoon.com/ImgSrv/370/195/TK5M_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_TK5M_RGB.png', 'TK5M RGB', 20000, 'Form Factor=ATX'),
(10, 'https://www.sharkoon.com/ImgSrv/370/195/TG5_RGB_Silent_PCGH_Edition/prod_over/Cases_and_Power/Midi_ATX/prod_over_TG5_RGB_Silent_PCGH.png', 'TG5 RGB Silent PCGH Edition', 85000, 'Form Factor=ATX'),
(11, 'https://www.sharkoon.com/ImgSrv/370/195/RGB_Slider/prod_over/Cases_and_Power/Midi_ATX/prod_over_RGB_Slider_black_white.png', 'RGB Slider', 10000, 'Form Factor=ATX'),
(12, 'https://www.sharkoon.com/ImgSrv/370/195/ELITE_SHARK_CA300T/prod_over/Cases_and_Power/Midi_ATX/prod_over_ELITE_SHARK_CA300T.png', 'ELITE SHARK CA300T', 55000, 'Form Factor=ATX'),
(13, 'https://www.sharkoon.com/ImgSrv/370/195/REV100/prod_over/Cases_and_Power/Midi_ATX/prod_over_REV100.png', 'REV100', 85000, 'Form Factor=ATX'),
(14, 'https://www.sharkoon.com/ImgSrv/370/195/TG6_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_tg6_rgb.png', 'TG6 RGB', 90000, 'Form Factor=ATX'),
(15, 'https://www.sharkoon.com/ImgSrv/370/195/RGB_FLOW/prod_over/Cases_and_Power/Midi_ATX/prod_over_RGB_Flow.png', 'RGB FLOW', 10000, 'Form Factor=ATX'),
(16, 'https://www.sharkoon.com/ImgSrv/370/195/ELITE_SHARK_CA200G/prod_over/Cases_and_Power/Midi_ATX/prod_over_ELITE_SHARK_CA200G.jpg', 'ELITE SHARK CA200G', 25000, 'Form Factor=ATX'),
(17, 'https://www.sharkoon.com/ImgSrv/370/195/ELITE_SHARK_CA200M/prod_over/Cases_and_Power/Midi_ATX/prod_over_ELITE_SHARK_CA200M.jpg', 'ELITE SHARK CA200M', 25000, 'Form Factor=ATX'),
(18, 'https://www.sharkoon.com/ImgSrv/370/195/NIGHT_SHARK_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_night_shark.png', 'NIGHT SHARK RGB', 75000, 'Form Factor=ATX'),
(19, 'https://www.sharkoon.com/ImgSrv/370/195/NIGHT_SHARK/prod_over/Cases_and_Power/Midi_ATX/prod_over_night_shark_led.jpg', 'NIGHT SHARK', 85000, 'Form Factor=ATX'),
(20, 'https://www.sharkoon.com/ImgSrv/370/195/NIGHT_SHARK_Lite/prod_over/Cases_and_Power/Midi_ATX/prod_over_night_shark_lite.jpg', 'NIGHT SHARK Lite', 65000, 'Form Factor=ATX'),
(21, 'https://www.sharkoon.com/ImgSrv/370/195/PURE_STEEL_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_pure_steel.png', 'PURE STEEL RGB', 90000, 'Form Factor=ATX'),
(22, 'https://www.sharkoon.com/ImgSrv/370/195/PURE_STEEL/prod_over/Cases_and_Power/Midi_ATX/prod_over_pure_steel_led.jpg', 'PURE STEEL', 35000, 'Form Factor=ATX'),
(23, 'https://www.sharkoon.com/ImgSrv/370/195/VG7_W_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_vg7-w_rgb.png', 'VG7-W RGB', 90000, 'Form Factor=ATX'),
(24, 'https://www.sharkoon.com/ImgSrv/370/195/VG7_W/prod_over/Cases_and_Power/Midi_ATX/prod_over_vg7-w.png', 'VG7-W', 35000, 'Form Factor=ATX'),
(25, 'https://www.sharkoon.com/ImgSrv/370/195/VG6_W_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_vg6-w_rgb.png', 'VG6-W RGB', 55000, 'Form Factor=ATX'),
(26, 'https://www.sharkoon.com/ImgSrv/370/195/VG6_W/prod_over/Cases_and_Power/Midi_ATX/prod_over_vg6-w_LED.png', 'VG6-W', 60000, 'Form Factor=ATX'),
(27, 'https://www.sharkoon.com/ImgSrv/370/195/TG4_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_tg4_RGB.png', 'TG4 RGB', 70000, 'Form Factor=ATX'),
(28, 'https://www.sharkoon.com/ImgSrv/370/195/TG4/prod_over/Cases_and_Power/Midi_ATX/prod_over_tg4_led.jpg', 'TG4', 20000, 'Form Factor=ATX'),
(29, 'https://www.sharkoon.com/ImgSrv/370/195/SKILLER_SGC1_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_SGC1_rgb.png', 'SKILLER SGC1 RGB', 80000, 'Form Factor=ATX'),
(30, 'https://www.sharkoon.com/ImgSrv/370/195/SKILLER_SGC1_Window/prod_over/Cases_and_Power/Midi_ATX/prod_over_SGC1_WINDOW.png', 'SKILLER SGC1 Window', 90000, 'Form Factor=ATX'),
(31, 'https://www.sharkoon.com/ImgSrv/370/195/VS7_Window/prod_over/Cases_and_Power/Midi_ATX/prod_over_VS7_window.png', 'VS7 Window', 85000, 'Form Factor=ATX'),
(32, 'https://www.sharkoon.com/ImgSrv/370/195/VS7/prod_over/Cases_and_Power/Midi_ATX/prod_over_VS7.png', 'VS7', 35000, 'Form Factor=ATX'),
(33, 'https://www.sharkoon.com/ImgSrv/370/195/RGB_LIT_200/prod_over/Cases_and_Power/Midi_ATX/prod_over_RGB_LIT_200.png', 'RGB LIT 200', 60000, 'Form Factor=ATX'),
(34, 'https://www.sharkoon.com/ImgSrv/370/195/TG5_Pro_RGB/prod_over/Cases_and_Power/Midi_ATX/prod_over_TG5_Pro_RGB.png', 'TG5 Pro RGB', 30000, 'Form Factor=ATX'),
(35, 'https://www.sharkoon.com/ImgSrv/370/195/REV220/prod_over/Cases_and_Power/Midi_ATX/prod_over_Rev220.png', 'REV220', 55000, 'Form Factor=ATX'),
(36, 'https://www.sharkoon.com/ImgSrv/370/195/REV200/prod_over/Cases_and_Power/Midi_ATX/prod_over_Rev200.png', 'REV200', 15000, 'Form Factor=ATX'),
(37, 'https://www.sharkoon.com/ImgSrv/370/195/RGB_LIT_100/prod_over/Cases_and_Power/Midi_ATX/prod_over_RGB_LIT_100.png', 'RGB LIT 100', 95000, 'Form Factor=ATX'),
(38, 'https://www.sharkoon.com/ImgSrv/370/195/TG5/prod_over/Cases_and_Power/Midi_ATX/prod_over_tg5.png', 'TG5', 50000, 'Form Factor=ATX'),
(39, 'https://www.sharkoon.com/ImgSrv/370/195/S25_W/prod_over/Cases_and_Power/Midi_ATX/prod_over_S25-W.png', 'S25-W', 25000, 'Form Factor=ATX'),
(40, 'https://www.sharkoon.com/ImgSrv/370/195/S25_V/prod_over/Cases_and_Power/Midi_ATX/prod_over_S25-V.png', 'S25-V', 10000, 'Form Factor=ATX'),
(41, 'https://www.sharkoon.com/ImgSrv/370/195/VG5_W/prod_over/Cases_and_Power/Midi_ATX/prod_over_vg5-w.png', 'VG5-W', 80000, 'Form Factor=ATX'),
(42, 'https://www.sharkoon.com/ImgSrv/370/195/VG5_V/prod_over/Cases_and_Power/Midi_ATX/prod_over_VG5-V.png', 'VG5-V', 10000, 'Form Factor=ATX'),
(43, 'https://www.sharkoon.com/ImgSrv/370/195/VG4_V/prod_over/Cases_and_Power/Midi_ATX/prod_over_vg4-v.png', 'VG4-V', 80000, 'Form Factor=ATX'),
(44, 'https://www.sharkoon.com/ImgSrv/370/195/M25_Silent_PCGH/prod_over/Cases_and_Power/Midi_ATX/prod_over_M25_Silent_PCGH_2.png', 'M25 Silent PCGH', 35000, 'Form Factor=ATX'),
(45, 'https://www.sharkoon.com/ImgSrv/370/195/M25_W/prod_over/Cases_and_Power/Midi_ATX/prod_over_M25-W.png', 'M25-W', 95000, 'Form Factor=ATX'),
(46, 'https://www.sharkoon.com/ImgSrv/370/195/M25_V/prod_over/Cases_and_Power/Midi_ATX/prod_over_M25-V.png', 'M25-V', 30000, 'Form Factor=ATX'),
(47, 'https://www.sharkoon.com/ImgSrv/370/195/VS4_W/prod_over/Cases_and_Power/Midi_ATX/prod_over_vs4-w.png', 'VS4-W', 95000, 'Form Factor=ATX'),
(48, 'https://www.sharkoon.com/ImgSrv/370/195/VS4_V/prod_over/Cases_and_Power/Midi_ATX/prod_over_vs4-v.png', 'VS4-V', 10000, 'Form Factor=ATX'),
(49, 'https://www.sharkoon.com/ImgSrv/370/195/VS4_S/prod_over/Cases_and_Power/Midi_ATX/prod_over_vs4-s.png', 'VS4-S', 40000, 'Form Factor=ATX'),
(50, 'https://www.sharkoon.com/ImgSrv/370/195/MS_Y1000/prod_over/Cases_and_Power/Micro_ATX/prod_over_MS-Y1000.png', 'MS-Y1000', 60000, 'Form Factor=Micro-ATX'),
(51, 'https://www.sharkoon.com/ImgSrv/370/195/MS_Z1000/prod_over/Cases_and_Power/Micro_ATX/prod_over_MS-Z1000.png', 'MS-Z1000', 85000, 'Form Factor=Micro-ATX'),
(52, 'https://www.sharkoon.com/ImgSrv/370/195/S1000/prod_over/Cases_and_Power/Micro_ATX/prod_over_S1000.png', 'S1000', 75000, 'Form Factor=Micro-ATX'),
(53, 'https://www.sharkoon.com/ImgSrv/370/195/S1000__Window/prod_over/Cases_and_Power/Micro_ATX/prod_over_S1000_Window.png', 'S1000 Window', 30000, 'Form Factor=Micro-ATX'),
(54, 'https://www.sharkoon.com/ImgSrv/370/195/V1000/prod_over/Cases_and_Power/Micro_ATX/prod_over_V1000.png', 'V1000', 90000, 'Form Factor=Micro-ATX'),
(55, 'https://www.sharkoon.com/ImgSrv/370/195/V1000_RGB/ProductPictures/PC%20Case/V1000_RGB/prod_over_V1000_RGB.png', 'V1000 RGB', 45000, 'Form Factor=Micro-ATX'),
(56, 'https://www.sharkoon.com/ImgSrv/370/195/V1000_Window/prod_over/Cases_and_Power/Micro_ATX/prod_over_V1000_Window.png', 'V1000 Window', 90000, 'Form Factor=Micro-ATX'),
(57, 'https://www.sharkoon.com/ImgSrv/370/195/QB_ONE/prod_over/Cases_and_Power/Mini_ITX/prod_over_qb_one.png', 'QB ONE', 10000, 'Form Factor=Mini-ITX'),
(58, 'https://www.sharkoon.com/ImgSrv/370/195/SHARK_ZONE_C10/prod_over/Cases_and_Power/Mini_ITX/prod_over_shark_zone_c10.png', 'SHARK ZONE C10', 10000, 'Form Factor=Mini-ITX');

-- --------------------------------------------------------

--
-- Table structure for table `psu`
--

CREATE TABLE `psu` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `psu`
--

INSERT INTO `psu` (`id`, `image`, `name`, `price`, `details`) VALUES
(101, '', 'PX-850', 40000, 'Company-name=POWERCOLOR;Series=Extreme series;PciE pin 6/8=0/4;Max Power=850'),
(102, '', 'Super', 85000, 'Company-name=HUNTKEY;Series=Network biao;PciE pin 6/8=0/1;Max Power=300'),
(103, '', 'GAP656 V2', 85000, 'Company-name=RASURBO;Series=Gaming Power;PciE pin 6/8=1/1;Max Power=650'),
(104, '', '1000 G1\n(120-G1-1000-VR) ', 80000, 'Company-name=EVGA;Series=Classified series;PciE pin 6/8=2/6;Max Power=1000'),
(105, '', 'HCP-1200', 95000, 'Company-name=ANTEC;Series=High Current Pro;PciE pin 6/8=0/8;Max Power=1200'),
(106, '', 'MPZ-C001-AFBAT', 50000, 'Company-name=COOLER MASTER;Series=Master Watt Maker (Digital);PciE pin 6/8=0/10;Max Power=1200'),
(107, '', 'ATX-0260 (P)', 50000, 'Company-name=SCYTHE;Series=Rage Power Plug-in;PciE pin 6/8=0/2;Max Power=600'),
(108, '', 'SPCR2-750', 20000, 'Company-name=SCYTHE;Series=Chouriki 2;PciE pin 6/8=0/4;Max Power=750'),
(109, '', 'Capstone-750M', 80000, 'Company-name=ROSEWILL;Series=Capstone Modular series;PciE pin 6/8=0/4;Max Power=750'),
(110, '', 'Radix III 1200 Smart\nDiscontinued', 15000, 'Company-name=TACENS;Series=RADIX III;PciE pin 6/8=3/3;Max Power=1200'),
(111, '', 'Epsilon 85Plus 700', 90000, 'Company-name=FSP;Series=EPSILON 85Plus;PciE pin 6/8=1/1;Max Power=700'),
(112, '', 'RS-A00-AFBA-G1', 35000, 'Company-name=COOLER MASTER;Series=V series;PciE pin 6/8=0/8;Max Power=1000'),
(113, '', 'LDLC-BG-500', 90000, 'Company-name=LDLC;Series=BG series;PciE pin 6/8=0/2;Max Power=500'),
(114, '', 'PCD013', 45000, 'Company-name=ACBEL;Series=iPOWER M90 series;PciE pin 6/8=0/4;Max Power=500'),
(115, '', 'HCG-750', 45000, 'Company-name=ANTEC;Series=High Current Gamer  ;PciE pin 6/8=0/4;Max Power=750'),
(116, '', 'ELT620AWT-ECO\nDiscontinued', 55000, 'Company-name=ENERMAX;Series=Liberty ECO;PciE pin 6/8=0/4;Max Power=620'),
(117, '', 'PCB025', 85000, 'Company-name=ACBEL;Series=iPOWER G series;PciE pin 6/8=1/0;Max Power=350'),
(118, '', 'BQ L8-400WDiscontinued', 95000, 'Company-name=BEQUIET;Series=Pure PowerL8 ;PciE pin 6/8=0/2;Max Power=400 '),
(119, '', 'ST-400CABA', 80000, 'Company-name=JOUJYE;Series=ST CABA series;PciE pin 6/8=0/0;Max Power=400'),
(120, '', 'PCB044', 50000, 'Company-name=ACBEL;Series=iPOWER G series;PciE pin 6/8=2/2;Max Power=550'),
(121, '', 'G650-MAS', 70000, 'Company-name=LEPA;Series=G series;PciE pin 6/8=0/4;Max Power=650 '),
(122, '', 'SPS-XP250.TFX.R3', 50000, 'Company-name=XILENCE;Series=TFX;PciE pin 6/8=0/0;Max Power=300'),
(123, '', 'BQT P9-750W\nDiscontinued', 25000, 'Company-name=BEQUIET;Series=Dark Power Pro P9   ;PciE pin 6/8=2/2;Max Power=750'),
(124, '', 'GE-G500A-C1\nDiscontinued', 55000, 'Company-name=GIGABYTE;Series=ODIN Plus;PciE pin 6/8=0/2;Max Power=500'),
(125, '', 'NOX-900K14HE\nDiscontinued', 40000, 'Company-name=NOX;Series=KRYPTON;PciE pin 6/8=2/2;Max Power=900'),
(126, '', 'ABT-700MA1S', 85000, 'Company-name=KINGWIN;Series=Mach 1;PciE pin 6/8=2/2;Max Power=700'),
(127, '', 'XPS-1050W-BEFX\n(P1-1050-BEFX)', 40000, 'Company-name=XFX;Series=Black Edition Full Modular\n(Pro series);PciE pin 6/8=0/6;Max Power=1050'),
(128, '', 'SSR-360GP', 75000, 'Company-name=SEASONIC;Series=G-series ;PciE pin 6/8=1/0;Max Power=360'),
(129, '', '750 G3\n(220-G3-0750-X1)', 30000, 'Company-name=EVGA;Series=Classified series;PciE pin 6/8=0/6;Max Power=750'),
(130, '', 'DSI350-80', 85000, 'Company-name=CWT;Series=DSI series\n(TFX);PciE pin 6/8= /;Max Power=350'),
(131, '', 'TP-1200M', 60000, 'Company-name=Thermaltake;Series=Tough Power;PciE pin 6/8=0/8;Max Power=1200'),
(132, '', 'LDLC-TA-650\nDiscontinued', 45000, 'Company-name=LDLC;Series=TA series\n ;PciE pin 6/8=0/4;Max Power=650'),
(133, '', 'CMPSU-450VX Discontinued', 95000, 'Company-name=CORSAIR;Series=VX series;PciE pin 6/8=1/0;Max Power=450'),
(134, '', 'Tachyon-750', 30000, 'Company-name=ROSEWILL;Series=Tachyon series;PciE pin 6/8=0/4;Max Power=750 '),
(135, '', 'ZM600-LX', 35000, 'Company-name=ZALMAN;Series=LX series ;PciE pin 6/8=0/2;Max Power=600'),
(136, '', 'GZ-EQS53N-C1', 90000, 'Company-name=GIGABYTE;Series=Hercules X;PciE pin 6/8=0/2;Max Power=530'),
(137, '', 'RX-400AF', 25000, 'Company-name=RAIDMAX;Series=Blackstone;PciE pin 6/8=0/1;Max Power=400'),
(138, '', 'ULT-LSP650\nDiscontinued', 85000, 'Company-name=ULTRA;Series=LSP ;PciE pin 6/8=2/0;Max Power=650'),
(139, '', 'CFT-600-14CS\nDiscontinued', 55000, 'Company-name=CHIEFTEC;Series=SUPER series;PciE pin 6/8=1/0;Max Power=600'),
(140, '', 'W0133  Discontinued', 25000, 'Company-name=Thermaltake;Series=Tough Power;PciE pin 6/8=3/3;Max Power=1200'),
(141, '', 'RD500-2-DB', 85000, 'Company-name=ROSEWILL;Series=Stallion;PciE pin 6/8=2/0;Max Power=500'),
(142, '', 'CTG-550C', 45000, 'Company-name=CHIEFTEC;Series=A80 series;PciE pin 6/8=0/2;Max Power=550'),
(143, '', '750 P2\n(220-P2-0750-X1)', 10000, 'Company-name=EVGA;Series=Classified series;PciE pin 6/8=2/4;Max Power=750'),
(144, '', 'XT-600W-STW (P1-600B-XTFR)\nNew!!!', 95000, 'Company-name=XFX;Series=XT series;PciE pin 6/8=0/2;Max Power=600'),
(145, '', 'PSAZ-850B14\nDiscontinued', 90000, 'Company-name=AZZA;Series=Dynamo;PciE pin 6/8=2/2;Max Power=850'),
(146, '', 'SF-1000K14HE', 40000, 'Company-name=SUPER FLOWER;Series=Crystal Plus;PciE pin 6/8=3/3;Max Power=1000'),
(147, '', 'NXHM650BZ', 60000, 'Company-name=NOX;Series=Hummer 80 Plus Bronze;PciE pin 6/8=0/2;Max Power=650'),
(148, '', 'PC8029\nDiscontinued', 45000, 'Company-name=ACBEL;Series=ME2 series;PciE pin 6/8=0/0;Max Power=300'),
(149, '', 'RBR750-M\nDiscontinued', 10000, 'Company-name=ROSEWILL;Series=Bronze series;PciE pin 6/8=2/2;Max Power=750'),
(150, '', 'HPU-5M730 Discontinued', 10000, 'Company-name=HIPER;Series=Type M II;PciE pin 6/8=2/2;Max Power=730'),
(151, '', 'PSHII 700', 40000, 'Company-name=CWT;Series=PSH II series;PciE pin 6/8= /;Max Power=700'),
(152, '', 'SS-750AM2\nDiscontinued', 85000, 'Company-name=SEASONIC;Series=M12 II Bronze Evo Edition;PciE pin 6/8=0/4;Max Power=750'),
(153, '', 'RG430-2\nDiscontinued', 65000, 'Company-name=ROSEWILL;Series=80Plus Green;PciE pin 6/8=1/0;Max Power=430'),
(154, '', 'GPN650', 10000, 'Company-name=CWT;Series=GPN series\n(230V only);PciE pin 6/8= /;Max Power=650'),
(155, '', 'V650S\n(RS-650-AMAA-G1) Discontinued', 85000, 'Company-name=COOLER MASTER;Series=VS series\n/\nV Semi-Modular series;PciE pin 6/8=0/2;Max Power=650'),
(156, '', 'AX1000-80PLUS', 25000, 'Company-name=AMACROX;Series=Free Earth 80Plus;PciE pin 6/8=2/2;Max Power=1000'),
(157, '', 'HX750i (RPS0002 / CP-9020072 / 75-010581)', 50000, 'Company-name=CORSAIR;Series=HXi series;PciE pin 6/8=0/6;Max Power=750'),
(158, '', 'SS-850AM\nDiscontinued', 45000, 'Company-name=SEASONIC;Series=M12 II Bronze;PciE pin 6/8=0/4;Max Power=850'),
(159, '', 'Raptor R350PV', 40000, 'Company-name=HEC;Series=Raptor Power;PciE pin 6/8=1/0;Max Power=350'),
(160, '', 'CGR R-550', 45000, 'Company-name=;Series=RS;PciE pin 6/8=1/1;Max Power=550'),
(161, '', 'RPSB-700 Discontinued', 85000, 'Company-name=SCYTHE;Series=Schwarzberg;PciE pin 6/8=0/4;Max Power=700'),
(162, '', 'FX-800GLN', 80000, 'Company-name=FSP;Series=EPSILON;PciE pin 6/8=2/0;Max Power=800'),
(163, '', 'ST50EF-PLUS-SC Discontinued', 25000, 'Company-name=SILVERSTONE;Series=Element ;PciE pin 6/8=2/0;Max Power=500'),
(164, '', 'GoodPower 500W\nDiscontinued', 60000, 'Company-name=XCLIO;Series=Good Power;PciE pin 6/8=1/0;Max Power=500'),
(165, '', 'AD-5620N2-36', 40000, 'Company-name=ANDYSON;Series=B series;PciE pin 6/8=1/1;Max Power=600'),
(166, '', 'X14S4P3-650W', 45000, 'Company-name=XCLIO;Series=Great Power;PciE pin 6/8=4/0;Max Power=650'),
(167, '', 'SF-380A03 x (X=F,A,Ø)', 40000, 'Company-name=SUPER FLOWER;Series=A03 series  ;PciE pin 6/8=0/0;Max Power=380'),
(168, '', 'SS-350SFE', 10000, 'Company-name=SEASONIC;Series=SFX;PciE pin 6/8=0/0;Max Power=350'),
(169, '', 'Xpredator 450M', 15000, 'Company-name=AEROCOOL;Series=Xpredator;PciE pin 6/8=0/1;Max Power=450'),
(170, '', 'ST1500-PT\nComing soon', 80000, 'Company-name=SILVERSTONE;Series=Strider Platinum;PciE pin 6/8= /;Max Power=1500'),
(171, '', 'EES350AWT\nDiscontinued   ', 25000, 'Company-name=ENERMAX;Series=Eco80+;PciE pin 6/8=1/0;Max Power=350'),
(172, '', 'GreenMe650', 60000, 'Company-name=INWIN;Series=GreenMe;PciE pin 6/8=0/2;Max Power=650'),
(173, '', 'ST85-PT', 30000, 'Company-name=SILVERSTONE;Series=Strider Platinum;PciE pin 6/8=0/4;Max Power=850'),
(174, '', 'GZ-EGS85A-D1', 50000, 'Company-name=GIGABYTE;Series=Sumo Gold;PciE pin 6/8=0/3;Max Power=850'),
(175, '', 'HP-550-A12S', 50000, 'Company-name=High Power;Series=Performance;PciE pin 6/8=0/2;Max Power=550'),
(176, '', 'EMX500AGT', 40000, 'Company-name=ENERMAX;Series=MX series;PciE pin 6/8=0/1;Max Power=500'),
(177, '', 'SPS-XPSQ-550.R4\nDiscontinued', 55000, 'Company-name=XILENCE;Series=SQ series;PciE pin 6/8=0/2;Max Power=550'),
(178, '', 'SSR-650TR\nRealHardTechX GOLD AWARD', 40000, 'Company-name=SEASONIC;Series=Prime Titanium Ultra series;PciE pin 6/8=0/4;Max Power=650'),
(179, '', 'Epsilon 85Plus 500', 75000, 'Company-name=FSP;Series=EPSILON 85Plus;PciE pin 6/8=1/1;Max Power=500'),
(180, '', 'Jumper 400', 95000, 'Company-name=HUNTKEY;Series=Jumper;PciE pin 6/8=0/2;Max Power=400'),
(181, '', 'W0379RU Discontinued', 40000, 'Company-name=Thermaltake;Series=TR2;PciE pin 6/8=1/1;Max Power=500'),
(182, '', 'CSP-D700CG\nNew!!!', 75000, 'Company-name=CLUB3D;Series=CSP;PciE pin 6/8=0/4;Max Power=700'),
(183, '', 'LDLC-BG-500', 45000, 'Company-name=LDLC;Series=BG series;PciE pin 6/8=0/2;Max Power=500'),
(184, '', 'BWG450M', 85000, 'Company-name=BITFENIX;Series=Whisper series;PciE pin 6/8=0/2;Max Power=450'),
(185, '', 'APS-500C', 10000, 'Company-name=CHIEFTEC;Series=A-135;PciE pin 6/8=1/0;Max Power=500'),
(186, '', 'RG630-2\nDiscontinued', 45000, 'Company-name=ROSEWILL;Series=80Plus Green;PciE pin 6/8=1/1;Max Power=630'),
(187, '', 'Neo HE380', 90000, 'Company-name=ANTEC;Series=Neo Power;PciE pin 6/8=2/0;Max Power=380'),
(188, '', 'HP-400-G14C\n(OEM)', 10000, 'Company-name=High Power;Series=Absolute series ;PciE pin 6/8= /;Max Power=400'),
(189, '', 'B800-MB', 80000, 'Company-name=LEPA;Series=MaxBron series;PciE pin 6/8=0/4;Max Power=800'),
(190, '', 'SF-450P14PE\nNew!!!', 50000, 'Company-name=SUPER FLOWER;Series=Platinum King;PciE pin 6/8=0/2;Max Power=450'),
(191, '', 'GT-700S', 90000, 'Company-name=AEROCOOL;Series=GT series;PciE pin 6/8=0/4;Max Power=700'),
(192, '', '650 GQ\n(210-GQ-0650-V1)', 35000, 'Company-name=EVGA;Series=Classified series;PciE pin 6/8=0/4;Max Power=650'),
(193, '', '600 BQ\n(110-BQ-0600-K1)', 80000, 'Company-name=EVGA;Series=Classified series;PciE pin 6/8=0/2;Max Power=600'),
(194, '', 'U12-43186\nComing soon', 60000, 'Company-name=ULTRA;Series=X4;PciE pin 6/8= /;Max Power=850'),
(195, '', 'Win+ 450', 35000, 'Company-name=HEC;Series=Win+ Power;PciE pin 6/8=2/0;Max Power=450'),
(196, '', 'A-600BD\nNew!!!', 55000, 'Company-name=CHIEFTEC;Series=A series;PciE pin 6/8=0/2;Max Power=600'),
(197, '', 'AU-450X', 10000, 'Company-name=CYONIC - PSU REVIEW DATABASE;Series=AUx series;PciE pin 6/8=0/2;Max Power=450'),
(198, '', 'AK-P550FH\nDiscontinued ', 50000, 'Company-name=AKASA;Series=Power + IQ;PciE pin 6/8=2/0;Max Power=550'),
(199, '', 'VS400\n(CP-9020117 / RPS0021)', 65000, 'Company-name=CORSAIR;Series=VS series;PciE pin 6/8=0/1;Max Power=400'),
(200, '', 'KL-C700', 80000, 'Company-name=KOLINK;Series=Core series;PciE pin 6/8=0/4;Max Power=700');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `image` varchar(10000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `image`, `name`, `price`, `details`) VALUES
(54, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-black-sn850-nvme-ssd/gallery/wd-black-sn850-nvme-ssd-front.png.thumb.1280.1280.png', 'WD_BLACK SN850 NVMe™ SSD', 19000, 'Capacity=500 GB;Interface=PCIe Gen4 x4'),
(55, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-black-sn770-nvme-ssd/gallery/wd-black-sn770-nvme-ssd-front.png.thumb.1280.1280.png', 'WD_BLACK SN770 NVMe™ SSD', 34000, 'Capacity=250 GB;Interface=PCIe Gen4 x4'),
(56, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-black-sn750-se-nvme-battlefield-bundle-ssd/gallery/wd-black-sn750-se-nvme-battlefield-bundle-ssd.png.thumb.1280.1280.png', 'WD_BLACK SN750 SE NVMe™ SSD Battlefield™ 2042 PC Game Code Bundle', 24000, 'Capacity=500 GB;Interface=PCIe Gen4'),
(57, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultra-3d-sata-iii-ssd/gallery/ultra-3d-sata-iii-ssd-right.png.thumb.1280.1280.png', 'SanDisk Ultra 3D SSD', 24000, 'Capacity=250 GB;Interface=SATA III'),
(58, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc-hc550-hdd/gallery/ultrastar-dc-hc550-hdd-16tb.png.thumb.1280.1280.png', 'Ultrastar DC HC550', 24000, 'Capacity=16 TB;Interface=SATA'),
(59, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-gold-sata-hdd/gallery/WD-GOLD-1TB.png.thumb.1280.1280.png', 'WD Gold Enterprise Class SATA Hard Drive', 4000, 'Capacity=1 TB;Interface=SATA'),
(60, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-black-sn750-se-nvme-ssd/gallery/wd-black-sn750-se-nvme-ssd-face-right.png.thumb.1280.1280.png', 'WD_BLACK™ SN750 SE NVMe™ SSD', 49000, 'Capacity=250 GB;Interface=PCIe Gen4'),
(61, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-blue-sn550-nvme-ssd/gallery/500gb/wd-blue-sn550-nvme-ssd-front-500gb.png.thumb.1280.1280.png', 'WD Blue™ SN550 NVMe™ SSD', 34000, 'Capacity=500 GB;Interface=PCIe'),
(62, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-red-pro-sata-hdd/gallery/wd-red-pro-2tb.png.thumb.1280.1280.png', 'WD Red Pro NAS Hard Drive', 24000, 'Capacity=2 TB;Interface=SATA'),
(63, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-purple-sata-hdd/gallery/wd-purple-surveillance-hard-drive-1tb.png.thumb.1280.1280.png', 'WD Purple Surveillance Hard Drive', 19000, 'Capacity=1 TB;Interface=SATA'),
(64, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-blue-3d-nand-sata-ssd/gallery/500gb/wd-blue-3d-nand-sata-ssd-500gb-front.png.thumb.1280.1280.png', 'WD Blue™ SATA SSD 2.5”/7mm cased', 39000, 'Capacity=500 GB;Interface=SATA'),
(65, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-red-plus-sata-3-5-hdd/gallery/wd-red-plus-sata-3-5-hdd-1tb.png.thumb.1280.1280.png', 'WD Red™ Plus NAS Hard Drive 3.5\"', 4000, 'Capacity=1 TB;Interface=SATA'),
(66, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-black-sn750-nvme-ssd/gallery/without-heatsink/wd-black-sn750-nvme-ssd-noheatsink1.png.thumb.1280.1280.png', 'WD_BLACK™ SN750 NVMe™ SSD', 44000, 'Capacity=;Interface='),
(67, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ssd-plus-sata-iii-ssd/gallery/ssd-plus-sata-iii-ssd-front.png.thumb.1280.1280.png', 'SanDisk SSD Plus', 44000, 'Capacity=240 GB;Interface=SATA III'),
(68, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-blue-mobile-sata-hdd/gallery/wd-blue-mobile-500gb.png.thumb.1280.1280.png', 'WD Blue PC Mobile Hard Drive', 49000, 'Capacity=1 TB;Interface=SATA'),
(69, '', 'WD_Black™ Performance Mobile Hard Drive', 4000, 'Capacity=250 GB;Interface=SATA III'),
(70, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-purple-pro-sata-hdd/gallery/wd-purple-pro-sata-hdd-front.png.thumb.1280.1280.png', 'WD Purple Pro Surveillance Hard Drive', 4000, 'Capacity=8 TB;Interface=SATA'),
(71, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-blue-desktop-sata-hdd/gallery/wd-blue-pc-desktop-hard-drive-500gb.png.thumb.1280.1280.png', 'WD Blue PC Desktop Hard Drive', 19000, 'Capacity=500 GB;Interface=SATA'),
(72, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/portable/wd-black-sn850-call-of-duty-edition-nvme-ssd/gallery/wd-black-sn850-call-of-duty-edition-nvme-ssd-front.png.thumb.1280.1280.png', 'WD_BLACK™ Call of Duty®: Black Ops Cold War Special Edition SN850 NVMe™ SSD', 19000, 'Capacity=1 TB;Interface=PCIe Gen4 x4'),
(73, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-black-an1500-nvme-ssd/gallery/wd-black-an1500-nvme-ssd.png.thumb.1280.1280.png', 'WD_BLACK™ AN1500 NVMe™ SSD Add-in-Card', 9000, 'Capacity=1 TB;Interface=PCIe'),
(74, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-gold-nvme-ssd/gallery/960/wd-gold-nvme-ssd-9-60-front.png.thumb.1280.1280.png', 'WD Gold™ Enterprise Class NVMe™ SSD', 49000, 'Capacity=960 GB;Interface=PCIe Gen 3.1 1x4 (Compliant to NVMe 1.3c)'),
(75, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc840-nvme-ssd/gallery/ultrastar-dc840-nvme-ssd.png.thumb.1280.1280.png', 'Ultrastar DC SN840', 49000, 'Capacity=1.6 TB;Interface=PCIe 3.1 1x4 or 2x2 (Compliant to NVMe 1.3c)'),
(76, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc-hc530/gallery/ultrastar-dc-hc530.png.thumb.1280.1280.png', 'Ultrastar DC HC530', 24000, 'Capacity=14 TB;Interface=SAS'),
(77, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc-hc520-hdd/gallery/ultrastar-dc-hc520-front-western-digital.png.thumb.1280.1280.png', 'Ultrastar DC HC520', 19000, 'Capacity=12 TB;Interface=SATA'),
(78, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc-hc310-hdd/gallery/ultrastar-dc-hc310-front.png.thumb.1280.1280.png', 'Ultrastar DC HC310', 44000, 'Capacity=4 TB;Interface=SATA'),
(79, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultratar-dc-ha210-sata-hdd/gallery/product-hero-image-ultrastar-dc-ha200-western-digital.png.thumb.1280.1280.png', 'Ultrastar DC HA210', 24000, 'Capacity=1 TB;Interface=SATA'),
(80, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc-hc320-hdd/gallery/ultrastar-dc-hc320-8tb-front-western-digital.png.thumb.1280.1280.png', 'Ultrastar DC HC320', 4000, 'Capacity=8 TB;Interface=SAS'),
(81, '', 'Ultrastar DC HC510', 19000, 'Capacity=8 TB;Interface=SAS'),
(82, '', 'WD Red™ SA500 NAS SATA SSD M.2 2280', 14000, 'Capacity=500 GB;Interface=SATA III'),
(83, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-red-sata-ssd/gallery/wd-red-sata-ssd-500gb.png.thumb.1280.1280.png', 'WD Red™ SA500 NAS SATA SSD 2.5”/7mm cased', 34000, 'Capacity=500 GB;Interface=SATA III'),
(84, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-red-sata-ssd/gallery/wd-red-sata-ssd-500gb.png.thumb.1280.1280.png', 'WD Red™ SA500 NAS SATA SSD 2.5”/7mm cased', 19000, 'Capacity=500 GB;Interface=SATA III'),
(85, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-blue-3d-nand-sata-ssd/gallery/m2/wd-blue-3d-nand-sata-ssd-m2-2280-500GB.png.thumb.1280.1280.png', 'WD Blue™ SATA SSD M.2 2280', 9000, 'Capacity=250 GB;Interface=SATA'),
(86, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wdc-ultrastar-dc-sn640-ssd/gallery/wdc-ultrastar-dc-sn640-ssd.png.thumb.1280.1280.png', 'Ultrastar DC SN640', 34000, 'Capacity=800GB;Interface=PCIe Gen 3.1 1x4 (Compliant to NVMe 1.3c)'),
(87, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-green-sn350-nvme-ssd/gallery/new/wd-green-sn350-nvme-ssd-240gb-hero.png.thumb.1280.1280.png', 'WD Green SN350 NVMe™ SSD', 49000, 'Capacity=240 GB;Interface=PCIe'),
(88, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-red-sata-hdd/gallery/wd-red-3-5-2tb.png.thumb.1280.1280.png', 'WD Red NAS Hard Drive', 29000, 'Capacity=2 TB;Interface=SATA'),
(89, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/merchandising/wd-black-sn750-nvme-ssd-the-game-awards/gallery/wd-black-sn750-nvme-ssd-the-game-awards-with-heatsink.png.thumb.1280.1280.png', 'WD_BLACK - The Game Awards Limited Edition', 14000, 'Capacity=1 TB;Interface=PCIe'),
(90, '', 'Clearance - WD Red™ Plus NAS Hard Drive 3.5\"', 9000, 'Capacity=2 TB;Interface=SATA'),
(91, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/extreme-pro-m2-nvme-3d-ssd/gallery/extreme-pro-m2-nvme-3d-ssd-500gb-right.png.thumb.1280.1280.png', 'SanDisk Extreme PRO M.2 NVMe 3D SSD', 9000, 'Capacity=500 GB;Interface=PCIe'),
(92, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-green-ssd/gallery/wd-green-sata-ssd-M2-front-240GB.png.thumb.1280.1280.png', 'WD Green™ SATA SSD M.2 2280', 24000, 'Capacity=240 GB;Interface=SATA III'),
(93, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc-hc560-hdd/gallery/ultrastar-dc-hc560-HC560-standing-L-HR-20TB.png.thumb.1280.1280.png', 'Ultrastar DC HC560', 34000, 'Capacity=20 TB;Interface=SATA'),
(94, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc-hc330-hdd/gallery/ultrastar-dc-hc330-front.png.thumb.1280.1280.png', 'Ultrastar DC HC330', 24000, 'Capacity=10 TB;Interface=SATA'),
(95, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-easystore-sata-2-5-ssd/gallery/wd-easystore-sata-2-5-ssd-240gb.png.thumb.1280.1280.png', 'easystore™ SSD', 19000, 'Capacity=240 GB;Interface='),
(96, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wdc-pc-sn530/gallery/pc-sn530-ssd-family.png.thumb.1280.1280.png', 'PC SN530 NVMe SSD', 9000, 'Capacity=256 GB;Interface=PCIe Gen3 x4 NVMe v1.4'),
(97, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wdc-pc-sn530/gallery/featured-product-ix-sn530-nvme-ssd.png.thumb.1280.1280.png', 'Industrial NVMe SSD', 4000, 'Capacity=256 GB;Interface=PCIe Gen3 x4 NVMe v1.4'),
(98, '', 'Western Digital CL SN520 NVMe SSD', 49000, 'Capacity=128 GB;Interface=PCIe Gen3 x2 NVMe v1.3'),
(99, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/pc-sn810-nvme-ssd/gallery/pc-sn810-nvme-ssd.png.thumb.1280.1280.png', 'Western Digital PC SN810 NVMe SSD', 9000, 'Capacity=256 GB;Interface=PCIe Gen4'),
(100, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-purple-sata-hdd/gallery/wd-purple-surveillance-hard-drive-18tb.png.thumb.1280.1280.png', 'Clearance - WD Purple Surveillance Hard Drive', 4000, 'Capacity=18 TB;Interface=SATA'),
(101, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wdc-pc-sa530/gallery/product-hero-image-pc-sa530-ssd.png.thumb.1280.1280.png', 'PC SA530 3D NAND SATA SSD', 24000, 'Capacity=256 GB;Interface=SATA'),
(102, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/ultrastar-dc-zn540-nvme-ssd/gallery/Ultrastar-DC-ZN540-NVMe-ZNS-SSD-front-LR.png.thumb.1280.1280.png', 'Ultrastar DC ZN540', 34000, 'Capacity=1024 GB;Interface=PCIe 3.0 1x4 or 2x2, NVMe 1.3c'),
(103, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-green-ssd/gallery/480gb/wd-green-ssd-480gb-front.png.thumb.1280.1280.png', 'WD Green™ SATA SSD 2.5”/7mm cased', 24000, 'Capacity=240 GB;Interface=SATA III'),
(104, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-red-sn700-nvme-ssd/gallery/wd-red-sn700-nvme-ssd-250GB-front.png.thumb.1280.1280.png', 'WD Red SN700 NVMe SSD', 24000, 'Capacity=250 GB;Interface='),
(105, 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-blue-sn570-nvme-ssd/gallery/wd-blue-sn570-nvme-ssd-straight-front-250GB.png.thumb.1280.1280.png', 'WD Blue SN570 NVMe™ SSD', 4000, 'Capacity=250 GB;Interface=PCIe Gen3 x4 NVMe v1.4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `component_id`
--
ALTER TABLE `component_id`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpu_cooler`
--
ALTER TABLE `cpu_cooler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graphics_card`
--
ALTER TABLE `graphics_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memory`
--
ALTER TABLE `memory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `comp_id` (`comp_id`);

--
-- Indexes for table `pc_case`
--
ALTER TABLE `pc_case`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psu`
--
ALTER TABLE `psu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `component_id`
--
ALTER TABLE `component_id`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23343;

--
-- AUTO_INCREMENT for table `cpu_cooler`
--
ALTER TABLE `cpu_cooler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `graphics_card`
--
ALTER TABLE `graphics_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `login_info`
--
ALTER TABLE `login_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `memory`
--
ALTER TABLE `memory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pc_case`
--
ALTER TABLE `pc_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `psu`
--
ALTER TABLE `psu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `login_info` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`comp_id`) REFERENCES `component_id` (`comp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
