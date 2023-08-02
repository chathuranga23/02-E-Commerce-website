-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2023 at 11:37 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin01', 'admin01@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(3, 1, 9, 'ASUS PROART PA247CV 1080P USB-C CALMAN VERIFIED MONITOR', 120, 1, 'monitor-1-1'),
(4, 1, 8, 'ASUS VIVOBOOK PRO 14X OLED I5 - RTX 3050', 280, 1, 'laptop-1-1.png'),
(5, 1, 12, 'LOGITECH G PRO X SUPERLIGHT WIRELESS GAMING MOUSE223', 32, 1, 'mouse-1.webp');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int NOT NULL,
  `placed_on` date NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dropdown` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int NOT NULL,
  `stock` varchar(100) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `dropdown`, `details`, `price`, `stock`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'ASUS ZENBOOK OLED UX3402VA I5 13TH GEN', 'Laptop', 'Intel® EVO Core™ i5-1340P Processor (12M Cache, up to 4.60 GHz) 12\r\nCore, 16Threads\r\n8GB LPDDR5 4800MHZ\r\n512GB GEN4 NVME M.2 SSD\r\n14&#34; WQXGA (2560 x 1600) 16:10 100% sRGB color gamut\r\nIntel Iris XE Graphics\r\nBacklit keyboard, Fingerprint Reader\r\n1.35 kg , 75WHrs\r\nFree Asus Sleeve\r\n2 Years warranty\r\nGeniune Windows 11 Home 64Bit Pre-installed\r\nMicrosoft Office Home & Student 2021', 225, '6', 'laptop-1.webp', 'laptop-2.webp', 'laptop-3.webp'),
(8, 'ASUS VIVOBOOK PRO 14X OLED I5 - RTX 3050', 'Laptop', 'ASUS Vivobook Pro 14X OLED i5 - RTX 3050\r\nIntel® Core™ i5-11300H (8M Cache, up to 4.40 GHz)\r\n16GB DDR4 3200Mhz Onboard\r\n512GB M.2 NVME SSD\r\n14.0-inch, 2.8K OLED 16:10 aspect ratio, 0.2ms response time,\r\n90Hz refresh rate,100% DCI-P3 color gamut, PANTONE Validated, Glossy display\r\nVESA CERTIFIED Display HDR True Black 600, 1.07 billion colors,\r\nNVIDIA®️ GeForce®️ RTX 3050, 4GB GDDR6\r\n1.45 kg, 63WHrs\r\nBacklit Chiclet Keyboard, with Fingerprint Reader , Precision Touchpad\r\nFree ASUS Carry bag, Free', 280, '2', 'laptop-1-1.png', 'laptop-1-2.png', 'laptop-1-3.png'),
(9, 'ASUS PROART PA247CV 1080P USB-C CALMAN VERIFIED MONITOR', 'Monitor', '23.8-inch Full HD (1920 x 1080) LED backlight display with IPS 178° wide viewing angle panel. International color standard 100% sRGB and 100% Rec. 709 wide color gamut. Calman Verified with factory calibrated for excellent Delta E ', 120, '3', 'monitor-1-1', 'monitor-1-2.png', 'monitor-1-3.png'),
(10, 'ASUS VA24DQ EYE CARE 24&#34; IPS FRAMELESS 75HZ MONITOR', 'Monitor', 'Model\r\nVA24DQ\r\nDisplay\r\nPanel Size (inch) : 23.8\r\nAspect Ratio : 16:9\r\nDisplay Viewing Area (H x V) : 527.04 x 296.46 mm\r\nDisplay Surface : Non-Glare\r\nBacklight Type : LED\r\nPanel Type : IPS\r\nViewing Angle (CR≧10, H/V) : 178°/ 178°\r\nPixel Pitch : 0.2745mm\r\nResolution : 1920x1080\r\nBrightness (Typ.) : 250cd/㎡\r\nContrast Ratio (Typ.) : 1000:1\r\nASUS Smart Contrast Ratio (ASCR) : 100,000,000:1\r\nDisplay Colors : 16.7M\r\nResponse Time : 5ms(GTG)\r\nRefresh Rate (Max) : 75Hz\r\nFlicker-free : Yes\r\nVideo Featur', 100, '5', 'monitor-2-1.png', 'monitor-2-2.png', 'monitor-2-3.png'),
(11, 'Sony Alpha a7 IV Mirrorless Digital Camera', 'Camera', '3MP Full-Frame Exmor R CMOS Sensor\r\nUp to 10 fps Shooting, ISO 100-51200\r\n4K 60p Video in 10-Bit, S-Cinetone\r\n3.68m-Dot EVF with 120 fps Refresh Rate', 160, '2', 'camera-1.webp', 'camera-2.webp', 'camera-3.webp'),
(12, 'LOGITECH G PRO X SUPERLIGHT WIRELESS GAMING MOUSE223', 'Mouse', 'PHYSICAL SPECIFICATIONS\r\nHeight: 4.92 in (125.0 mm)\r\nWidth: 2.50 in (63.5 mm)\r\nDepth: 1.57 in (40.0 mm)\r\nWeight: ', 32, '8', 'mouse-1.webp', 'mouse-2.webp', 'mouse-3.webp'),
(45, 'REALME C35 PHONE', 'Smartphone', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus dolorum maiores corporis ea earum dolores aut nobis voluptatum nam, quaerat a, beatae velit eaque obcaecati repudiandae vero ad, alias necessitatibus optio facere suscipit? Nam, sint veniam porro corporis consectetur quaerat maiores labore earum itaque, dolorem minima culpa inventore adipisci natus. Maxime numquam aspernatur consequuntur? Itaque quibusdam cupiditate expedita id! Est dolore odio a natus ipsa ullam aperiam maiores rati', 95, '5', 'smartphone-1.webp', 'smartphone-2.webp', 'smartphone-3.webp'),
(83, 'SONY ALPHA A7 III MIRRORLESS DIGITAA CAMERA', 'Camera', '24MP Full-Frame Exmor R BSI CMOS Sensor\r\nBIONZ X Image Processor & Front-End LSI\r\n693-Point Hybrid AF System\r\nUHD 4K30p Video with HLG & S-Log3 Gammas', 120, '5', 'camera-2.webp', 'camera-2-1.png', 'camera-2-2.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'user01', 'user01@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(1, 1, 1, 'ASUS ZENBOOK OLED UX3402VA I5 13TH GEN', 225, 'laptop-1.webp'),
(2, 1, 11, 'Sony Alpha a7 IV Mirrorless Digital Camera', 160, 'camera-1.webp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
