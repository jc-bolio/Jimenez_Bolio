SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP SCHEMA IF EXISTS asistencia;
CREATE SCHEMA IF NOT EXISTS asistencia DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
USE asistencia;

-- Base de datos: `asistencia`
-- --------------------------------------------------------

-- Estructura de tabla para la tabla `usuarios`
CREATE TABLE `usuarios` (
  `nombre` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre_usuario` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Permisos` int(11) NOT NULL DEFAULT '1',
  `matricula` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `grupo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;


-- Volcado de datos para la tabla `usuarios`
INSERT INTO `usuarios` (`nombre`, `direccion`, `telefono`, `correo`, `nombre_usuario`, `password`, `Fecha_Registro`, `Permisos`, `matricula`, `grupo`) VALUES
('Aaron Velasco Agustin', 'callejon Gloria Numero 15', '5527564376', 'aaronvelasco1993@outlook.com', 'HuronMarron', '123456', '2018-10-29 18:37:10', 1, 'A01','A' ),
('Hugo', 'direcion hugo', '561213', 'pablito.r@gmail.com', 'hugo', '123456', '2018-11-22 18:08:12', 1, 'A02', 'B'),
('Uriel', 'direccion uriel', '123456887', 'juan.@gmail.com', 'uriel', '123456', '2018-11-22 19:29:48', 1, 'A03', 'C'),
('jsadasd', 'asdasd', '65465465', 'asds@asas.com', 'kasjkas', '123456', '2018-11-22 20:59:37', 1, 'A04', 'A'),
('Hugo', 'direccion hugo', '123123', 'fernandoberistain2@hotmail.com', 'jisijijsda', 'asdadad', '2018-11-23 18:58:33', 1, 'A05', 'B'),
('jksjdks', 'asdsad', '4654', 'Aaronvelasco@gmail.com', 'HuronMarronqq', 'www', '2018-11-23 19:14:24', 1, 'A06', 'C'),
('Aaron', 'asdsad', '56418189', 'Aaronvelasco@gmail.com', 'HuronMarron2', '1324654', '2018-11-23 19:14:56', 1, 'A07', 'A'),
('alberto ledesma', 'av rancho seco', '12345678911111', 'pablito.r@gmail.com', 'ledesma', 'ledesma', '2018-11-23 19:58:56', 1, 'A08', 'B'),
('javier', 'asasa', '546545', 'asasasa@hotmail.com', 'javier', 'javier', '2018-11-23 20:00:12', 1, 'A09', 'C');
COMMIT;
