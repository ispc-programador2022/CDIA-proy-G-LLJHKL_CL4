-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-11-2022 a las 13:28:43
-- Versión del servidor: 5.7.33-0ubuntu0.16.04.1
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scrap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL DEFAULT 'nada',
  `otra` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `descripcion`, `otra`) VALUES
(1, 'accesorios', 'accesorios'),
(2, 'aire_acondicionado_ventilador', 'aire_acondicionado_ventilador'),
(3, 'almacenamiento', 'almacenamiento'),
(4, 'apple', 'apple'),
(5, 'auriculares_y_microfonos', 'auriculares_y_microfonos'),
(6, 'bicicletas', 'bicicletas'),
(7, 'cables', 'cables'),
(8, 'camaras', 'camaras'),
(9, 'combos', 'combos'),
(10, 'conectividad_y_redes', 'conectividad_y_redes'),
(11, 'consolas', 'consolas'),
(12, 'equipos', 'equipos'),
(13, 'estabilizadores_y_ups', 'estabilizadores_y_ups'),
(14, 'fuentes', 'fuentes'),
(15, 'gabinetes', 'gabinetes'),
(16, 'impresoras', 'impresoras'),
(17, 'joystick', 'joystick'),
(18, 'linea_hogar', 'linea_hogar'),
(19, 'memorias', 'memorias'),
(20, 'microprocesador', 'microprocesador'),
(21, 'monitores', 'monitores'),
(22, 'motherboard', 'motherboard'),
(23, 'mouse_pad', 'mouse_pad'),
(24, 'mouses', 'mouses'),
(25, 'multimedia', 'multimedia'),
(26, 'notebooks', 'notebooks'),
(27, 'parlantes', 'parlantes'),
(28, 'pen_drives', 'pen_drives'),
(29, 'peque?os_electrodomesticos', 'peque?os_electrodomesticos'),
(30, 'placas_de_video', 'placas_de_video'),
(31, 'proyectores', 'proyectores'),
(32, 'rack', 'rack'),
(33, 'refrigeracion', 'refrigeracion'),
(34, 'servidores', 'servidores'),
(35, 'sillas_gamer', 'sillas_gamer'),
(36, 'smart_home', 'smart_home'),
(37, 'smartwatches', 'smartwatches'),
(38, 'software', 'software'),
(39, 'tablet_y_ebook', 'tablet_y_ebook'),
(40, 'teclados', 'teclados'),
(41, 'telefonia', 'telefonia'),
(42, 'televisores', 'televisores'),
(43, 'accesorios', 'accesorios'),
(44, 'aire_acondicionado_ventilador', 'aire_acondicionado_ventilador'),
(45, 'almacenamiento', 'almacenamiento'),
(46, 'apple', 'apple'),
(47, 'auriculares_y_microfonos', 'auriculares_y_microfonos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `info` varchar(250) NOT NULL,
  `precio` double NOT NULL,
  `precio_promo` double NOT NULL,
  `imagen` varchar(500) NOT NULL,
  `stock` varchar(50) NOT NULL,
  `envio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `info`, `precio`, `precio_promo`, `imagen`, `stock`, `envio`) VALUES
(1, 'NOTEBOOK_NSX_14"_EPSILON_CLOUD_N3350_4GB_64GB_FREE', 47.008, 51.708, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(2, 'NOTEBOOK_NSX_14"_EPSILON_CLOUD_N3350_4GB_64GB_W11H', 51.014, 56.115, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(3, 'NOTEBOOK_CX_14_INTEL_4G+64G+W10H_-_CLOUDBOOK_IPS', 52.655, 57.921, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(4, 'CHROMEBOOK_LENOVO_11.6"_100E_AMD_A4-9120C_4GB_32GB', 53.813, 59.194, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(5, 'CLOUDBOOK_HDC_14"_CY-14N3450-464_CELERON_N3450_4GB_64GB_FHD_', 54.907, 60.397, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(6, 'NOTEBOOK_GFAST_15.6"_N4020_4GB_120GB_W11', 62.627, 68.889, 'Poco_stock.', 'Comprar', '_Agregar'),
(7, 'NOTEBOOK_NSX_14"_EPSILON_CELERON_8GB_256GB_FREE', 64.499, 70.949, 'En_stock', 'Envío_a_domicilio_en_72hs', '_Comprar'),
(8, 'NOTEBOOK_CX_11.6"_N3350_4GB_64GB_256GB_W10P', 68.901, 75.791, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(9, 'NOTEBOOK_NSX_14"_EPSILON_CELERON_J4005_8GB_480GB_FREE', 71.587, 78.745, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(10, 'NOTEBOOK_HYUNDAI_14"_HYBOOK_N4020_4GB_128GB_W10H_S/FUENTE', 71.597, 78.757, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(11, 'NOTEBOOK_CX_14"_A9-9400_4GB_64GB_W10P', 74.506, 81.957, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(12, 'NOTEBOOK_CX_15.6"_N3350_4GB_64GB_256GB_W10P', 76.238, 83.862, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(13, 'NOTEBOOK_GATEWAY_15.6"_GWTN156-11BK_PENTIUM_N5030_4GB_128GB_', 76.924, 84.617, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(14, 'NOTEBOOK_CX_15.6"_N3350_4GB_64GB_1TB_W10P', 77.844, 85.628, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(15, 'NOTEBOOK_BANGHO_14"_MAX_L4_I1_N5205_4GB_120GB_FREE', 79.022, 86.924, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(16, 'NOTEBOOK_NSX_14"_EPSILON_CELERON_J4005_8GB_256GB_W10', 81.136, 89.249, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(17, 'NOTEBOOK_CX_14"_INTEL_PENTIUM_4G+64G+W10H', 81.429, 89.572, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(18, 'NOTEBOOK_CX_14"_A9-9400_4GB_64GB_128GB_W10P', 81.81, 89.991, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(19, 'NOTEBOOK_IQUAL_14"_NQ1_N4010_4GB_128GB_FREE', 83.947, 92.342, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(20, 'NOTEBOOK_BANGHO_MAX_L4_I1_14"/4GB/SSD120/W10_HOME', 86.136, 94.75, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(21, 'NOTEBOOK_BGH_14"_POSITIVO_AT510_N4000_4GB_64GB_W10H', 86.769, 95.446, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(22, 'NOTEBOOK_14"_CX_INTEL_PENTIUM_4GB_SSD_64GB_W10H', 90.507, 99.558, 'En_stock', 'Comprar', '_Agregar'),
(23, 'NOTEBOOK_CX_14"_SC7180_4GB_128GB_W10P_LTE', 91.351, 100.487, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(24, 'NOTEBOOK_LENOVO_14"_E41-25_A4-4350B_4GB_500GB_FREE_DOS', 92.199, 101.419, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(25, 'NOTEBOOK_CX_14"_A9-9400_8GB_64GB_256GB_W10P', 96.813, 106.494, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(26, 'CHROMEBOOK_LENOVO_14"_AMD_A4_9120C_4GB_32GB_14E', 102.54, 112.794, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(27, 'NOTEBOOK_LENOVO_14"_14W_A6_4GB_128GB_W10P', 102.916, 113.207, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(28, 'NOTEBOOK_ASUS_15.6"_X543_N4020_4GB_1TB_FREE', 103.575, 113.933, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(29, 'NOTEBOOK_EXO_15.6"_SMART_XQ3H-S3182_I3-1115G4_8GB_256GB_LINUX', 103.768, 114.144, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(30, 'NOTEBOOK_ASUS_15.6"_X543MA-GQ1381_N4000_4GB_1TB_FREE', 104.25, 114.675, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(31, 'NOTEBOOK_LENOVO_15.6"_V15_N5030_4GB_500GB_HDD', 109.448, 120.393, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(32, 'NOTEBOOK_HP_14"_240_G8_N4020_4GB_500GB_W10H', 114.23, 125.653, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(33, 'NOTEBOOK_HP_14"_14DK1025WM_AMD_RYZEN_R3_3250_8GB_1TB_W10', 116.25, 127.875, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(34, 'NOTEBOOK_NSX_15.6"_ARGUS_I3-10110U_4GB_250GB_FREE', 116.728, 128.4, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(35, 'NOTEBOOK_HDC_15.6"_HY15-I3-8256_INTEL_I3-1005G1_8GB_256GB_M.', 117.908, 129.699, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(36, 'NOTEBOOK_HP_14"_245_G8_RYZEN_3_3250U_4GB_1TB_FREE', 118.198, 130.018, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(37, 'NOTEBOOK_LENOVO_14"_IDEAPAD_1_14IGL05_N4020_4GB_128GB_W11S', 119.906, 131.897, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(38, 'NOTEBOOK_HP_14"_240_G8_N4020_4GB_500GB_W10H_', 120.881, 132.969, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(39, 'NOTEBOOK_DELL_15.6"_INSPIRON_3502_N4020_4GB_128GB_W10H', 121.271, 133.398, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(40, 'NOTEBOOK_BANGHO_15.6"_MAX_L5_I3_8GB_240GB_FREE', 122.422, 134.664, 'En_stock', 'Comprar', '_Agregar'),
(41, 'NOTEBOOK_LENOVO_15.6"_V15_I3-10110U_8GB_256GB_FREE', 122.631, 134.894, 'En_stock', 'Comprar', '_Agregar'),
(42, 'NOTEBOOK_HP_14"_245_G8_ATHLON_3020E_4GB_1TB_FREE', 124.185, 136.603, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(43, 'NOTEBOOK_NSX_15.6"_ARGUS_I3-10110U_12GB_250GB_FREE', 124.75, 137.225, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(44, 'NOTEBOOK_ASUS_15.6"_X515EA_I3-1115G4_4GB_256GB_FHD_FREE', 125.02, 137.522, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(45, 'NOTEBOOK_ASUS_11.6"_BR1100CKA_HD_N4500_4GB_128GB_EMMC', 125.253, 137.779, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(46, 'NOTEBOOK_HP_14"_240_G8_I3-1005G1_8GB_1TB_W10H', 125.645, 138.21, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(47, 'NOTEBOOK_NSX_15.6"_ARGUS_I3-10110U_12GB_480GB_FREE', 126.092, 138.701, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(48, 'NOTEBOOK_ASUS_14"_E410_PENTIUM_N6000_4GB_128GB_W11H', 126.485, 139.133, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(49, 'NOTEBOOK_HP_14"_240_G8_N4020_4GB_500GB_W10H', 128.52, 141.372, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(50, 'NOTEBOOK_HP_14"_245_G8_ATHLON_3020E_8GB_240GB_FREE', 129.934, 142.928, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(51, 'NOTEBOOK_HP_14"_240_G8_N4020_8GB_240GB_W10H', 131.795, 144.974, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(52, 'NOTEBOOK_NSX_15.6"_ARGUS_I3-10110U_4GB_250GB_W11H', 132.771, 146.048, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(53, 'NOTEBOOK_BANGHO_15.6"_MAX_L5_I3_8GB_240GB_W11H', 135.644, 149.209, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(54, 'NOTEBOOK_ASUS_15.6"_X515EA_I3-1115G4_4GB_256GB_HD_W11', 136.152, 149.767, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(55, 'NOTEBOOK_DELL_14"_VOSTRO_3400_I3-1115G4_4GB_1TB_UBUNTU', 136.329, 149.962, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(56, 'NOTEBOOK_NSX_15.6"_ARGUS_I3-10110U_12GB_480GB_W11H', 137.006, 150.707, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(57, 'NOTEBOOK_HP_14"_240_G8_I3-1115G4_8GB_1TB_W11H', 138.76, 152.636, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(58, 'NOTEBOOK_LENOVO_14"_IDEAPAD_3_ATHLON_3050U_4GB_256GB_FREE', 139.44, 153.384, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(59, 'NOTEBOOK_NSX_14"_KAIROS_I5-10210U_16GB_500GB_FREE', 140.118, 154.13, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(60, 'NOTEBOOK_HP_14"_240_G8_I3-1005G1_4GB_1TB_FREEDOS', 140.241, 154.265, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(61, 'NOTEBOOK_ASUS_15.6"_X515EA_I3-1115G4_4GB_256GB_FHD_W11', 141.74, 155.914, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(62, 'NOTEBOOK_DELL_15.6"_INSPIRON_3511_I3-1115G4_4GB_256GB_UBUNTU', 142.903, 157.193, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(63, 'NOTEBOOK_IQUAL_14"_NQ5_I5_4GB_500GB_FREE', 145.144, 159.658, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(64, 'NOTEBOOK_HP_14"_240_G8_I3-1005G1_8GB_240GB_FREE', 146.48, 161.127, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(65, 'NOTEBOOK_LENOVO_14"_IDEAPAD_1_14ADA7_RYZEN_3_3250U_4GB_256GB_W11S', 146.724, 161.396, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(66, 'NOTEBOOK_BANGHO_15.6"_MAX_L5_I5_8GB_240GB_FREE', 146.78, 161.458, 'En_stock', 'Comprar', '_Agregar'),
(67, 'NOTEBOOK_BANGHO_14"_MAX_L4_I5_8GB_240GB_FREE', 146.782, 161.46, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(68, 'NOTEBOOK_LENOVO_15.6"_V15_I3-10110U_8GB_1TB_FREE', 146.97, 161.667, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(69, 'NOTEBOOK_HP_15.6"_15-EF1073WM_ATHLON_3050U_4GB_128GB_W10H_IN', 147.049, 161.754, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(70, 'NOTEBOOK_NSX_15.6"_ARGUS_I5-10210U_8GB_250GB_FREE', 148.147, 162.962, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(71, 'NOTEBOOK_ASUS_15.6"_X515EA_I5-1135G7_8GB_256GB_FHD_FREE', 148.625, 163.487, 'En_stock', 'Comprar', '_Agregar'),
(72, 'NOTEBOOK_HP_14"_245_G8_RYZEN_3_3250U_8GB_240GB_FREE', 149.733, 164.706, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(73, 'NOTEBOOK_LENOVO_14"_V14_RYZEN_3_3250U_8GB_256GB_FREE', 151.53, 166.683, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(74, 'NOTEBOOK_HP_14"_14-CF2077LA_I3-10110U_4GB_256GB_FREE', 151.999, 167.198, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(75, 'NOTEBOOK_DELL_14"_VOSTRO_3405_RYZEN_5_8GB_256GB_FREE', 152.02, 167.222, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(76, 'NOTEBOOK_ASUS_15.6"_X515EA_I5-1135G7_8GB_256GB_FHD_W10P', 153.55, 168.905, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(77, 'NOTEBOOK_NSX_15.6"_ARGUS_I5_8GB_480GB_FREE', 158.905, 174.795, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(78, 'NOTEBOOK_LENOVO_15.6"_V15-IIL_I3-1005G1_8GB_512GB_W10H', 159.03, 174.933, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(79, 'NOTEBOOK_LENOVO_15.6"_IDEAPAD_3_15ITL05_I3-1115G4_8GB_256GB_TOUCH_W11H_ENGLISH', 159.049, 174.953, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(80, 'NOTEBOOK_NSX_14"_KAIROS_I5-10210U_16GB_250GB_W11', 159.062, 174.968, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(81, 'NOTEBOOK_ACER_ASPIRE_3_R3_3250U/4G/1TB/WIN10', 159.486, 175.435, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(82, 'NOTEBOOK_LENOVO_14"_V14_I3-1115G4_8GB_256GB_FREE', 159.93, 175.923, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(83, 'NOTEBOOK_BANGHO_15.6"_MAX_L5_I5_8GB_240GB_W11H', 160.146, 176.161, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(84, 'NOTEBOOK_ASUS_15.6"_X515EA_I3-1115G4_4GB_256GB_HD_FREE', 160.153, 176.169, 'En_stock', 'Comprar', '_Agregar'),
(85, 'NOTEBOOK_NSX_15.6"_ARGUS_I5-10210U_16GB_480GB_FREE', 161.505, 177.656, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(86, 'NOTEBOOK_BANGHO_15.6"_MAX_L5_I7_8GB_480GB_FREE', 161.894, 178.083, 'En_stock', 'Comprar', '_Agregar'),
(87, 'NOTEBOOK_NSX_14"_KAIROS_I7_16GB_500GB_FREE', 163.29, 179.619, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(88, 'NOTEBOOK_NSX_14"_ALKON_I5-1035G1_8GB_240GB_W11H', 164.62, 181.081, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(89, 'NOTEBOOK_NSX_15.6"_ARGUS_I5-10210U_8GB_250GB_W11H', 164.85, 181.335, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(90, 'NOTEBOOK_DELL_15.6"_INSPIRON_3511_I3-1115G4_4GB_256GB_W10H', 165.382, 181.92, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(91, 'NOTEBOOK_DELL_14"_LATITUDE_3410_I3-10110U_4GB_500GB_UBUNTU', 166.745, 183.42, 'En_stock', 'Envío_a_domicilio_en_72hs', '_Comprar'),
(92, 'NOTEBOOK_BANGHO_15.6"_MAX_L5_I5_8GB_240GB_W10', 166.8, 183.48, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(93, 'NOTEBOOK_DELL_15.6"_INSPIRON_3511_I3-1135G7_8GB_256GB_UBUNTU', 169.861, 186.847, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(94, 'NOTEBOOK_HP_14"_240_G8_I5-1035G1_8GB_240GB_FREE', 169.886, 186.875, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(95, 'NOTEBOOK_DELL_14"_VOSTRO_3405_RYZEN_5_8GB_256GB_W10H', 169.96, 186.956, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(96, 'NOTEBOOK_HP_14"_240_G8_I5-1035G1_8GB_1TB_FREE', 170.571, 187.628, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(97, 'NOTEBOOK_LENOVO_14"_IDEAPAD_1_14ADA7_RYZEN_5_3500U_8GB_256GB_W11S', 173.897, 191.287, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(98, 'NOTEBOOK_BANGHO_15.6"_BES_PRO_T5_I5_8GB_240GB_FREE', 174.4, 191.841, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(99, 'NOTEBOOK_BANGHO_15.6"_BES_PRO_T5_I7_8GB_480GB_FREE', 174.559, 192.015, 'En_stock', 'Comprar', '_Agregar'),
(100, 'NOTEBOOK_LENOVO_14"_IDEAPAD_3_I3-1115G4_8GB_256GB_1TB_W11H', 174.72, 192.192, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(101, 'NOTEBOOK_LENOVO_15.6"_V15_I3-1115G4_8GB_256GB_W10H', 175.191, 192.71, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(102, 'NOTEBOOK_HP_14"_245_G8_RYZEN_3_5300U_8GB_240GB_FREE', 175.571, 193.128, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(103, 'NOTEBOOK_HP_14"_245_G8_RYZEN_3_5300U_8GB_1TB_FREE', 175.71, 193.281, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(104, 'NOTEBOOK_NSX_14"_ALKON_I7-1065G1_8GB_240GB_FREE', 175.765, 193.341, 'Poco_stock.', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(105, 'NOTEBOOK_LENOVO_15.6"_V15_I5-1135G7_8GB_256GB_FREE', 175.907, 193.498, 'En_stock', 'Comprar', '_Agregar'),
(106, 'NOTEBOOK_BANGHO_14"_BES_PRO_T4_I5_8GB_240GB_FREE', 176.41, 194.051, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(107, 'NOTEBOOK_NSX_15.6"_ARGUS_I5-10210U_16GB_480GB_W11H', 177.095, 194.805, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(108, 'NOTEBOOK_ASUS_15.6"_VIVOBOOK_RYZEN_3_3250U_8GB_256_FREE', 179.886, 197.874, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(109, 'NOTEBOOK_BANGHO_15.6"_MAX_L5_I7_8GB_480GB_W10P_', 181.91, 200.101, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(110, 'NOTEBOOK_HP_14"_240_G8_I5-1035G1_8GB_256GB_W10P_+_AURICULAR', 182.56, 200.816, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(111, 'NOTEBOOK_LENOVO_15.6"_IDEAPAD_3_15ALC6_RYZEN_5_5500U_8GB_256', 184.262, 202.688, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(112, 'NOTEBOOK_ASUS_15.6"_I5-8250U_8GB_256GB_SSD_W10H', 185.278, 203.806, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(113, 'NOTEBOOK_ASUS_15.6"_X515EA_I5-1135G7_8GB_256GB_FHD_W11', 186.7, 205.37, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(114, 'NOTEBOOK_DELL_14"_VOSTRO_3400_I5-1135G7_8GB_256GB_UBUNTU', 187.393, 206.133, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(115, 'NOTEBOOK_DELL_15.6"_INSPIRON_3515_RYZEN_5_3450U_8GB_256GB_W1', 187.93, 206.723, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(116, 'NOTEBOOK_BANGHO_15.6"_MAX_L5_I7_16GB_480GB_W10P', 189.11, 208.021, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(117, 'NOTEBOOK_DELL_15.6"_INSPIRON_3511_I5-1135G7_8GB_256GB_UBUNTU', 190.283, 209.312, 'En_stock', 'Envío_a_domicilio_en_72hs', 'Comprar'),
(118, 'NOTEBOOK_ACER_15.6"_ASPIRE_5_I7_8GB_256GB_FREE', 190.755, 209.831, 'En_stock', 'Comprar', '_Agregar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id_sub` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `otra` varchar(250) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id_sub`, `nombre`, `otra`, `id_cat`) VALUES
(1, 'varios', 'accesorios', 1),
(2, 'soportes', 'accesorios', 1),
(3, 'Ver_más', 'accesorios', 1),
(4, 'aire_acondicionados', 'aire_acondicionado_ventilador', 2),
(5, 'Ver_más', 'aire_acondicionado_ventilador', 2),
(6, 'discos_sata', 'almacenamiento', 3),
(7, 'disco_de_notebook', 'almacenamiento', 3),
(8, 'externos', 'almacenamiento', 3),
(9, 'ssd', 'almacenamiento', 3),
(10, 'Ver_más', 'almacenamiento', 3),
(11, 'apple', 'apple', 4),
(12, 'Ver_más', 'apple', 4),
(13, 'auriculares_con_microfono', 'auriculares_y_microfonos', 5),
(14, 'auriculares_inalambricos', 'auriculares_y_microfonos', 5),
(15, 'microfonos', 'auriculares_y_microfonos', 5),
(16, 'accesorios_para_auriculares', 'auriculares_y_microfonos', 5),
(17, 'auriculares_bluetooth', 'auriculares_y_microfonos', 5),
(18, 'Ver_más', 'auriculares_y_microfonos', 5),
(19, 'bicicletas_electricas', 'bicicletas', 6),
(20, 'Ver_más', 'bicicletas', 6),
(21, 'cables_hdmi', 'cables', 7),
(22, 'Ver_más', 'cables', 7),
(23, 'webcam', 'camaras', 8),
(24, 'camaras_ip_dvr', 'camaras', 8),
(25, 'camaras_deportivas', 'camaras', 8),
(26, 'Ver_más', 'camaras', 8),
(27, 'combo_amd_ryzen_5', 'combos', 9),
(28, 'combo_intel_i3', 'combos', 9),
(29, 'combo_amd_ryzen_9', 'combos', 9),
(30, 'combo_intel_i5', 'combos', 9),
(31, 'combo_intel_i7', 'combos', 9),
(32, 'Ver_más', 'combos', 9),
(33, 'switch', 'conectividad_y_redes', 10),
(34, 'placa_de_red_wifi', 'conectividad_y_redes', 10),
(35, 'placa_ethernet', 'conectividad_y_redes', 10),
(36, 'router_hogar', 'conectividad_y_redes', 10),
(37, 'access_point_y_antenas', 'conectividad_y_redes', 10),
(38, 'nas', 'conectividad_y_redes', 10),
(39, 'fibra_optica', 'conectividad_y_redes', 10),
(40, 'adaptadores', 'conectividad_y_redes', 10),
(41, 'router_empresa', 'conectividad_y_redes', 10),
(42, 'Ver_más', 'conectividad_y_redes', 10),
(43, 'playstation', 'consolas', 11),
(44, 'xbox', 'consolas', 11),
(45, 'Ver_más', 'consolas', 11),
(46, 'pc_armada_amd_ryzen_5', 'equipos', 12),
(47, 'pc_cx', 'equipos', 12),
(48, 'pc_armada_amd_ryzen_7', 'equipos', 12),
(49, 'pc_armada_intel_i5', 'equipos', 12),
(50, 'pc_armada_intel_i7', 'equipos', 12),
(51, 'all_in_one', 'equipos', 12),
(52, 'mini_pc', 'equipos', 12),
(53, 'pc_armada_intel_celeron', 'equipos', 12),
(54, 'pc_armada_amd_ryzen_5_c_b550', 'equipos', 12),
(55, 'pc_armada_amd_ryzen_9', 'equipos', 12),
(56, 'pc_armada_intel_i9', 'equipos', 12),
(57, 'pc_armada_amd_ryzen_3', 'equipos', 12),
(58, 'pc_armada_intel_i3', 'equipos', 12),
(59, 'Ver_más', 'equipos', 12),
(60, 'ups', 'estabilizadores_y_ups', 13),
(61, 'estabilizadores', 'estabilizadores_y_ups', 13),
(62, 'Ver_más', 'estabilizadores_y_ups', 13),
(63, 'fuentes', 'fuentes', 14),
(64, 'fuentes_certificadas', 'fuentes', 14),
(65, 'Ver_más', 'fuentes', 14),
(66, 'gabinetes_kit', 'gabinetes', 15),
(67, 'gabinetes_sin_fuente', 'gabinetes', 15),
(68, 'accesorios_para_gabinetes', 'gabinetes', 15),
(69, 'Ver_más', 'gabinetes', 15),
(70, 'impresoras_laser', 'impresoras', 16),
(71, 'escaner', 'impresoras', 16),
(72, 'impresoras_multifuncion', 'impresoras', 16),
(73, 'plotter', 'impresoras', 16),
(74, 'impresora_matriz', 'impresoras', 16),
(75, 'impresoras_3d', 'impresoras', 16),
(76, 'Ver_más', 'impresoras', 16),
(77, 'volantes', 'joystick', 17),
(78, 'joysticks', 'joystick', 17),
(79, 'Ver_más', 'joystick', 17),
(80, 'lavarropas_secaropas', 'linea_hogar', 18),
(81, 'Ver_más', 'linea_hogar', 18),
(82, 'memoria_dim_ddr2', 'memorias', 19),
(83, 'memoria_dim_ddr3_1600_mhz', 'memorias', 19),
(84, 'memoria_dim_ddr4_3200_mhz', 'memorias', 19),
(85, 'memoria_dim_ddr4_2666_mhz', 'memorias', 19),
(86, 'memoria_dim_ddr4_3200_mhz_rgb', 'memorias', 19),
(87, 'memoria_sodim_ddr4', 'memorias', 19),
(88, 'memoria_dim_ddr4_2666_mhz_c_d', 'memorias', 19),
(89, 'memoria_dim_ddr4_3600_mhz_rgb', 'memorias', 19),
(90, 'memoria_sodim_ddr3', 'memorias', 19),
(91, 'memoria_dim_ddr5', 'memorias', 19),
(92, 'memoria_dim_ddr4_4000mhz', 'memorias', 19),
(93, 'memoria_dim_ddr4_3600_mhz', 'memorias', 19),
(94, 'memoria_dim_ddr4_2400_mhz_c_d', 'memorias', 19),
(95, 'memoria_dim_ddr4_3000_mhz_rgb', 'memorias', 19),
(96, 'memoria_dim_ddr4_3000_mhz', 'memorias', 19),
(97, 'Ver_más', 'memorias', 19),
(98, 'intel_1151', 'microprocesador', 20),
(99, 'amd_am4', 'microprocesador', 20),
(100, 'intel_1200', 'microprocesador', 20),
(101, 'intel_1700', 'microprocesador', 20),
(102, 'Ver_más', 'microprocesador', 20),
(103, 'monitores_gamer', 'monitores', 21),
(104, 'monitores_led', 'monitores', 21),
(105, 'monitor_tv', 'monitores', 21),
(106, 'Ver_más', 'monitores', 21),
(107, 'mb_amd_am4', 'motherboard', 22),
(108, 'mb_intel_1151_gen_8_9', 'motherboard', 22),
(109, 'mb_amd_tr4', 'motherboard', 22),
(110, 'placas_expansoras', 'motherboard', 22),
(111, 'mb_intel_1200', 'motherboard', 22),
(112, 'mb_amd_cpu', 'motherboard', 22),
(113, 'mb_intel_1700', 'motherboard', 22),
(114, 'mb_intel_1151_gen_6_7', 'motherboard', 22),
(115, 'mb_amd_am5', 'motherboard', 22),
(116, 'Ver_más', 'motherboard', 22),
(117, 'mouse_pad', 'mouse_pad', 23),
(118, 'Ver_más', 'mouse_pad', 23),
(119, 'mouse_gamer', 'mouses', 24),
(120, 'mouse_inalambrico', 'mouses', 24),
(121, 'mouse_optico_usb', 'mouses', 24),
(122, 'Ver_más', 'mouses', 24),
(123, 'tabletas_digitalizadoras', 'multimedia', 25),
(124, 'grabadoras_de_dvd', 'multimedia', 25),
(125, 'capturadoras_y_sintoniz_de_tv', 'multimedia', 25),
(126, 'varios', 'multimedia', 25),
(127, 'receptor_bluetooth', 'multimedia', 25),
(128, 'Ver_más', 'multimedia', 25),
(129, 'notebooks_intel_celeron', 'notebooks', 26),
(130, 'notebooks_amd', 'notebooks', 26),
(131, 'notebooks_intel_core_i7', 'notebooks', 26),
(132, 'notebooks_intel_core_i5', 'notebooks', 26),
(133, 'notebooks_intel_pentium', 'notebooks', 26),
(134, 'notebooks_intel_core_i3', 'notebooks', 26),
(135, 'notebooks_gamer', 'notebooks', 26),
(136, 'Ver_más', 'notebooks', 26),
(137, 'parlantes_portatiles', 'parlantes', 27),
(138, 'sistema_de_sonido', 'parlantes', 27),
(139, 'parlantes_20', 'parlantes', 27),
(140, 'parlantes_41', 'parlantes', 27),
(141, 'Ver_más', 'parlantes', 27),
(142, 'pen_drive', 'pen_drives', 28),
(143, 'pen_drives_30', 'pen_drives', 28),
(144, 'pen_drives_20', 'pen_drives', 28),
(145, 'Ver_más', 'pen_drives', 28),
(146, 'belleza_depiladoras_alisadoras', 'peque?os_electrodomesticos', 29),
(147, 'aspiradoras', 'peque?os_electrodomesticos', 29),
(148, 'Ver_más', 'peque?os_electrodomesticos', 29),
(149, 'nvidia', 'placas_de_video', 30),
(150, 'radeon', 'placas_de_video', 30),
(151, 'Ver_más', 'placas_de_video', 30),
(152, 'punteros_laser', 'proyectores', 31),
(153, 'pantallas', 'proyectores', 31),
(154, 'proyectores', 'proyectores', 31),
(155, 'Ver_más', 'proyectores', 31),
(156, 'racks', 'rack', 32),
(157, 'gabinetes_rackeables', 'rack', 32),
(158, 'Ver_más', 'rack', 32),
(159, 'grasa_siliconada', 'refrigeracion', 33),
(160, 'coolers_p_gabinetes', 'refrigeracion', 33),
(161, 'coolers_p_micros', 'refrigeracion', 33),
(162, 'Ver_más', 'refrigeracion', 33),
(163, 'servidor', 'servidores', 34),
(164, 'Ver_más', 'servidores', 34),
(165, 'sillas_gamer', 'sillas_gamer', 35),
(166, 'Ver_más', 'sillas_gamer', 35),
(167, 'smart_home', 'smart_home', 36),
(168, 'Ver_más', 'smart_home', 36),
(169, 'smartwatches', 'smartwatches', 37),
(170, 'Ver_más', 'smartwatches', 37),
(171, 'sistema_operativo', 'software', 38),
(172, 'Ver_más', 'software', 38),
(173, 'tablet_ebooks', 'tablet_y_ebook', 39),
(174, 'Ver_más', 'tablet_y_ebook', 39),
(175, 'teclado_y_mouse', 'teclados', 40),
(176, 'teclados_inalambricos', 'teclados', 40),
(177, 'teclados_gamer', 'teclados', 40),
(178, 'accesorios_para_teclado', 'teclados', 40),
(179, 'teclado_usb', 'teclados', 40),
(180, 'Ver_más', 'teclados', 40),
(181, 'telefonos_linea', 'telefonia', 41),
(182, 'cables', 'telefonia', 41),
(183, 'celulares', 'telefonia', 41),
(184, 'Ver_más', 'telefonia', 41),
(185, 'tv_led', 'televisores', 42),
(186, 'Ver_más', 'televisores', 42),
(187, 'varios', 'accesorios', 43),
(188, 'soportes', 'accesorios', 43),
(189, 'aire_acondicionados', 'aire_acondicionado_ventilador', 44),
(190, 'discos_sata', 'almacenamiento', 45),
(191, 'disco_de_notebook', 'almacenamiento', 45),
(192, 'externos', 'almacenamiento', 45),
(193, 'ssd', 'almacenamiento', 45),
(194, 'apple', 'apple', 46),
(195, 'auriculares_con_microfono', 'auriculares_y_microfonos', 47);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `id_cat` (`id_cat`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
